#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train \
		--solver=examples/embeded/dart_solver.prototxt

$TOOLS/caffe train \
		--solver=examples/embeded/dart_solver_lr1.prototxt \
		--snapshot=examples/embeded/dart_iter_100000.solverstate

$TOOLS/caffe train \
		--solver=examples/embeded/dart_solver_lr2.prototxt \
		--snapshot=examples/embeded/dart_iter_200000.solverstate
