EXAMPLE=$CAFFE_ROOT/examples/embeded
DATA=$CAFFE_ROOT/data/dart
TOOLS=$CAFFE_ROOT/build/tools

TRAIN_DATA_ROOT=$CAFFE_ROOT/data/dart/10000
VAL_DATA_ROOT=$CAFFE_ROOT/data/dart/2000

RESIZE_HEIGHT=24
RESIZE_WIDTH=24

echo "Creating train lmdb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
		--resize_height=$RESIZE_HEIGHT \
		--resize_width=$RESIZE_WIDTH \
		--gray \
		--shuffle \
		$TRAIN_DATA_ROOT/ \
		$DATA/10000/train_list.txt \
		$EXAMPLE/dart_train_lmdb

GLOG_logtostderr=1 $TOOLS/convert_imageset \
		--resize_height=$RESIZE_HEIGHT \
		--resize_width=$RESIZE_WIDTH \
		--gray \
		--shuffle \
		$VAL_DATA_ROOT/ \
		$DATA/2000/test_list.txt \
		$EXAMPLE/dart_val_lmdb
