# class FetchBooksTitlesJob < ApplicationJob
class FetchBooksTitlesJob
  include Sidekiq::Worker
  # self.queue_adapter = :resque
  # queue_as { true ? :default : :low_priority }

  queue_as :default

  # around_perform :improve_output

  # around_perform do |job|
  #   improve_output(job.class.name) {  }
  # end

  def perform
    authors = Book.pluck(:author)
    pp authors
  end

  # private
  #
  # def improve_output(job_name, &block)
  #   pp "--- #{job_name} ---"
  #   pp '-' * 90
  #   yield
  #   pp '-' * 90
  # end
end
