class AddColumnYourname < ActiveRecord::Migration[5.1]
  def change
    add_column :inquiries, :yourname, :string
  end
end
