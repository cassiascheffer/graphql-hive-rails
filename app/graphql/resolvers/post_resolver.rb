# app/graphql/resolvers/post_resolver.rb
module Resolvers
  class PostResolver < GraphQL::Schema::Resolver
    type Types::PostType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      fake_post(id)
    end

    def fake_post(id)
      {
        id: id,
        title: "A great post",
        body: (1..3).map { "Some interesting text." }.join("\n\n"),
        author: "Merlin",
        comments: [
          { 
            title: "Good post",
            body: "lov this"
          }
        ]
      }
    end
  end
end

