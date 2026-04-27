# hashicorp/localの宣言は省略可能

resource "local_file" "my_file" {
    filename    = var.filename
    content     = var.content
}