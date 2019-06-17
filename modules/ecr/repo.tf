resource "aws_ecr_repository" "be_repo" {
  name = "${var.be_reponame}"
}
resource "aws_ecr_repository" "fe_repo" {
  name = "${var.fe_reponame}"
}

output "be_repo_arn" {
  value = "${aws_ecr_repository.be_repo.arn}"
}

output "fe_repo_arn" {
  value = "${aws_ecr_repository.fe_repo.arn}"
}