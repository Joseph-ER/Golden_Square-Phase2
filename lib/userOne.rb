=begin
  method = time_mngr(text_to_read)
  returns data float = minutes_to_read
=end

def time_mngr(text)
  words = text.split(" ").length
  time_to_read = (words / 200.to_f).ceil
  return time_to_read
end