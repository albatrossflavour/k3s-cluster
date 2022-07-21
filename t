task: [cluster:nodes] kubectl get nodes -o wide
NAME    STATUS   ROLES                       AGE     VERSION        INTERNAL-IP    EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION      CONTAINER-RUNTIME
k8s-0   Ready    control-plane,etcd,master   5h55m   v1.24.3+k3s1   192.168.2.50   <none>        Ubuntu 22.04 LTS     5.15.0-41-generic   containerd://1.6.6-k3s1
k8s-1   Ready    control-plane,etcd,master   5h53m   v1.24.3+k3s1   192.168.2.51   <none>        Ubuntu 22.04 LTS     5.15.0-41-generic   containerd://1.6.6-k3s1
k8s-2   Ready    control-plane,etcd,master   5h54m   v1.24.3+k3s1   192.168.2.52   <none>        Ubuntu 20.04.4 LTS   5.4.0-122-generic   containerd://1.6.6-k3s1
task: [cluster:kustomizations] kubectl get kustomizations -A
NAMESPACE     NAME                AGE     READY   STATUS
flux-system   apps                5h46m   True    Applied revision: main/8af3469e3ad8ea39bce01e52a4a69991852dda21
flux-system   charts              5h46m   True    Applied revision: main/8af3469e3ad8ea39bce01e52a4a69991852dda21
flux-system   config              5h46m   True    Applied revision: main/8af3469e3ad8ea39bce01e52a4a69991852dda21
flux-system   core                5h46m   True    Applied revision: main/8af3469e3ad8ea39bce01e52a4a69991852dda21
flux-system   crds                5h46m   True    Applied revision: main/8af3469e3ad8ea39bce01e52a4a69991852dda21
flux-system   crds-rook-ceph      172m    True    Applied revision: v1.9.7/721ddf3cd73a6d00e294dc0b4ccd2c89d0d4012c
flux-system   flux-cluster        5h52m   True    Applied revision: main/8af3469e3ad8ea39bce01e52a4a69991852dda21
flux-system   flux-installation   5h52m   True    Applied revision: v0.31.3/547e39d24c54235ee2ad8bbec75c5f47c4b82221
task: [cluster:helmreleases] kubectl get helmreleases -A
NAMESPACE     NAME                 AGE     READY   STATUS
default       echo-server          5h45m   True    Release reconciliation succeeded
default       hajimari             5h45m   True    Release reconciliation succeeded
kube-system   cert-manager         5h45m   True    Release reconciliation succeeded
kube-system   metrics-server       5h45m   True    Release reconciliation succeeded
kube-system   reflector            5h45m   True    Release reconciliation succeeded
kube-system   reloader             5h45m   True    Release reconciliation succeeded
networking    external-dns         5h45m   True    Release reconciliation succeeded
networking    ingress-nginx        5h45m   True    Release reconciliation succeeded
networking    k8s-gateway          5h45m   True    Release reconciliation succeeded
networking    metallb              5h45m   True    Release reconciliation succeeded
rook-ceph     rook-ceph-cluster    171m    False   HelmChart 'flux-system/rook-ceph-rook-ceph-cluster' is not ready
rook-ceph     rook-ceph-operator   171m    False   HelmChart 'flux-system/rook-ceph-rook-ceph-operator' is not ready
task: [cluster:helmrepositories] kubectl get helmrepositories -A
NAMESPACE     NAME               URL                                                AGE     READY   STATUS
flux-system   bitnami            https://charts.bitnami.com/bitnami                 5h46m   True    stored artifact for revision '6204fa395eb097615c90f7dbb809abfc30816adfeb996fa7d728ef35a3703061'
flux-system   emberstack         https://emberstack.github.io/helm-charts/          5h46m   True    stored artifact for revision 'a114c924b5578774a8bbbdc14fb6b1fdb5232b557504f29f110128093913120a'
flux-system   external-dns       https://kubernetes-sigs.github.io/external-dns     5h46m   True    stored artifact for revision '1091f09bd3d48d0f28e7cf1bc691f14b6cf23c57d53ee0f94a17620fe66a4c96'
flux-system   hajimari           https://hajimari.io                                5h46m   True    stored artifact for revision '7f5006d4671574a14b1ac37e1fc0ac4648a0e1d6e1c9eae5d0ee689293a49dae'
flux-system   ingress-nginx      https://kubernetes.github.io/ingress-nginx         5h46m   True    stored artifact for revision '190c7c6dccc5f2b6aedeb4e97b83f08bd35175256f1bc2909b180ce78b01635e'
flux-system   jetstack           https://charts.jetstack.io/                        5h46m   True    stored artifact for revision '07328f612cd377ab5dea5c2a21daf285922ca425da51a6ee985ae1dc841ddb03'
flux-system   k8s-at-home        https://k8s-at-home.com/charts/                    5h46m   True    stored artifact for revision '7c50ecc74a3bc495d715cdb7951c9ad07deaaba0bf3fcf40e625cc9cfab2cd7a'
flux-system   k8s-gateway        https://ori-edge.github.io/k8s_gateway/            5h46m   True    stored artifact for revision '63e252e7e4bf3d9a33ec3645cf24465643710c73073113bfb1a731482729dfa2'
flux-system   metallb            https://metallb.github.io/metallb                  5h46m   True    stored artifact for revision '4a55f643da23a9744231b6de8dfb4faeedca96432c92d35a452fe35de6e4f2c8'
flux-system   metrics-server     https://kubernetes-sigs.github.io/metrics-server   5h46m   True    stored artifact for revision '0ec994eb79350bd42668f31c26d9ca1605a892a9b1e3d9b9286218c0ce4ea541'
flux-system   stakater           https://stakater.github.io/stakater-charts         5h46m   True    stored artifact for revision 'fe22574526a6eabc3db3ed9e9e5db185ad095b75b5aaa7ec6cffc690b0d54a45'
flux-system   weaveworks-kured   https://weaveworks.github.io/kured                 5h46m   True    stored artifact for revision '5290ca77bc0fb9861a1b1298ef06956ed604f24a3130a813f792e2505cd2436a'
task: [cluster:gitrepositories] kubectl get gitrepositories -A
NAMESPACE     NAME                URL                                                 AGE     READY   STATUS
flux-system   flux-cluster        ssh://git@github.com/albatrossflavour/k3s-cluster   5h52m   True    stored artifact for revision 'main/8af3469e3ad8ea39bce01e52a4a69991852dda21'
flux-system   flux-installation   https://github.com/fluxcd/flux2                     5h52m   True    stored artifact for revision 'v0.31.3/547e39d24c54235ee2ad8bbec75c5f47c4b82221'
flux-system   rook-ceph-source    https://github.com/rook/rook.git                    172m    True    stored artifact for revision 'v1.9.7/721ddf3cd73a6d00e294dc0b4ccd2c89d0d4012c'
task: [cluster:certificates] kubectl get certificates -A
NAMESPACE   NAME              READY   SECRET            AGE
default     echo-server-tls   True    echo-server-tls   5h44m
default     hajimari-tls      True    hajimari-tls      5h44m
task: [cluster:certificates] kubectl get certificaterequests -A
NAMESPACE   NAME                    APPROVED   DENIED   READY   ISSUER                REQUESTOR                                        AGE
default     echo-server-tls-262xc   True                True    letsencrypt-staging   system:serviceaccount:kube-system:cert-manager   5h44m
default     hajimari-tls-jv8vm      True                True    letsencrypt-staging   system:serviceaccount:kube-system:cert-manager   5h44m
task: [cluster:ingresses] kubectl get ingress -A
NAMESPACE   NAME          CLASS   HOSTS                             ADDRESS         PORTS     AGE
default     echo-server   nginx   echo-server.albatrossflavor.com   192.168.2.152   80, 443   5h44m
default     hajimari      nginx   hajimari.albatrossflavor.com      192.168.2.152   80, 443   5h45m
task: [cluster:pods] kubectl get pods -A
NAMESPACE         NAME                                            READY   STATUS              RESTARTS       AGE
calico-system     calico-kube-controllers-7fd5f8c6d-6f7f9         1/1     Running             1 (138m ago)   5h54m
calico-system     calico-node-fhrgh                               1/1     Running             1 (138m ago)   5h54m
calico-system     calico-node-hxgjq                               1/1     Running             1 (138m ago)   5h54m
calico-system     calico-node-z44zd                               1/1     Running             1 (138m ago)   5h53m
calico-system     calico-typha-888c5f494-97h9d                    1/1     Running             1 (138m ago)   5h43m
calico-system     calico-typha-888c5f494-zxztp                    1/1     Running             1 (138m ago)   5h53m
default           echo-server-c78974d77-5llkp                     1/1     Running             1 (138m ago)   5h44m
default           hajimari-7d6fcd66df-r6h6h                       1/1     Running             1 (138m ago)   5h45m
flux-system       helm-controller-847bc546bf-nc7cs                1/1     Running             1 (138m ago)   4h27m
flux-system       image-automation-controller-f89cbbc96-j8p8b     1/1     Running             1 (138m ago)   4h27m
flux-system       image-reflector-controller-5bdd8fcfd4-tll25     1/1     Running             1 (138m ago)   4h27m
flux-system       kustomize-controller-69f9fc8bb8-b6rrb           1/1     Running             1 (138m ago)   4h27m
flux-system       notification-controller-6f99fcd78d-5q72j        1/1     Running             1 (138m ago)   4h27m
flux-system       source-controller-cb58fb9f6-2vnk5               1/1     Running             1 (138m ago)   4h27m
kube-system       cert-manager-569d98dd76-v7mpd                   1/1     Running             1 (138m ago)   5h45m
kube-system       cert-manager-cainjector-7fb8f94b88-9n6h6        1/1     Running             1 (138m ago)   5h45m
kube-system       cert-manager-webhook-bf449d645-h55cc            1/1     Running             1 (138m ago)   5h45m
kube-system       coredns-b96499967-gvtxb                         1/1     Running             1 (138m ago)   5h54m
kube-system       kube-vip-d4gc7                                  1/1     Running             1 (138m ago)   5h54m
kube-system       kube-vip-g8nm4                                  1/1     Running             2 (138m ago)   5h54m
kube-system       kube-vip-pjdll                                  1/1     Running             1 (138m ago)   5h53m
kube-system       local-path-provisioner-7b7dc8d6f5-8t2rm         1/1     Running             1 (138m ago)   5h54m
kube-system       metrics-server-bfc956699-dtjpr                  1/1     Running             1 (138m ago)   5h45m
kube-system       reflector-87cb57dbf-5kj24                       1/1     Running             1 (138m ago)   5h45m
kube-system       reloader-84fcb9bc48-fdhkf                       1/1     Running             1 (138m ago)   5h44m
networking        external-dns-69db749dd5-xtnq9                   1/1     Running             1 (138m ago)   5h44m
networking        ingress-nginx-controller-58d6b7b498-688pw       1/1     Running             1 (138m ago)   5h44m
networking        ingress-nginx-defaultbackend-85757f9874-zb5h2   1/1     Running             1 (138m ago)   5h44m
networking        k8s-gateway-754c9fcc88-8d8k2                    1/1     Running             1 (138m ago)   5h43m
networking        metallb-controller-6c9749d779-6xscv             1/1     Running             1 (138m ago)   5h44m
networking        metallb-speaker-84v7h                           1/1     Running             1 (138m ago)   5h44m
networking        metallb-speaker-flrhh                           1/1     Running             1 (138m ago)   5h44m
networking        metallb-speaker-vw8t4                           1/1     Running             1 (138m ago)   5h44m
rook-ceph         rook-direct-mount-5c8cb95fb4-ndb49              0/1     ContainerCreating   0              141m
rook-ceph         rook-direct-mount-67456ffb7d-2g8d5              0/1     ContainerCreating   0              141m
system-upgrade    system-upgrade-controller-5cfff78dff-hsw6j      1/1     Running             1 (138m ago)   5h45m
tigera-operator   tigera-operator-75dcb8988f-vtxm7                1/1     Running             2 (138m ago)   5h54m
