poetry run python ../src/StrongSORT-YOLO/track_v5.py \
  --source ../data/input_video/clip_video.mp4 \
  --yolo-weights ../models/crowdhuman_yolov5m.pt \
  --strong-sort-weights ../models/osnet_x0_25_market1501.pt \
  --config-strongsort ../src/StrongSORT-YOLO/strong_sort/configs/strong_sort.yaml \
  --img 640 \
  --save-vid \
  --exist-ok \
  --project ../data/output/ \
  --name crowdhuman_yolov5m
