json.array!(@ipv4admins) do |ipv4admin|
  json.extract! ipv4admin, :id, :ip_status, :ip_address, :host, :note, :update_time
  json.url ipv4admin_url(ipv4admin, format: :json)
end
