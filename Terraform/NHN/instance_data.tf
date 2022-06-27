data "openstack_images_image_v2" "centos78" {
  name = "CentOS 7.8 (2021.12.21)"
  most_recent = true
}

data "openstack_compute_flavor_v2" "u2c1m1"{
  name = "u2.c1m1"
}
