class CreateScaleData < ActiveRecord::Migration
  def self.up
    create_table :scale_data do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :scale_data
  end
end
