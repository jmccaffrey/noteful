class Note < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  scope :sorted, lambda { order('created_at DESC') }
  
  MORE_TEXT = ' (...)'

  def preview
    if content
      if content.length < 100
        content
      else
        content.slice(0...100) + MORE_TEXT
      end
    end
  end
  
end
