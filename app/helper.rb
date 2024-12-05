class Helper
  def initialize(window)
    @navigator = window.navigator
  end

  def ios?
    @navigator.user_agent&.match?(/\b(iPad|iPhone|iPod)\b/)
  end

  def macos?
    @navigator.user_agent&.match?(/\bMac\b/)
  end
end
