require 'redcarpet'

class Spree::Blog < ActiveRecord::Base
  validates_presence_of [:title, :body, :permalink]
  make_permalink :with => :title
  scope :published, -> { where published: true }

  def to_param
    permalink.present? ? permalink : (permalink_was || title.to_s.to_url)
    # permalink.present? ? permalink : title.to_s.to_url
  end

  def markdown
    # self.body
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    md = Redcarpet::Markdown.new(renderer, extensions)

    md.render(self.body)

  end

end
