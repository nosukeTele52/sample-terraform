resource "local_file" "example" {
    content     = "Thie is a file created by a Terraform module."
    filename    = "${path.module}/${var.file_name}"
}