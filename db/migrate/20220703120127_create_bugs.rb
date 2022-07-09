class CreateBugs < ActiveRecord::Migration[5.2]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.date :deadline
      t.string :type
      t.string :status
      t.references :project, foreign_key: true
      t.references :reported_by
      t.references :assigned_to

      t.timestamps
    end
  end
end
