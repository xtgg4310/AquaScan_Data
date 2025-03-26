#generate img
python ./data_process/generate_data_all.py --save_dir_all 0814_results_all --data ./pre_0814_data --label ./0814_infe_label --save 0814_img_infe --file 0814_infe
python infe_state.py --option_path config/resnet18_hfc_eval_0814.yaml
python split_results.py --save_dir_all 0814_results_all --dir ./checkpoints/eval_model/optimal/trainlist_0814_infe_0814_infe_0814_infe/record --save_dir ./0814_infe_split
python state.py --save_dir_all 0814_results_all --motion 0814_infe_split --moving save_moving_0814 --har 0814_har --detect 0814_detect --label 0814_labels --har_cfg 0.0 --smooth_cfg 0.0 --start_cfg 0.0 --gt_cfg 08141002 --gt_mode 1 --gt_trans 0 --gt_sc 08141002 --dis 17 --label_type 1 --sample 100000 --save ./acc_results/save_0814.npy