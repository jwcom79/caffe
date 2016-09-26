#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train \
    --solver=examples/cifar10/test/cifar10_full_solver.prototxt \
		2>&1 | tee -a examples/cifar10/test/log.txt

# reduce learning rate by factor of 10
$TOOLS/caffe train \
    --solver=examples/cifar10/cifar10_full_solver_lr1.prototxt \
    --snapshot=examples/cifar10/cifar10_full_iter_60000.solverstate.h5

# reduce learning rate by factor of 10
$TOOLS/caffe train \
    --solver=examples/cifar10/cifar10_full_solver_lr2.prototxt \
    --snapshot=examples/cifar10/cifar10_full_iter_65000.solverstate.h5
