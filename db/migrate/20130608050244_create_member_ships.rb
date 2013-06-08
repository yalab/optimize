class CreateMemberShips < ActiveRecord::Migration
  def change
    create_table :member_ships do |t|
      t.references :user, index: true
      t.references :group, index: true

      t.timestamps
    end
  end
end
