# polyphony_minesweeper

Pythonを使った高位合成PolyphonyでMineSweeperを作りました．  
I made simple MineSweeper by using the Polyphony as high layer systhesis tool.  
Source code is written by Python language.  
  
ボードとして，GowinのFPGAが載っているTang Nano 9K(Sipeedf)を使いました．  
Tang Nano 9K is used for FPGA board in this project.  
  
表示は8x8のマトリクスLEDに行います．  
Display is 8x8 Matrix LED.  
  
各LEDの明るさの階調を使って，各マス目に表示されるべき数字を表現しています．  
現在のカーソル位置は，点滅によって表現します．  
2つのロータリエンコーダS/Wを回すと，縦横にカーソルを移動できます．  

# モジュール
　Pythonソースコードは大きく次のセクションに分けられます．  
- ロータリエンコーダ値取得（チャタリング除去有り）
- 盤面状態の更新（カーソル位置移動処理など）
- マトリクスLEDの駆動（階調表現あり）

# プロジェクト全体
　Gowin IDEのプロジェクトになっています．  
 LEDMatrix.gprjがプロジェクトファイルです．
 
# src/の中身
　ソースコードはsrcフォルダにあります．  
  All source codes are located in src/ directory.  
- MineSweeper.py　Pythonで書かれたソースコードです．Polyphonyコマンドに渡すと，高位合成されVerilog記述を得られます．
- top.sv　SystemVerilogで記述されたトップモジュールです．手動で記述して作ります（現状では自動生成ツールなどはない）．
- top.cst　物理制約ファイルです．通常のFPGA開発と同じように使うボードに合わせて手動で記述します．
- polyphony_out.v　polyphonyコマンドを実行して高位合成すると自動で生成されるVerilogファイルです．
