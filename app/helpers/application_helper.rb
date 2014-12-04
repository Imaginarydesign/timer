module ApplicationHelper

end

module APP_VERSION
  MAJOR = 0
  MINOR = 5
  TINY = 0

  def self.print
    "#{MAJOR}.#{MINOR}.#{TINY}"
  end
end
