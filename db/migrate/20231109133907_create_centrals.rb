class CreateCentrals < ActiveRecord::Migration[7.1]
  def change
    create_table :centrals do |t|
      t.string :name
      t.string :wpp_token
      t.integer :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
