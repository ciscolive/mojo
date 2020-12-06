class DevicesController < InheritedResources::Base

  private

    def device_params
      params.require(:device).permit(:ip, :hostname, :vendor, :os, :os_ver, :contact, :location, :serail, :snmp_comm)
    end

end
