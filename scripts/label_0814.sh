echo "process bias"
python pre_sonar_bias.py --data 0814_img_new --label 0814_labels
echo "detection"
python pre_sonar.py --save_dir_all 0814_results_all --pre 0 --data pre_0814_data --label pre_label_0814 --label_type 1 --parad 100 70 65 60 50 40 30 150 220 260 300 330 360 500 1200 1500 --paral 1200 1500 1500 --parap 1500 --blur_size 9 9 9 19 --human_size 4552 --remove 0 --bg_path ./0814_img_new/08140001/sonar2 --bg_sc 08140001 --max_blur 27 --process 1 --obj_detect 0814 --obj_type 0814
echo "generate pos"
python label2dis.py --save_dir_all 0814_results_all --data ./pre_0814_data --detect pre_0814_data_localize_3 --gt pre_label_0814_localize_3 --type 2 --parad 100 70 65 60 50 40 30 150 220 260 300 330 360 500 --dis 17 --remove 0
echo "track and label"
python track.py --save_dir_all 0814_results_all --data pre_0814_data_pos --label 0814_infe_label --track track_0814 --track_re result_0814 --cfg 3 12
python moving_detect.py --save_dir_all 0814_results_all --data track_0814 --save save_moving_0814 --smooth_cfg 6.72 6.72 --pre_cfg 15.3 #--smooth_cfg 8.76 8.76  --pre_cfg 17.9
echo "Finish testing!"
  
