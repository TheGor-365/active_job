class FetchBooksTitlesSecondJob < ApplicationJob
  queue_as :urgent

  def perform(*args)
    # Do something later
  end
end
