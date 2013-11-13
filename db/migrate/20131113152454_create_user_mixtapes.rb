class CreateUserMixtapes < ActiveRecord::Migration
  def change
    create_table :user_mixtapes do |t|
      t.references :user, index: true
      t.references :mixtape, index: true

      t.timestamps
    end
  end
end
