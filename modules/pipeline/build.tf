data "template_file" "specs" {
  template = "${file("${path.module}/specs.yml")}"

  vars {
    repository_url = "${var.repository_url}"
    region         = "${var.region}"
    cluster_name   = "${var.cluster_name}"
    container_name = "${var.container_name}"
  }
}
resource "aws_codebuild_project" "web_build" {
  name          = "${var.cluster_name}-codebuild"
  description = "codebuild_docker_image"
  build_timeout = "60"

  service_role = "${aws_iam_role.codebuild_role.arn}"

  artifacts {
    type = "CODEPIPELINE"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    // https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html
    image           = "aws/codebuild/docker:17.09.0"
    type            = "LINUX_CONTAINER"
    privileged_mode = true
  }
  source {
    type      = "CODEPIPELINE"
    buildspec = "${data.template_file.specs.rendered}"
  }
}