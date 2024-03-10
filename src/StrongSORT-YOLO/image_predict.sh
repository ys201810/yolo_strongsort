python ./yolov5/detect.py \
  --weights ./weights/yolov5x.pt \
  --conf-thres 0.40 \
  --img-size 800 \
  --source ../../data/input_img/test_01.jpg \
  --save-txt \
  --exist-ok
