EXAMPLE=$CAFFE_ROOT/examples/embeded3
DATA=$CAFFE_ROOT/data/music_note
TOOLS=$CAFFE_ROOT/build/tools

TRAIN_DATA_ROOT=$CAFFE_ROOT/data/music_note/train
VAL_DATA_ROOT=$CAFFE_ROOT/data/music_note/test

RESIZE_HEIGHT=24
RESIZE_WIDTH=24

echo "Creating train lmdb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
		--resize_height=$RESIZE_HEIGHT \
		--resize_width=$RESIZE_WIDTH \
		--shuffle \
		--gray=True \
		$TRAIN_DATA_ROOT/ \
		$DATA/train_list.txt \
		$EXAMPLE/music_train_lmdb

GLOG_logtostderr=1 $TOOLS/convert_imageset \
		--resize_height=$RESIZE_HEIGHT \
		--resize_width=$RESIZE_WIDTH \
		--shuffle \
		--gray=True \
		$VAL_DATA_ROOT/ \
		$DATA/val_list.txt \
		$EXAMPLE/music_val_lmdb
