# Preview all emails at http://localhost:3000/rails/mailers/new_book_mailer
class NewBookMailerPreview < ActionMailer::Preview
  def new_book
    NewBookMailer.with(
      book: 'Some Book'
    ).new_book
  end
end
