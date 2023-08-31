class NewBookMailer < ApplicationMailer
  default from: 'books@example.com'

  def new_book
    mail(
      to:      'user@example.com',
      subject: 'New Book'
    )
  end
end
