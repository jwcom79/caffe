#!/usr/bin/env sh

./build/tools/caffe train --solver=examples/mnist/test/lenet_solver.prototxt \
		2>&1 | tee  examples/mnist/test/log.txt
