# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID
    field :title, String
    field :body, String
    field :author, String
    field :comments, [Types::CommentType]
  end
end
