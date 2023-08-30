50.times do
  Book.create(
    author:   Faker::Name.name,
    overview: Faker::Lorem.paragraph(sentence_count: 20)
  )
end
