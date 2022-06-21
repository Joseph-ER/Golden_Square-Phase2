require 'diaryEntry'

describe "unit test "do
  it "title method "do
    diary_entry=DiaryEntry.new("title","contents")
    expect(diary_entry.title).to eq "title"
  end

  it "contents method" do
    diary_entry=DiaryEntry.new("title","contents for show")
    expect(diary_entry.show).to eq "contents for show"
  end
end
