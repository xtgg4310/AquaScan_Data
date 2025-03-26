python3 reconstruction.py --raw 08141002 --save_txt txt/ --save_img img/ --skip 2 --offset 1 --scan 1 
mkdir ../0814_img_new
cp -r ./recover/txt/08141002 ../0814_img_new
cp -r ./raw_data/08140001 ../0814_img_new
mkdir ../0814_labels
cp -r ./raw_labels/08141002 ../0814_labels