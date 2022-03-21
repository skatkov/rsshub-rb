# frozen_string_literal: true

require "test_helper"
require_relative "../lib/rsshub"

class RsshubTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Rsshub::VERSION
  end

  def test_instagram
    assert_equal 'https://rsshub.app/instagram/user/nok_bum', RSSHub::Instagram.(key: 'nok_bum')
    assert_equal 'https://rsshub.app/instagram/user/5katkov', RSSHub::Instagram.(key: '5katkov')
  end

  def test_youtube_user
    assert_equal 'https://rsshub.app/youtube/user/JFlaMusic', RSSHub::Youtube::User.(username: 'JFlaMusic')
    assert_equal 'https://rsshub.app/youtube/user/5katkov/false', RSSHub::Youtube::User.(username: '5katkov', embed: false)
  end

  def test_youtube_channel
    assert_equal 'https://rsshub.app/youtube/channel/UCDwDMPOZfxVV0x_dz0eQ8KQ', RSSHub::Youtube::Channel.(id: 'UCDwDMPOZfxVV0x_dz0eQ8KQ')
    assert_equal 'https://rsshub.app/youtube/channel/UCDwDMPOZfxVV0x_dz0eQ8KQ/false', RSSHub::Youtube::Channel.(id: 'UCDwDMPOZfxVV0x_dz0eQ8KQ', embed: false)
  end

  def test_youtube_playlist
    assert_equal 'https://rsshub.app/youtube/playlist/PLqQ1RwlxOgeLTJ1f3fNMSwhjVgaWKo_9Z', RSSHub::Youtube::Playlist.(id: 'PLqQ1RwlxOgeLTJ1f3fNMSwhjVgaWKo_9Z')
    assert_equal 'https://rsshub.app/youtube/playlist/PLqQ1RwlxOgeLTJ1f3fNMSwhjVgaWKo_9Z/false', RSSHub::Youtube::Playlist.(id: 'PLqQ1RwlxOgeLTJ1f3fNMSwhjVgaWKo_9Z', embed: false)
  end
end
