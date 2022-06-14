def uppercaseStart(text)
  words = text.split(" ")
  if words[0] != words[0].upcase
    return "Remember to capitalize first word of a sentence!"
  end
end

def punctuationEnd(text)
  if text[-1] != "." || text[-1] != "!" || text[-1] != "?"
    return "Remember to end your sentence in punctuation!"
  end
end