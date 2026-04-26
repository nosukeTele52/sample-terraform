# chapter2では「hashicorp/local provider」を明示的に宣言していたが、組み込みされている
# 明示的に宣言しなくても下記のhello worldを実行することができる

# 構文
# resource "プロバイダ名_リソース種別" "ラベル" { 引数名 = 値 }
# resource：「何かを作る」という宣言キーワード
# local_file: localプロバイダが提供する「ファイルを作る」というリソース種別
# example このリソースのラベル。コード内で参照する時に使う(local_file.example.filename等)

resource "local_file" "example" {
    content = "Hello, Terraform!"
    filename = "${path.module}/hello.txt"
}

# そのほかの使い方
# https://registry.terraform.io/providers/hashicorp/local/latest/docs