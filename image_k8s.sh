#!/bin/bash
images=(kube-proxy-amd64:v1.17.0 kube-scheduler-amd64:v1.17.0 kube-controller-manager-amd64:v1.17.0 kube-apiserver-amd64:v1.17.0 etcd-amd64:3.4.3-0  coredns:1.6.5 pause-amd64:3.1)
for imageName in ${images[@]} ; do
 docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
done
