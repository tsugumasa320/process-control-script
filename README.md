日本語版 (Japanese Version):
<details>
<summary>クリックして展開</summary>

# プロセス優先度操作スクリプト

このシェルスクリプトは、指定したプロセス名に一致するプロセスのPIDを取得し、そのPIDを使用して他の操作を実行するためのユーティリティです。このスクリプトは、複数のプロセス名に対して一括で操作を行うことができます。以下はスクリプトの概要と使用方法です。

## 使用方法

1. スクリプトをダウンロードまたはコピーし、実行可能なシェルスクリプトファイルに設定します。

2. `process_names`変数に、操作対象のプロセス名をスペースで区切って指定します。例えば、以下のように設定します。

   ```bash
   process_names=("Live" "Max")
   ```
スクリプトを実行します。

   ```bash
   sh process-control-script.sh
   ```

./process-control-script.sh
スクリプトは指定したプロセス名に一致するプロセスのPIDを取得し、指定した操作を実行します。現在のバージョンでは、プロセスの優先度を変更する操作が含まれていますが、必要に応じて他の操作を追加または変更することができます。

注意事項
  * このスクリプトを実行するには、管理者権限が必要な操作（例: sudoコマンドを使用した優先度の変更）が含まれています。適切な権限を持つユーザーで実行してください。

  * スクリプトの動作は、使用しているシステムやプロセス管理方法に依存する可能性があります。必要に応じてスクリプトをカスタマイズしてください。

  * このスクリプトは、複数のプロセスに対して一括で操作を行いたい場合に便利です。特定のプロセスに対して他の操作を実行したい場合は、スクリプトをカスタマイズしてください。

  * このスクリプトはMac OSでの使用を想定しています。


</details>

#### 英語版 (English Version):

<details>
<summary>Click to expand</summary>

# Process Priority Control Script

This shell script is a utility that retrieves the PIDs (Process IDs) of processes matching specified process names and allows you to perform various operations using those PIDs. This script can perform operations on multiple process names at once. Here is an overview of the script and how to use it.

## Usage

1. Download or copy the script and make it an executable shell script file.

2. Specify the process names you want to operate on by separating them with spaces in the `process_names` variable. For example, set it like this:

   ```bash
   process_names=("Live" "Max")
   ```
Execute the script.

   ```bash
   sh process-control-script.sh
   ```

bash
Copy code
./process-control-script.sh
The script will retrieve the PIDs of processes that match the specified process names and perform the specified operations. The current version includes an operation to change the process priority, but you can add or modify other operations as needed.

# Notes
  * Running this script may require administrative privileges for certain operations (e.g., changing priority using the sudo command). Please run it with a user account that has the appropriate permissions.

  * The behavior of the script may depend on the system and process management methods in use. Customize the script as needed.

  * This script is useful for performing batch operations on multiple processes. If you want to perform other operations on specific processes, customize the script accordingly.

  * This script is intended for use on Mac OS.
