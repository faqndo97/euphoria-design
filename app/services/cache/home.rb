module Cache
  class Home
    class << self
      def expire
        File.delete(cache_file)
      end

      private

      def cache_file
        Rails.root.join('public', 'index.html')
      end
    end
  end
end
