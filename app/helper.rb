require 'dependencies'

class Helper
  @@navigator = $window.navigator

  def self.ios?
    @@navigator.user_agent&.match?(/\b(iPad|iPhone|iPod)\b/)
  end

  def self.macos?
    @@navigator.user_agent&.match?(/\bMac\b/)
  end
end
