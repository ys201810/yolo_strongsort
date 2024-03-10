poetry run python track_v5.py \
  --source ../../data/input_video/clip_video.mp4 \
  --yolo-weights ../../models/yolov5x.pt \
  --strong-sort-weights ../../models/osnet_x0_25_market1501.pt \
  --img 640 \
  --save-vid \
  --exist-ok \
  --project ../../data/output/ \
  --name yolov5x
