def get_most_common_letter(text)
  p counter = Hash.new(0)
  p text.chars.each do |char|
    if counter[char].nil?
       counter[char].push(0)
    else 
      counter[char].push(1)
    end
  end
  p counter.sort_by { |k, v| v }
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

puts get_most_common_letter("hello")