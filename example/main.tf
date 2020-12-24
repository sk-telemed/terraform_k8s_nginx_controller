# Reserving External IP address. Can used for all urls. IMPORTANT: Do not delete this resource, you will lose your ip.
resource "google_compute_address" "ingress_ip_address" {
  name = "nginx-controller"
}

module "nginx-conrtoller" {
  source = "../"
  ip_address = google_compute_address.ingress_ip_address.address
}