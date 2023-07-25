  # NetAdapter
    #"Configuring dns" | Out-Serial
$InterfaceIndex = Get-NetAdapter | Select-Object -ExpandProperty InterfaceIndex

echo "if: $InterfaceIndex"

$MyIP = Get-NetIPAddress -InterfaceIndex $InterfaceIndex -AddressFamily IPv4 | `
        Select-Object -ExpandProperty IPAddress
    # Set-DnsClientServerAddress -InterfaceIndex $InterfaceIndex -ServerAddresses "$MyIP,127.0.0.1"
$DHCPServer = Get-WmiObject Win32_NetworkAdapterConfiguration | `
        Where-Object InterfaceIndex -eq $InterfaceIndex | `
        Select-Object -ExpandProperty "DHCPServer"


return @{
  # ws: $env:ComputerName
  id: $InterfaceIndex
  ip=$MyIP
  dhcp=$DHCPServer
}
#Set-DnsServerForwarder $DHCPServer

# "Restarting" | Out-Serial
# Restart-Computer -Force
