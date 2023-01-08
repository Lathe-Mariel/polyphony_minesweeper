# polyphony_minesweeper

Pythonを使った高位合成PolyphonyでMineSweeperを作りました．  
I made simple MineSweeper by using the Polyphony as high layer systhesis tool.  
Source code is written by Python language.  
  
表示はマトリクスLEDに行います．  
Display is 8x8 Matrix LED.  
各LEDの明るさの階調で各マス目に表示されるべき数字を表現します．  
現在のカーソル位置は，点滅で表現します．  
2つのロータリエンコーダS/Wで縦横にカーソルが移動します．  

# モジュール
　Pythonソースコードは大きく次のセクションに分けられます．  
- ロータリエンコーダ値取得（チャタリング除去有り）
- 盤面状態の更新（カーソル位置移動処理など）
- マトリクスLEDの駆動（階調表現あり）

# src/の中身
　ソースコードはsrcフォルダにあります．
- MineSweeper.py　Pythonで書かれたソースコードです．Polyphonyコマンドに渡すと，高位合成されVerilog記述を得られます．
- top.sv　SystemVerilogで記述されたトップモジュールです．手動で記述して作ります（現状では自動生成ツールなどはない）．
