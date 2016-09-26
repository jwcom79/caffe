#!/usr/bin/env sh

./build/tools/caffe train --solver=examples/mlp/mlp_solver.prototxt \
		2>&1 | tee  $CAFFE_ROOT/examples/mlp/log.txt
