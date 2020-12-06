json.extract! device, :id, :ip, :hostname, :vendor, :os, :os_ver, :contact, :location, :serail, :snmp_comm, :created_at, :updated_at
json.url device_url(device, format: :json)
