#generate img
python ./data_process/generate_data_all.py --save_dir_all 0229_results_all --data ./data_0229 --label ./0229_infe_label --save 0229_img_infe --file 0229_infe
python infe_state.py --option_path config/resnet18_hfc_eval_0229.yaml
python split_results.py --save_dir_all 0229_results_all --dir ./checkpoints/eval_model/optimal/trainlist_0229_infe_0229_infe_0229_infe/record --save_dir ./229_infe_split
python state.py --save_dir_all 0229_results_all --motion 229_infe_split --moving save_moving_0229 --har 229_har --detect 229_detect --label 229_eval_labels --har_cfg 0.0 --smooth_cfg 0.0 --start_cfg 0.0 --gt_cfg 229 --gt_mode 0 --gt_trans 0 --gt_sc 2292002 2292004 2292005 --dis 13 --label_type 0 --sample 100000 --save ./acc_results/save_0229.npy