

module RSSHub
    module Youtube
      class User
        def self.call(username:, embed: true)
          "https://rsshub.app/youtube/user/#{embed.eql?(true) ? username : "#{username}/false" }"
        end
      end

      class Channel
        def self.call(id:, embed: true)
          "https://rsshub.app/youtube/channel/#{embed.eql?(true) ? id : "#{id}/false" }"
        end
      end

      class Playlist
        def self.call(id:, embed: true)
          "https://rsshub.app/youtube/playlist/#{embed.eql?(true) ? id : "#{id}/false" }"
        end
      end
    end
end
