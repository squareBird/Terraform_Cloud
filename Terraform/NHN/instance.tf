resource "openstack_compute_instance_v2" "web_server"{
  name = "web_server"
  region    = "KR1"
  key_pair  = "terraform-handson"
  image_id = data.openstack_images_image_v2.centos78.id
  flavor_id = data.openstack_compute_flavor_v2.u2c1m1.id
  security_groups = ["default", "web_sg", "SSH-Rule"]
  availability_zone = "kr-pub-a"

  network {
    name = data.openstack_networking_network_v2.Test_Network.name
    uuid = data.openstack_networking_network_v2.Test_Network.id
    # IP를 강제로 할당하여 서브넷 지정
    fixed_ip_v4 = "10.0.1.5"
  }

}

resource "openstack_compute_floatingip_v2" "web_float_ip" {
  pool = "Public Network"
}

# 해당 instance가 속한 서브넷이 반드시 인터넷 게이트웨이와 연결된 라우팅테이블을 가지고 있어야함
resource "openstack_compute_floatingip_associate_v2" "fip_associate" {
  floating_ip = openstack_compute_floatingip_v2.web_float_ip.address
  instance_id = openstack_compute_instance_v2.web_server.id
}

resource "openstack_compute_instance_v2" "db_server"{
  name = "db_server"
  region    = "KR1"
  key_pair  = "terraform-handson"
  image_id = data.openstack_images_image_v2.centos78.id
  flavor_id = data.openstack_compute_flavor_v2.u2c1m1.id
  security_groups = ["default"]
  availability_zone = "kr-pub-a"

  network {
    name = data.openstack_networking_network_v2.Test_Network.name
    uuid = data.openstack_networking_network_v2.Test_Network.id
    fixed_ip_v4 = "10.0.2.5"
  }

}



