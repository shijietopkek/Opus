class AddConfirmableToDevise < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string
  end
  def down
    remove_column :confirmation_token, :confirmed_at, :confirmation_sent_at, unconfirmed_email
  end
end
