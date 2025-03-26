#generate img
python ./data_process/generate_data_all.py --save_dir_all ./0807_results_all --data ./0807_img --label 0807_infe_label --save 0807_img_infe --file 0807_infe
python infe_state.py --option_path config/resnet18_hfc_eval_0807.yaml
python split_results.py --save_dir_all 0807_results_all --dir ./checkpoints/eval_model/optimal/trainlist_0807_infe_0807_infe_0807_infe/record --save_dir ./0807_infe_split
python state.py --save_dir_all 0807_results_all --motion 0807_infe_split --moving save_moving_0807 --har 0807_har --detect 0807_detect --label default_labels --har_cfg 0.0 --smooth_cfg 0.0 --start_cfg 0.0 --gt_cfg 08071005 --gt_mode 1 --gt_trans 0 --gt_sc 08071005 --dis 17 --label_type 1 --sample 1000000 --save ./acc_results/save_0807.npy