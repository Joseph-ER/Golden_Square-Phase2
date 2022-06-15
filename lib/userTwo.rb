def uppercaseStart(text)
  words = text.split(" ")
  if words[0] == words[0].upcase
    return false
  else
    return true
  end
end

def punctuationEnd(text)
  if text[-1] === "." || text[-1] == "!" || text[-1] == "?"
    return true
  else
    return false
  end
end