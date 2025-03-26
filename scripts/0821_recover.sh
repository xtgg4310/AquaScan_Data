python3 reconstruction.py --raw 08213003 --save_txt txt/ --save_img img/ --skip 2 --offset 1 --scan 1 
python3 reconstruction.py --raw 08213004 --save_txt txt/ --save_img img/ --skip 2 --offset 1 --scan 1 
python3 reconstruction.py --raw 08213005 --save_txt txt/ --save_img img/ --skip 2 --offset 1 --scan 1 
mkdir ../0821_img
cp -r ./recover/txt/08213003 ../0821_img
cp -r ./recover/txt/08213004 ../0821_img
cp -r ./recover/txt/08213005 ../0821_img
cp -r ./raw_data/08213000 ../0821_img

mkdir ../0821_labels
cp -r ./raw_labels/08213003 ../0821_labels
cp -r ./raw_labels/08213004 ../0821_labels
cp -r ./raw_labels/08213005 ../0821_labels