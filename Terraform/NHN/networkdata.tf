data "openstack_networking_network_v2" "Test_Network" {
  name="Test_Network"
  network_id = "567c8673-473b-46d5-a7fb-a6b43e54f729"
}

data "openstack_networking_subnet_v2" "web_subnet" {
  name = "web_subnet"
  subnet_id = "a44c769e-e05d-4b5c-9d7a-0d4ddc94a776"
  network_id = data.openstack_networking_network_v2.Test_Network.network_id
}

data "openstack_networking_subnet_v2" "db_subnet" {
  name = "db_subnet"
  subnet_id = "39d8546f-e761-4e90-9d8a-9931b5a48c12"
  network_id = data.openstack_networking_network_v2.Test_Network.network_id
}
