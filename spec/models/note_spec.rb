 require 'rails_helper'
RSpec.describe Note do
  context "#preview" do
    it "truncates to 100 characters" do
      first_part = "A" * 100
      fake_content = first_part + " some more words that take us over"
      note = Note.new(title: "title", content: fake_content)
      expect(note.preview.length).to eq(100 + Note::MORE_TEXT.size)
    end 
  end
end