class CreateEventCatagories < ActiveRecord::Migration[5.0]
  def change
    create_table :event_catagories do |t|
      t.references :event, foreign_key: true
      t.references :catagory, foreign_key: true

      t.timestamps
    end
  end
end
