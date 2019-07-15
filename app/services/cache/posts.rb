module Cache
  class Posts
    class << self
      def expire
        File.delete(cache_file)
      end

      private

      def cache_file
        Rails.root.join('public', 'posts.html')
      end
    end
  end
end
