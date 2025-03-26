python3 reconstruction.py --raw 2292002 --save_txt txt/ --save_img img/ --skip 2 --offset 1 --scan 1 
python3 reconstruction.py --raw 2292004 --save_txt txt/ --save_img img/ --skip 2 --offset 1 --scan 1 
python3 reconstruction.py --raw 2292005 --save_txt txt/ --save_img img/ --skip 2 --offset 1 --scan 1
mkdir ../data_0229 
cp -r ./recover/txt/2292002 ../data_0229
cp -r ./recover/txt/2292004 ../data_0229
cp -r ./recover/txt/2292005 ../data_0229
mkdir ../229_eval_labels
cp -r ./raw_labels/2292002 ../229_eval_labels
cp -r ./raw_labels/2292004 ../229_eval_labels
cp -r ./raw_labels/2292005 ../229_eval_labels