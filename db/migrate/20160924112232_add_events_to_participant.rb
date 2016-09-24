class AddEventsToParticipant < ActiveRecord::Migration[5.0]
  def change
    add_reference :participants, :event, foreign_key: true
    add_reference :participants, :catagory, foreign_key: true
  end
end
