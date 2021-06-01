class JadenCase
  def self.capitalize_text(string)
    raise ArgumentError unless string.is_a? String
    raise ArgumentError if string.empty?

    string.split.map(&:capitalize).join(' ')
  end
end
