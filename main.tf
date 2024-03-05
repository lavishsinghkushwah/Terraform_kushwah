resource "local_file" "my_file" {

	filename = "lavish.txt"
	content = "where is kushwah :)"

}


resource "docker_image" "my_nginx_image" {
	name =  "trainwithshubham/node-app-test-new:latest"
	keep_locally = false


}

resource "docker_container" "my_nginx_container" {
	image = docker_image.my_nginx_image.name
	name  = "nginx-automated"

	ports {
	internal = 8000
	external = 8000
	}


}
