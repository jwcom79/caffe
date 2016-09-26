EXAMPLE=$CAFFE_ROOT/examples/embeded
DATA=$CAFFE_ROOT/data/dart/face
TOOLS=$CAFFE_ROOT/build/tools

TRAIN_DATA_ROOT=$CAFFE_ROOT/data/dart/face/train
VAL_DATA_ROOT=$CAFFE_ROOT/data/dart/face/test

RESIZE_HEIGHT=64
RESIZE_WIDTH=64

echo "Creating train lmdb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
		--resize_height=$RESIZE_HEIGHT \
		--resize_width=$RESIZE_WIDTH \
		--shuffle \
		$TRAIN_DATA_ROOT/ \
		$DATA/train_list.txt \
		$EXAMPLE/dart_train_lmdb

GLOG_logtostderr=1 $TOOLS/convert_imageset \
		--resize_height=$RESIZE_HEIGHT \
		--resize_width=$RESIZE_WIDTH \
		--shuffle \
		$VAL_DATA_ROOT/ \
		$DATA/test_list.txt \
		$EXAMPLE/dart_val_lmdb
