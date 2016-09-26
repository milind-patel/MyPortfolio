class AddPostalCodeToContactInfos < ActiveRecord::Migration[5.0]
  def change
    add_column :contact_infos, :postal_code, :integer
    add_column :contact_infos, :latitude, :float
    add_column :contact_infos, :longitude, :float
  end
end
