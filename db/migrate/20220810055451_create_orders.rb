class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :amount_cents
      t.integer :payment_method
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
