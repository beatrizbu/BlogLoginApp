class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
# in the case of an irreversible migration, such as one to remove a
# database column, it is necessary to define separate up and down methods
# in place of the single change method.
