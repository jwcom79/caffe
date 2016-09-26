EXAMPLE=$CAFFE_ROOT/examples/embeded3
DATA=$CAFFE_ROOT/data/dart
TOOLS=$CAFFE_ROOT/build/tools

TRAIN_DATA_ROOT=$CAFFE_ROOT/data/dart/resolution/images_4
VAL_DATA_ROOT=$CAFFE_ROOT/data/dart/test

RESIZE_HEIGHT=32
RESIZE_WIDTH=32

echo "Creating train lmdb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
		--resize_height=$RESIZE_HEIGHT \
		--resize_width=$RESIZE_WIDTH \
		--shuffle \
		$TRAIN_DATA_ROOT/ \
		$DATA/resolution/train_list.txt \
		$EXAMPLE/dart_train_lmdb

GLOG_logtostderr=1 $TOOLS/convert_imageset \
		--resize_height=$RESIZE_HEIGHT \
		--resize_width=$RESIZE_WIDTH \
		--shuffle \
		$VAL_DATA_ROOT/ \
		$DATA/val_list.txt \
		$EXAMPLE/dart_val_lmdb
