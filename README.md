# Eclipse/VSCode Dockerイメージ

開発環境用のデスクトップ環境Dockerイメージです。
以下を含みます。

- OpenJDK 10.0.2
- Apache Maven 3.5.4
- Eclipse 4.9
- Visual Studio Code 1.27.2
- Golang 1.11.1

## 実行

以下を実行して、[http://localhost:8080](http://localhost:8080)にアクセス。

```
$ docker run -d -p 8080:8080 uphy/eclipse-vscode-jp
```

Eclipse/VSCode(Visual Studio Code)/Terminalがデスクトップにありますので、
ダブルクリックして実行して下さい。

![capture](https://raw.githubusercontent.com/uphy/eclipse-vscode-jp/images/capture.png)

## 永続化

以下のフォルダを永続化すると、再構築しても快適です。

|対象|場所|
|----:|:-----|
|全体の設定(デスクトップ等)|/root/.config/|
|VSCode|/root/.vscode/|
|Eclipseワークスペース|/root/eclipse-workspace/|
|Go|/root/go/|
|Maven|/root/.m2/|
|ログ|/var/log/|
