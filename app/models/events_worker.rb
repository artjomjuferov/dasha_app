class EventsWorker < ActiveRecord::Base
  belongs_to :event
  belongs_to :worker
end
