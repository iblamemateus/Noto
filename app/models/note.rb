class Note < ApplicationRecord
    STATUS = [
    ["Normal", nil],
    ["Importante", "important"],
    ["Não esquecer", "dont_forget"] ].freeze
    validates :title, presence: { message: "O título não pode ficar em branco" },
                  length: { maximum: 100, message: "deve ter no máximo 100 caracteres" }

    validates :content, length: { minimum: 2, message: "A nota deve ter no mínimo 2 caracteres em seu conteúdo" }

    scope :pinned_notes, -> { where(pinned: true).order(created_at: :desc) } 
    scope :not_pinned_notes, -> { where(pinned: false).order(created_at: :desc) }
    def self.search_by_text(search)
        return all unless search.present?
        where("title LIKE :q OR content LIKE :q", q: "%#{search}%")
    end 
end