# HayakuchicalMouseKey

Ubuntu標準のマウスキーが使いづらかったので、普段使用しているマウスキーを公開する。
アルファ版とする。
カスタムショートカットキーでシェルスクリプトを呼びydotoolコマンドを呼び出すことで実現している。
install.shを実行すると、~/.hayakuchialMouseKeyディレクトリに必要なスクリプトを実行する。
カスタムショートカットキーをいじくり回すので既にカスタムショートカットキーを登録しているとそれらの設定が上書きされるので注意。

# Dependencies

Wayland版はUbuntu24.04で動作を確認している。
X11版はUbuntu22.04及びUbuntu20.04で使用していたが、使用していた頃のスクリプトをコピペしただけなので動作は確認していない。

```
sudo apt install curl xautomation xdotool
```

# Install

注: 既にカスタムショートカットキーを登録していると壊れる可能性がある。
カスタムショートカットキーはすべて削除してから実行する。

```
cd hayakuchicalMouseKey
./install.sh
```

# Uninstall

注:カスタムショートカットキーを削除しないようにしている。
カスタムショートカットキーは手動で削除すること。

```
cd hayakuchicalMouseKey
./uninstall.sh
```

# Usage

NumLockを解除した状態で、以下のとおりとなる。

* テンキーの1: 左に200px移動
* テンキーの3: 右に200px移動
* テンキーの5: 上に70px移動
* テンキーの2: 下に70px移動
* Ctrlキーを押した状態でテンキーの1: 左に15px移動
* Ctrlキーを押した状態でテンキーの3: 右に15px移動
* Ctrlキーを押した状態でテンキーの5: 上に15px移動
* Ctrlキーを押した状態でテンキーの2: 下に15px移動
* テンキーの0: 左クリック
* テンキーの6: 右クリック 

## ドラッグアンドドロップ

現在X11のみ使用可能。(`echo $XDG_SESSION_TYPE`して、waylandだった場合には使用不可。)

* テンキーの9を押すことでドラッグアンドドロップの開始位置を現在のマウスカーソル位置に決定
* テンキーの8を押すことでドラッグアンドドロップの開始位置から現在のマウスカーソル位置までドラッグ

# LICENSE

AGPL LICENSE
