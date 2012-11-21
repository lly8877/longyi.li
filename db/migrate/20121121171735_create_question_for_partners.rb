class CreateQuestionForPartners < ActiveRecord::Migration
  def self.up
    create_table :question_for_partners do |t|
      t.string :question
      t.string :creator

      t.timestamps
    end
  end

  def self.down
    drop_table :question_for_partners
  end
end
