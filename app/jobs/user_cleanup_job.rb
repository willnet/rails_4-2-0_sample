class UserCleanupJob < ActiveJob::Base
  queue_as :user

  rescue_from(ActiveRecord::RecordNotFound) do |exception|
    logger.debug("user not found!!")
  end

  def perform(*args)
    user = args.first
    user.destroy unless user.active?
  end
end

