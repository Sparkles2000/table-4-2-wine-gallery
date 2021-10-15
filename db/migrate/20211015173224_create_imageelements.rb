class CreateImageelements < ActiveRecord::Migration[6.1]
  def change
    create_table :imageelements do |t|
      t.references :brandofwine, null: false, foreign_key: true
      t.references :artpiece, null: false, foreign_key: true

      t.timestamps
    end
  end
end
