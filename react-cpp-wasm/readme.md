# cpp(wasm)をReactから利用したい。

https://github.com/Shio3001/SaltSelf/tree/45a2008a4e1264c21c2f93a4921e365b59fe790a

ビルド済みwasmをimportしようとすると色々足りないって怒られる。


結論から言うとWebpackを入れてごちゃごちゃすればいける。
`create-react-app`からwebpackを導入するやり方がわからなかったので自分でreact環境を作ることにしました。

↓詳細↓<br/>
https://github.com/hirossan4049/cppwasm



## 複雑なことはせずにとりあえず文字列を返すやつを作ってみる。

上のリポジトリにもだいたい書いてるけど優しいのでもう少し詳しく。
<br/><br/>

とりあえずいるものを入れる。

```bash
$ mkdir uhohoi && cd uhohoi
$ npm install react react-dom
$ npm install -D webpack webpack-dev-server webpack-cli @babel/core babel-loader @babel/preset-react html-webpack-plugin file-loader path-browserify
```

見やすいようにフォルダを構成していく

```bash
$ mkdir src
$ mkdir src/wasm

$ mkdir cpp
$ mkdir cpp/bindings
$ mkdir cpp/src
```

必要なファイルを作成

```bash
$ touch cpp/bindings/Bindings.cpp
$ touch cpp/src/HelloWorld.h
$ touch cpp/src/HelloWorld.cpp

$ touch src/App.js
$ touch src/index.html
$ touch src/index.js
```

ここまで書いといてあれだけど飽きたのであとはいい感じにすればできます。
