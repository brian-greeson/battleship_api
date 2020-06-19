class AddHitMissesToBoard < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :hits, :string, array: true
    add_column :boards, :misses, :string, array: true
  end
end
