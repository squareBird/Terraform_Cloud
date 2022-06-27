resource "openstack_blockstorage_volume_v2" "web_volume" {
  region      = "KR1"
  name        = "web_volume"
  description = "first test volume"
  size        = 50
  availability_zone = "kr-pub-a"
}

resource "openstack_compute_volume_attach_v2" "web_volume_attach" {

  instance_id = openstack_compute_instance_v2.web_server.id
  volume_id   = openstack_blockstorage_volume_v2.web_volume.id
}