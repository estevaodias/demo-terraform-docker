output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.hello_world.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.hello_world.id
}
