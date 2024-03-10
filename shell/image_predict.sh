poetry run python ../src/StrongSORT-YOLO/yolov5/detect.py \
  --weights ../models/yolov5x.pt \
  --conf-thres 0.40 \
  --img-size 800 \
  --source ../data/input_img/test_01.jpg \
  --save-txt \
  --exist-ok \
  --project ../data/output/ \
  --name test_predict