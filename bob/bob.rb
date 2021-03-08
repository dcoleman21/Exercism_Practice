class Bob
  def self.hey(remark)
    return "Calm down, I know what I'm doing!" if remark.chars.include?("?") && remark == remark.upcase
    return 'Whoa, chill out!' if remark == remark.upcase && remark.gsub!(/\d+/,"")
    return 'Sure.' if remark.chars.include?("?")
    'Whatever.'
  end
end
