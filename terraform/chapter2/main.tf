# Terraformというツール自体の設定ブロックです
terraform {
  # 必要なプロバイダ（Terraformが操作対象とやり取りするためのプラグイン）のリスト
  # 料理に例えると「この料理を作るには、次に挙げる道具（プロバイダ）が必須ですよ！」というリスト
  required_providers {
    # 実物（hashicorp/local）」に対して、自分のレシピ（Terraformのコード）の中で呼びやすくするための「識別用のラベル（local）
    local = {
      # 「どこのメーカーの何という製品か（hashicorp/local）」
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}