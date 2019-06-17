resource "aws_ecs_task_definition" "be_task_def" {
  family                = "be_service"
  container_definitions = "${file("/be.json")}"
  vars = {
      be_image_name = "${vars.be_image_name}"
      version = "${vars.version}"
      links = "${vars.links}"
      hostname = "${vars.hostname}"
      monngo_imagename = "${vars.mongo_img_nname}"
  }
}
resource "aws_ecs_task_definition" "fe_task_def" {
  family                = "fe_service"
  container_definitions = "${file("/fe.json")}"
}