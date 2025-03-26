python3 reconstruction.py --raw 08071005 --save_txt txt/ --save_img img/ --skip 2 --offset 1 --scan 1 
mkdir ../0807_img
cp -r ./recover/txt/08071005 ../0807_img
cp -r ./raw_data/08140001 ../0807_img
mkdir ../default_labels
cp -r ./raw_labels/08071005 ../default_labels