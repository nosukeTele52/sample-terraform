# sample-terraform
learing to
https://labex.io/ja/courses/terraform-for-beginners

## what is terraform
IaCを用いてインフラ構成をコードで管理するツール

### base command
|cmd|説明|
| ---- | ---- |
|init|プロジェクトを初期化し、必要なプロバイダーのプラグインをダウンロードします。|
|plan|現在のコードでどのようなリソースが作成・変更されるか、実行計画を確認します。|
|apply|実際にリソースを作成します。|
|destroy|作成したすべてのリソースを削除します。|

### 詳細
#### terraform init
カレントディレクトリの.tfファイルを走査、必要なプロバイダーやモジュールを.terraform/にダウンロード

#### terraform plan apply
カレントディレクトリの全.tfファイルを論理的に結合して１つのファイルとして扱い差分の計算
サブディレクトリは自動で読み込まれない（モジュールとして明示的に呼ぼ出す必要がある）
同じディレクトリの.tfファイルは同一のモジュールスコープとして扱われる。変数やresourceブロックをまたいで参照できる

#### ブロックの種類

|ブロック|概要|利用例|
| ---- |---- |---- |
|terraform|バージョン制約・バックエンド設定||
|provider|プロバイダー設定||
|resource|インフラリソース定義||
|data|既存リソースの読み取り||
|variable|入力変数定義||
|output|出力値定義||
|local|ローカル変数||
|module|モジュール呼び出し||
|moved|リソース名変更をstateに反映||
|import|既存インフラをstateに取り込む||
|check|assetionによる検証（失敗してもapplyは継続）||
|removed|stateから削除（インフラは残し）||
|action|プロバイダー定義のコマンド実行||