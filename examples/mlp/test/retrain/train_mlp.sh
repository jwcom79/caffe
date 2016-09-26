#!/usr/bin/env sh

./build/tools/caffe train --solver=examples/mlp/test/retrain/mlp_solver.prototxt \
		2>&1 | tee  examples/mlp/test/retrain/log.txt
