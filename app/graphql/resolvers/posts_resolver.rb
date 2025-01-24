
module Resolvers
  class PostsResolver < GraphQL::Schema::Resolver
    type [Types::PostType], null: false

    argument :ids, [ID], required: true

    def resolve(ids:)
      fake_posts(ids)
    end

    def fake_posts(ids)
      [
        {
          id: ids[0],
          title: "A great post",
          body: (1..3).map { "Some interesting text." }.join("\n\n"),
          author: "Merlin",
          comments: [
            { 
              title: "Good post",
              body: "lov this"
            }
          ]
        },
        {
          id: ids[1],
          title: "A greater post",
          body: (1..3).map { "Some interesting text." }.join("\n\n"),
          author: "Merlin",
          comments: [
            { 
              title: "Gooder post",
              body: "loveeee this"
            }
          ]
        }
      ]
    end
  end
end
