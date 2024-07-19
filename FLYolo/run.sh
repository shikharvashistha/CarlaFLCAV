#!/bin/bash

# training
nohup python3 yolov9/train_dual.py --img 640 --batch 8 --epochs 5 --data yolov9/raw_data/pretrain/vehicle.tesla.model3_143/yolo_coco_carla.yaml --cfg yolov9/models/detect/yolov9-c.yaml  --weights yolov9-c.pt --name pretrain_model3_143 &> nohup.out &
nohup python3 yolov9/train_dual.py --img 640 --batch 8 --epochs 5 --data yolov9/raw_data/town03/vehicle.tesla.model3_138/yolo_coco_carla.yaml --cfg yolov9/models/detect/yolov9-c.yaml  --weights yolov9-c.pt --name town03_model3_138 &> nohup_1.out &
nohup python3 yolov9/train_dual.py --img 640 --batch 8 --epochs 5 --data yolov9/raw_data/town03/vehicle.tesla.model3_139/yolo_coco_carla.yaml --cfg yolov9/models/detect/yolov9-c.yaml  --weights yolov9-c.pt --name town03_model3_139 &> nohup_3.out &
nohup python3 yolov9/train_dual.py --img 640 --batch 8 --epochs 5 --data yolov9/raw_data/town03/vehicle.tesla.model3_140/yolo_coco_carla.yaml --cfg yolov9/models/detect/yolov9-c.yaml  --weights yolov9-c.pt --name town03_model3_140 &> nohup_4.out &

nohup python3 yolov9/train_dual.py --img 640 --batch 8 --epochs 5 --data yolov9/raw_data/town05/vehicle.tesla.model3_332/yolo_coco_carla.yaml --cfg yolov9/models/detect/yolov9-c.yaml  --weights yolov9-c.pt --name town05_model3_332 &> nohup_5.out &
nohup python3 yolov9/train_dual.py --img 640 --batch 8 --epochs 5 --data yolov9/raw_data/town05/vehicle.tesla.model3_333/yolo_coco_carla.yaml --cfg yolov9/models/detect/yolov9-c.yaml  --weights yolov9-c.pt --name town05_model3_333 &> nohup_6.out &
nohup python3 yolov9/train_dual.py --img 640 --batch 8 --epochs 5 --data yolov9/raw_data/town05/vehicle.tesla.model3_335/yolo_coco_carla.yaml --cfg yolov9/models/detect/yolov9-c.yaml  --weights yolov9-c.pt --name town05_model3_335 &> nohup_8.out &
nohup python3 yolov9/train_dual.py --img 640 --batch 8 --epochs 5 --data yolov9/raw_data/town05/vehicle.tesla.model3_334/yolo_coco_carla.yaml --cfg yolov9/models/detect/yolov9-c.yaml  --weights yolov9-c.pt --name town05_model3_334 &> nohup_7.out &


# validation
python3 yolov9/val_dual.py --data yolov9/raw_data/town05_test/vehicle.tesla.model3_173/yolo_coco_carla.yaml --weights yolov9/runs/train/pretrain_model3_143/weights/best.pt --name pretrain_model3_143
python3 yolov9/val_dual.py --data yolov9/raw_data/town05_test/vehicle.tesla.model3_173/yolo_coco_carla.yaml --weights yolov9/runs/train/town03_model3_138/weights/best.pt --name town03_model3_138
python3 yolov9/val_dual.py --data yolov9/raw_data/town05_test/vehicle.tesla.model3_173/yolo_coco_carla.yaml --weights yolov9/runs/train/town03_model3_139/weights/best.pt --name town03_model3_139
python3 yolov9/val_dual.py --data yolov9/raw_data/town05_test/vehicle.tesla.model3_173/yolo_coco_carla.yaml --weights yolov9/runs/train/town03_model3_140/weights/best.pt --name town03_model3_140

python3 yolov9/val_dual.py --data yolov9/raw_data/town05_test/vehicle.tesla.model3_173/yolo_coco_carla.yaml --weights yolov9/runs/train/town05_model3_332/weights/best.pt --name town05_model3_332
python3 yolov9/val_dual.py --data yolov9/raw_data/town05_test/vehicle.tesla.model3_173/yolo_coco_carla.yaml --weights yolov9/runs/train/town05_model3_333/weights/best.pt --name town05_model3_333
python3 yolov9/val_dual.py --data yolov9/raw_data/town05_test/vehicle.tesla.model3_173/yolo_coco_carla.yaml --weights yolov9/runs/train/town05_model3_334/weights/best.pt --name town05_model3_334
python3 yolov9/val_dual.py --data yolov9/raw_data/town05_test/vehicle.tesla.model3_173/yolo_coco_carla.yaml --weights yolov9/runs/train/town05_model3_335/weights/best.pt --name town05_model3_335