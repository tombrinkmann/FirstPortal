class CreatePollResponses < ActiveRecord::Migration
  def change
    create_table :poll_responses do |t|
      t.string :candidate
      t.string :gender
      t.integer :age
      t.string :location

      t.timestamps
    end
  end
end
