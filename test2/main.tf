resource "docker_service" "foo" {
  name = "foo-service"

  task_spec {
    container_spec {
      image = "ghost"
    }
  }

  endpoint_spec {
    ports {
      target_port = "8080"
    }
  }
}
