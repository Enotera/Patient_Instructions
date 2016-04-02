class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :generic_name
      t.text :how_to_use
      t.text :why_i_take_this_drug
      t.text :pregnancy_warning
      t.text :breastfeeding_warning
      t.text :side_effect

      t.timestamps null: false
    end
  end
end
