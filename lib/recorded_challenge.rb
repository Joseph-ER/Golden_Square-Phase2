def task_checker(text)
  if text.include?("#TODO")
    return true
  else
    return "No '#TODO' present in text"
  end
end