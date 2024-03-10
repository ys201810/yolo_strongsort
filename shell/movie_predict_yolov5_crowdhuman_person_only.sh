poetry run python ../src/StrongSORT-YOLO/yolov5/detect.py \
  --source ../data/input_video/clip_video.mp4 \
  --yolo-weights weights/crowdhuman_yolov5m.pt \
  --strong-sort-weights osnet_x0_25_market1501.pt \
  --img 640 \
  --save-vid \
  --classes 0 \
  --exist-ok \
  --project ../data/output/ \
  --name crowdhuman_yolov5m_filter

# --source: 入力動画
# --yolo-weights: yoloモデルパス
# --strong-sort-weights: StrongSORTモデルパス
# --img: 予測時の画像サイズ
# --save-vid: 予測結果を動画に保存
# --name: 保存ディレクトリ名
# --classes: class指定 
