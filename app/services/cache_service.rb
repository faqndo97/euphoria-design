class CacheService
  class << self
    def expire_all
      Cache::Home.expire
      Cache::Posts.expire
    end

    def expire(cache_module:)
      case cache_module
      when :home
        Cache::Home.expire
      when :posts
        Cache::Posts.expire
      end
    end
  end
end
