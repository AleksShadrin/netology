resource "yandex_compute_instance" "web" {

  depends_on = [yandex_compute_instance.db]

  count = var.vm_web.count
  name  = "${var.vm_web.name}-${count.index + 1}"

  resources {
    cores         = var.vm_web.resources.cores
    memory        = var.vm_web.resources.memory
    core_fraction = var.vm_web.resources.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }

  scheduling_policy {
    preemptible = var.vm_web.preemptible
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    nat                = var.vm_web.nat
    security_group_ids = [yandex_vpc_security_group.example.id]
  }

  metadata = local.metadata
}