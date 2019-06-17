resource "aws_ecs_cluster" "ecs_cl" {
  name = "${var.kdecscluster_name}"
}

output "ecs_cl_id" {
  value = "${aws_ecs_cluster.ecs_cl.id}"
}