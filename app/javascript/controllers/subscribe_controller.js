import { Controller } from "stimulus"
import Toastify from "toastify-js"

export default class extends Controller {
  static targets = [ "email" ];

  send() {
    if (this.existCookie()) {
      this.toastNotification("Ya estas subscripto", this.colors.warning)
    }
    else {
      if (this.isValidEmail()) {
        fetch('/newsletter/subscribe', {
          method: 'POST',
          mode: 'cors',
          body: JSON.stringify({
            email: this.email
          }),
          headers: {
            'Content-Type': 'application/json'
          }
        }).then((response) => {
          if (response.ok) {
            this.toastNotification("Gracias por subscribirte!", this.colors.success);
            this.setCookie()
          } else {
            this.toastNotification("Perdon, tuvimos un problema", this.colors.error)
          }
        })
      }
      else {
        this.toastNotification("Email no valido", this.colors.error)
      }
    }
  }

  // FOR INTERNAL USAGE

  get email() {
    return this.emailTarget.value
  }

  toastNotification (message, color) {
    Toastify({
      text: message,
      duration: 3000,
      close: true,
      gravity: "bottom",
      position: "right",
      backgroundColor: color,
      stopOnFocus: true
    }).showToast();
  }

  isValidEmail () {
    return this.regexp_for_email.test(this.email)
  }

  get colors () {
    return {
      success: "#48bb78",
      warning: "#ed8936",
      error: "#f56565"
    }
  };

  get regexp_for_email () {
    return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
  }

  setCookie() {
    let date = new Date();
    date.setTime(date.getTime() + (90*24*60*60*1000)); // 90 days
    document.cookie = `subscribed=true;expires=${date.toUTCString()};`
  }

  getCookie() {
    let name = "subscribed=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for(let i = 0; i <ca.length; i++) {
      let c = ca[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
  }

  existCookie() {
    return this.getCookie("subscribed") == "true"
  }
}