class AddDetailsToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :finance_fee, :integer
    add_column :cars, :purchase_fee, :integer
    add_column :cars, :tap, :integer
    add_column :cars, :duration, :integer
  end
end
