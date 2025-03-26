echo "detection"
python pre_sonar.py --pre 0 --data 0807_img --label default_labels --label_type 1 --parad 100 70 65 60 50 40 30 150 220 260 300 330 360 500 1200 1500 --paral 1200 1500 1500 --parap 1500 --blur_size 9 9 9 19 --human_size 4552 --remove 0 --bg_path ./0807_img/08140001/sonar2 --bg_sc 08140001 --max_blur 27 --process 0 --obj_detect 0807 --obj_type 0807 --save_dir_all 0807_results_all
echo "generate pos"
python label2dis.py --save_dir_all 0807_results_all --data ./0807_img --detect 0807_img_localize_3 --gt default_labels_localize_3 --type 1 --parad 100 70 65 60 50 40 30 150 220 260 300 330 360 500 --dis 17 --remove 0
echo "track and label"
python track.py --save_dir_all 0807_results_all --data 0807_img_pos --label 0807_infe_label --track track_0807 --track_re result_0807 --cfg 0 # --cfg 3 12
python moving_detect.py --save_dir_all 0807_results_all --data track_0807 --save save_moving_0807 --smooth_cfg 0 --pre_cfg 0 #--smooth_cfg 8.76 8.76  --pre_cfg 17.9
echo "Finish testing!"
  
