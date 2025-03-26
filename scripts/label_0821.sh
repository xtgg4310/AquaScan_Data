echo "detection"
python pre_sonar.py --save_dir_all 0821_results_all --pre 0 --data 0821_img --label 0821_labels --label_type 1 --parad 100 100 70 65 60 55 50 45 40 30 30 166 175 200 240 270 300 330 360 390 400 500 1200 1500 --paral 1200 1500 1500 --parap 1500 --blur_size 9 9 9 19 --human_size 5160 --remove 1 --bg_path ./0821_img/08213000/sonar2 --bg_sc 08213000 --max_blur 27 --process 0 --obj_detect 0821 --obj_type 0821
echo "generate pos"
python label2dis.py --save_dir_all 0821_results_all --data ./0821_img --detect 0821_img_localize_3 --gt 0821_labels_localize_3 --type 1 --parad 100 100 70 65 60 55 50 45 40 30 30 166 175 200 240 270 300 330 360 390 400 500 --dis 15 --remove 1
echo "track and label"
python track.py --save_dir_all 0821_results_all --data 0821_img_pos --label 0821_infe_label --track track_0821 --track_re result_0821 --cfg 3 12
python moving_detect.py --save_dir_all 0821_results_all --data track_0821 --save save_moving_0821 --smooth_cfg 0.0 --pre_cfg 0.0 #--smooth_cfg 8.76 8.76  --pre_cfg 17.9
echo "Finish testing!"
  
