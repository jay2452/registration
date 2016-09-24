class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :bloog_group
      t.float :weight
      t.references :organisation, foreign_key: true

      t.timestamps
    end
  end
end
