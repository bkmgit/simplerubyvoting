class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :Full_name
      t.string :Ruby_African_Network
      t.string :African_Ruby_Community
      t.string :Ruby_African_Community
      t.string :African_Ruby_Association
      t.string :Nairuby
      t.string :Suggestion

      t.timestamps
    end
  end
end
