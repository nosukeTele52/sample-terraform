# hashicorp/localの宣言は省略可能

resource "local_file" "my_file" {
    filename    = var.filename
    content     = var.content
}


locals {
    filename    = "local-ver-sample.txt"
    content     = "hello local veriables"
}

# 文字列と組み合わせる場合は"${}"で囲う
# example
# filename = string_concat_${local.filename}.txt
resource "local_file" "my_local_file" {
    filename    = local.filename
    content     = local.content
}
