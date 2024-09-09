class LogLineParser
  attr_reader :log_level, :message

  def initialize(line)
    parsed_line = line.match(/\[(?<log_level>.*)\]:\s*(?<message>.*)/)

    @log_level = parsed_line[:log_level].downcase
    @message = parsed_line[:message].strip
  end

  def reformat
    "#{message} (#{log_level})"
  end
end