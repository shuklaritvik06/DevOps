# Architecture of K8s

The basic architecture of K8s includes Master node and the slave node.

Each nodes have multiple pods. There are three process that run on each node, container runtime, kubelet, kube proxy.

Master node manage the worker nodes and cluster using the 4 processes.

- Api Server -> Validates the request
- Scheduler -> It randomly starts the pod on the worker node depending on how busy the worker node is and then kubelet is used for the starting
- Controller Manager -> Detects state changes
- etcd -> It is the cluster brain. It holds the status info.
