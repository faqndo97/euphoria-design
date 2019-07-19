class NewsletterController < ApplicationController
  skip_before_action :verify_authenticity_token

  def subscribe
    Newsletter.create!(subscribe_params)

    head :ok
  rescue StandardError
    head :internal_server_error
  end

  private

  def subscribe_params
    params.permit(:email)
  end
end
