echo "detection"
python pre_sonar_opt_yoho.py --save_dir_all 0229_results_all --data ./data_0229 --pre 0 --label ./229_eval_labels --parad 95 80 75 60 60 40 30 100 150 220 260 300 400 500 1200 1500 --paral 1200 1500 1500 --parap 1500 --label_type 0 --obj_detect 229 --obj_type 229
#python pre_sonar.py --save_dir_all 0229_results_all --pre 0 --data ./data_0229 --label ./229_eval_labels --label_type 0 --parad 95 80 75 60 60 40 30 100 150 220 260 300 400 500 1200 1500 --paral 1200 1500 1500 --parap 1500 --blur_size 3 5 5 19 --human_size 3975 --remove 2 --bg_path ./no_bg --bg_sc 2291000 --max_blur 19 --process 0 --obj_detect 229 --obj_type 229
echo "generate pos"
python label2dis.py --save_dir_all 0229_results_all --data ./data_0229 --detect data_0229_localize_3 --gt 229_eval_labels_localize_3 --type 1 --parad 95 80 75 60 60 40 30 100 150 220 260 300 400 500 --dis 13 --remove 2
echo "track and label"
python track.py --save_dir_all 0229_results_all --data data_0229_pos --label 0229_infe_label --track track_0229 --track_re result_0229 --cfg 3 10
python moving_detect.py --save_dir_all 0229_results_all --data track_0229 --save save_moving_0229 --smooth_cfg 0.0 --pre_cfg 0.0 #--smooth_cfg 8.76 8.76  --pre_cfg 17.9
echo "Finish testing!"
  
