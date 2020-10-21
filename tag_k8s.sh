#!/bin/bash
images=(kube-proxy:v1.17.0 kube-scheduler:v1.17.0 kube-controller-manager:v1.17.0 kube-apiserver:v1.17.0 etcd:3.4.3-0  coredns:1.6.5 pause:3.1)
 
images_old=(kube-proxy-amd64:v1.17.0 kube-scheduler-amd64:v1.17.0 kube-controller-manager-amd64:v1.17.0 kube-apiserver-amd64:v1.17.0 etcd-amd64:3.4.3-0  coredns:1.6.5 pause-amd64:3.1)
 
for imageName   in ${images[@]} ; do
for imageName_old in ${images_old[@]};do
 docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName_old k8s.gcr.io/$imageName
 
 done
 done
