class AddConfigToDevice < ActiveRecord::Migration[6.0]
  def change
    add_column :devices, :config, :string
  end
end
