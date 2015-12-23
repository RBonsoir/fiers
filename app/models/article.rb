class Article < ActiveRecord::Base
  extend Enumerize

  enumerize :status,        in: [:draft, :published], default: :draft
  enumerize :template_name, in: Settings.articles.templates.list.keys, default: Settings.articles.templates.default

  belongs_to :author, class_name: "User", foreign_key: "author_id"

  has_many :article_selections, dependent: :destroy

  accepts_nested_attributes_for :article_selections

  scope :published, -> { where(status: 'published') }

  def selections_by_position
    @selections_by_position ||= article_selections.reduce({}) do |selections, selection|
      selections[selection.position] = selection

      selections
    end
  end

  def template_settings
    Settings.articles.templates.list[template_name]
  end
end
