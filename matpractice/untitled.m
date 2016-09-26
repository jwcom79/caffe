model = './examples/mlp/mlp_train_test.prototxt';
weights = './examples/mlp/mlp_iter_5000.caffemodel';

caffe.set_mode_gpu();
caffe.set_device(0);

net = caffe.Net(model, 'test');
net.copy_from(weights);

weights_ip1_ip2 = net.params('ip2', 1).get_data();
weights_data_ip1 = net.params('ip1', 1).get_data();