class CreateDevices < ActiveRecord::Migration[6.0]
  def change
    create_table :devices do |t|
      t.string :ip
      t.string :hostname
      t.string :vendor
      t.string :os
      t.string :os_ver
      t.string :contact
      t.string :location
      t.string :serail
      t.string :snmp_comm

      t.timestamps
    end
  end
end
