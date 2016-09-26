class CreateContactInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_infos do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
      t.string :country
      t.string :ip_address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
