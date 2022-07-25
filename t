task: [cluster:nodes] kubectl get nodes -o wide
NAME    STATUS     ROLES                       AGE     VERSION        INTERNAL-IP    EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION      CONTAINER-RUNTIME
k8s-0   Ready      control-plane,etcd,master   3d21h   v1.24.3+k3s1   192.168.2.50   <none>        Ubuntu 22.04 LTS     5.15.0-41-generic   containerd://1.6.6-k3s1
k8s-1   Ready      control-plane,etcd,master   3d21h   v1.24.3+k3s1   192.168.2.51   <none>        Ubuntu 22.04 LTS     5.15.0-41-generic   containerd://1.6.6-k3s1
k8s-2   NotReady   control-plane,etcd,master   3d21h   v1.24.3+k3s1   192.168.2.52   <none>        Ubuntu 20.04.4 LTS   5.4.0-122-generic   containerd://1.6.6-k3s1
task: [cluster:kustomizations] kubectl get kustomizations -A
NAMESPACE     NAME                AGE     READY   STATUS
flux-system   apps                3d21h   True    Applied revision: main/c45837b5720973a2d24ed12b62db144ab448f498
flux-system   charts              3d21h   True    Applied revision: main/c45837b5720973a2d24ed12b62db144ab448f498
flux-system   config              3d21h   True    Applied revision: main/c45837b5720973a2d24ed12b62db144ab448f498
flux-system   core                3d21h   True    Applied revision: main/c45837b5720973a2d24ed12b62db144ab448f498
flux-system   crds                3d21h   True    Applied revision: main/c45837b5720973a2d24ed12b62db144ab448f498
flux-system   crds-rook-ceph      3d18h   True    Applied revision: v1.9.7/721ddf3cd73a6d00e294dc0b4ccd2c89d0d4012c
flux-system   flux-cluster        3d21h   True    Applied revision: main/c45837b5720973a2d24ed12b62db144ab448f498
flux-system   flux-installation   3d21h   True    Applied revision: v0.31.3/547e39d24c54235ee2ad8bbec75c5f47c4b82221
task: [cluster:helmreleases] kubectl get helmreleases -A
NAMESPACE     NAME                 AGE     READY   STATUS
default       echo-server          3d21h   True    Release reconciliation succeeded
default       hajimari             3d21h   True    Release reconciliation succeeded
kube-system   cert-manager         3d21h   True    Release reconciliation succeeded
kube-system   metrics-server       3d21h   True    Release reconciliation succeeded
kube-system   reflector            3d21h   True    Release reconciliation succeeded
kube-system   reloader             3d21h   True    Release reconciliation succeeded
networking    external-dns         3d21h   True    Release reconciliation succeeded
networking    ingress-nginx        3d21h   True    Release reconciliation succeeded
networking    k8s-gateway          3d21h   True    Release reconciliation succeeded
networking    metallb              3d21h   True    Release reconciliation succeeded
networking    pihole               37m     False   Helm install failed: timed out waiting for the condition
rook-ceph     rook-ceph-cluster    3d15h   True    Release reconciliation succeeded
rook-ceph     rook-ceph-operator   3d18h   True    Release reconciliation succeeded
task: [cluster:helmrepositories] kubectl get helmrepositories -A
NAMESPACE     NAME               URL                                                AGE     READY   STATUS
flux-system   bitnami            https://charts.bitnami.com/bitnami                 3d21h   True    stored artifact for revision '209524580643618b1036eb7bb5b6c43188b2ff0edee61fa040760b72fdf67d67'
flux-system   emberstack         https://emberstack.github.io/helm-charts/          3d21h   True    stored artifact for revision 'a114c924b5578774a8bbbdc14fb6b1fdb5232b557504f29f110128093913120a'
flux-system   external-dns       https://kubernetes-sigs.github.io/external-dns     3d21h   True    stored artifact for revision '1091f09bd3d48d0f28e7cf1bc691f14b6cf23c57d53ee0f94a17620fe66a4c96'
flux-system   hajimari           https://hajimari.io                                3d21h   True    stored artifact for revision '7f5006d4671574a14b1ac37e1fc0ac4648a0e1d6e1c9eae5d0ee689293a49dae'
flux-system   ingress-nginx      https://kubernetes.github.io/ingress-nginx         3d21h   True    stored artifact for revision '190c7c6dccc5f2b6aedeb4e97b83f08bd35175256f1bc2909b180ce78b01635e'
flux-system   jetstack           https://charts.jetstack.io/                        3d21h   True    stored artifact for revision '1cd565674af11a5cb06e622945bb8b56cfa7512f35c605667d3f8ba182015f4c'
flux-system   k8s-at-home        https://k8s-at-home.com/charts/                    3d21h   True    stored artifact for revision 'dd1a276ecab2f1c57195eed00c2ce8b7bc4e0c8c90118331eb907c93ef171037'
flux-system   k8s-gateway        https://ori-edge.github.io/k8s_gateway/            3d21h   True    stored artifact for revision '63e252e7e4bf3d9a33ec3645cf24465643710c73073113bfb1a731482729dfa2'
flux-system   metallb            https://metallb.github.io/metallb                  3d21h   True    stored artifact for revision 'db98750c5e5338966b1f54a2867765a362551dd532636ffcb3a29a16dfee16aa'
flux-system   metrics-server     https://kubernetes-sigs.github.io/metrics-server   3d21h   True    stored artifact for revision '0ec994eb79350bd42668f31c26d9ca1605a892a9b1e3d9b9286218c0ce4ea541'
flux-system   mojo2600           https://mojo2600.github.io/pihole-kubernetes       52m     True    stored artifact for revision 'cbb86e6b8f9cb0989f47a08f2239261bb5e1f8e60ee3558c93f8d5d196ac7a93'
flux-system   rook-ceph          https://charts.rook.io/release                     3d13h   True    stored artifact for revision 'aa1e12b2c1ce636606b49345ecef553df4d119948afd156e83f48f6ea338d72b'
flux-system   rook-ceph-charts   https://charts.rook.io/release                     3d15h   True    stored artifact for revision 'aa1e12b2c1ce636606b49345ecef553df4d119948afd156e83f48f6ea338d72b'
flux-system   stakater           https://stakater.github.io/stakater-charts         3d21h   True    stored artifact for revision 'd8de75104f939506d6a8130dc3b02989a688fe2cfb29f75e570382d466177ba1'
flux-system   weaveworks-kured   https://weaveworks.github.io/kured                 3d21h   True    stored artifact for revision '5290ca77bc0fb9861a1b1298ef06956ed604f24a3130a813f792e2505cd2436a'
task: [cluster:gitrepositories] kubectl get gitrepositories -A
NAMESPACE     NAME                URL                                                 AGE     READY   STATUS
flux-system   flux-cluster        ssh://git@github.com/albatrossflavour/k3s-cluster   3d21h   True    stored artifact for revision 'main/c45837b5720973a2d24ed12b62db144ab448f498'
flux-system   flux-installation   https://github.com/fluxcd/flux2                     3d21h   True    stored artifact for revision 'v0.31.3/547e39d24c54235ee2ad8bbec75c5f47c4b82221'
flux-system   rook-ceph-source    https://github.com/rook/rook.git                    3d18h   True    stored artifact for revision 'v1.9.7/721ddf3cd73a6d00e294dc0b4ccd2c89d0d4012c'
task: [cluster:certificates] kubectl get certificates -A
NAMESPACE    NAME                             READY   SECRET                           AGE
default      echo-server-tls                  True    echo-server-tls                  3d21h
default      hajimari-tls                     True    hajimari-tls                     3d21h
networking   pihole-tls                       True    pihole-tls                       11m
rook-ceph    rook-admission-controller-cert   True    rook-ceph-admission-controller   3d15h
rook-ceph    root-dashboard-tls               True    root-dashboard-tls               2d22h
task: [cluster:certificates] kubectl get certificaterequests -A
NAMESPACE   NAME                                   APPROVED   DENIED   READY   ISSUER                REQUESTOR                                        AGE
default     echo-server-tls-262xc                  True                True    letsencrypt-staging   system:serviceaccount:kube-system:cert-manager   3d21h
default     hajimari-tls-jv8vm                     True                True    letsencrypt-staging   system:serviceaccount:kube-system:cert-manager   3d21h
rook-ceph   rook-admission-controller-cert-6ld76   True                True    selfsigned-issuer     system:serviceaccount:kube-system:cert-manager   3d15h
rook-ceph   root-dashboard-tls-g5ltl               True                True    letsencrypt-staging   system:serviceaccount:kube-system:cert-manager   2d22h
task: [cluster:ingresses] kubectl get ingress -A
NAMESPACE    NAME                  CLASS   HOSTS                             ADDRESS         PORTS     AGE
default      echo-server           nginx   echo-server.albatrossflavor.com   192.168.2.152   80, 443   3d21h
default      hajimari              nginx   hajimari.albatrossflavor.com      192.168.2.152   80, 443   3d21h
networking   pihole                nginx   pihole.albatrossflavor.com        192.168.2.152   80, 443   11m
rook-ceph    rook-ceph-dashboard   nginx   rook.albatrossflavor.com          192.168.2.152   80, 443   3d14h
task: [cluster:pods] kubectl get pods -A
NAMESPACE         NAME                                                READY   STATUS        RESTARTS        AGE
calico-system     calico-kube-controllers-7fd5f8c6d-6f7f9             1/1     Running       2 (3d15h ago)   3d21h
calico-system     calico-node-fhrgh                                   1/1     Running       1 (3d17h ago)   3d21h
calico-system     calico-node-hxgjq                                   1/1     Running       2 (3d15h ago)   3d21h
calico-system     calico-node-z44zd                                   1/1     Running       2 (3d15h ago)   3d21h
calico-system     calico-typha-888c5f494-97h9d                        1/1     Running       2 (3d15h ago)   3d21h
calico-system     calico-typha-888c5f494-zxztp                        1/1     Running       2 (3d15h ago)   3d21h
default           echo-server-c78974d77-qttbx                         1/1     Running       0               3d14h
default           hajimari-7d6fcd66df-r6h6h                           1/1     Terminating   1 (3d17h ago)   3d21h
default           hajimari-7d6fcd66df-xmtj5                           0/1     Pending       0               2d
flux-system       helm-controller-847bc546bf-nc7cs                    1/1     Running       2 (3d15h ago)   3d20h
flux-system       image-automation-controller-f89cbbc96-j8p8b         1/1     Running       2 (3d15h ago)   3d20h
flux-system       image-reflector-controller-5bdd8fcfd4-tll25         1/1     Running       2 (3d15h ago)   3d20h
flux-system       kustomize-controller-69f9fc8bb8-b6rrb               1/1     Running       3 (2d ago)      3d20h
flux-system       notification-controller-6f99fcd78d-lgvmd            1/1     Running       1 (2d ago)      3d14h
flux-system       source-controller-cb58fb9f6-2vnk5                   1/1     Running       3 (2d ago)      3d20h
kube-system       cert-manager-569d98dd76-v7mpd                       1/1     Running       2 (3d15h ago)   3d21h
kube-system       cert-manager-cainjector-7fb8f94b88-9n6h6            1/1     Running       2 (3d15h ago)   3d21h
kube-system       cert-manager-webhook-bf449d645-h55cc                1/1     Running       2 (3d15h ago)   3d21h
kube-system       coredns-b96499967-gvtxb                             1/1     Running       2 (3d15h ago)   3d21h
kube-system       kube-vip-d4gc7                                      1/1     Running       1 (3d17h ago)   3d21h
kube-system       kube-vip-g8nm4                                      1/1     Running       3 (3d15h ago)   3d21h
kube-system       kube-vip-pjdll                                      1/1     Running       2 (3d15h ago)   3d21h
kube-system       local-path-provisioner-7b7dc8d6f5-8t2rm             1/1     Running       2 (3d15h ago)   3d21h
kube-system       metrics-server-bfc956699-dtjpr                      1/1     Running       2 (3d15h ago)   3d21h
kube-system       reflector-87cb57dbf-5kj24                           1/1     Running       2 (3d15h ago)   3d21h
kube-system       reloader-84fcb9bc48-fdhkf                           1/1     Terminating   1 (3d17h ago)   3d21h
kube-system       reloader-84fcb9bc48-tvppl                           1/1     Running       0               2d
networking        external-dns-69db749dd5-8cfkg                       1/1     Running       0               3d14h
networking        ingress-nginx-controller-58d6b7b498-688pw           1/1     Terminating   1 (3d17h ago)   3d21h
networking        ingress-nginx-controller-58d6b7b498-rtjhf           1/1     Running       0               2d
networking        ingress-nginx-defaultbackend-85757f9874-zb5h2       1/1     Running       2 (3d15h ago)   3d21h
networking        k8s-gateway-754c9fcc88-8d8k2                        1/1     Running       2 (3d15h ago)   3d21h
networking        metallb-controller-6c9749d779-k8rcb                 1/1     Running       0               2d
networking        metallb-speaker-84v7h                               1/1     Running       2 (3d15h ago)   3d21h
networking        metallb-speaker-flrhh                               1/1     Running       2 (3d15h ago)   3d21h
networking        metallb-speaker-vw8t4                               1/1     Running       1 (3d17h ago)   3d21h
networking        pihole-5d4d4ffbdf-68fxc                             2/2     Running       0               11m
rook-ceph         csi-cephfsplugin-gn9t6                              3/3     Running       0               3d14h
rook-ceph         csi-cephfsplugin-jh8wj                              3/3     Running       0               3d14h
rook-ceph         csi-cephfsplugin-kqzxq                              3/3     Running       0               3d14h
rook-ceph         csi-cephfsplugin-provisioner-9f99c9bc7-86gh6        6/6     Running       1 (2d ago)      3d14h
rook-ceph         csi-cephfsplugin-provisioner-9f99c9bc7-c2vdn        0/6     Pending       0               2d
rook-ceph         csi-rbdplugin-2pfqf                                 3/3     Running       0               3d14h
rook-ceph         csi-rbdplugin-89bxh                                 3/3     Running       0               3d14h
rook-ceph         csi-rbdplugin-l87pr                                 3/3     Running       0               3d14h
rook-ceph         csi-rbdplugin-provisioner-7b74d5d597-8n98z          6/6     Running       0               3d14h
rook-ceph         csi-rbdplugin-provisioner-7b74d5d597-tmkjz          0/6     Pending       0               3d14h
rook-ceph         rook-ceph-crashcollector-k8s-0-64755476f6-2dplc     1/1     Running       0               3d14h
rook-ceph         rook-ceph-crashcollector-k8s-1-65449b5df9-nxw7g     1/1     Running       0               3d14h
rook-ceph         rook-ceph-mds-ceph-filesystem-a-59797b7bb8-26rjh    1/1     Running       0               3d14h
rook-ceph         rook-ceph-mds-ceph-filesystem-b-7cc8b5bcc6-sfq7l    0/1     Pending       0               3d14h
rook-ceph         rook-ceph-mgr-a-689c4dd469-6jjnm                    2/2     Running       0               3d14h
rook-ceph         rook-ceph-mgr-b-585d68fc6f-2nbz5                    2/2     Running       0               2d
rook-ceph         rook-ceph-mon-a-6d6d56587c-f88wd                    1/1     Running       0               3d14h
rook-ceph         rook-ceph-mon-b-86bc5b5994-l4828                    1/1     Running       0               3d14h
rook-ceph         rook-ceph-mon-c-fffb759f-s9sjf                      0/1     Pending       0               2m52s
rook-ceph         rook-ceph-operator-6594c88d99-p6bh4                 1/1     Running       0               3d14h
rook-ceph         rook-ceph-osd-0-f658c777c-625zw                     1/1     Running       0               3d14h
rook-ceph         rook-ceph-osd-1-6f57cbcd6b-755qg                    1/1     Running       0               3d14h
rook-ceph         rook-ceph-osd-2-5fcb585f5d-v858d                    0/1     Pending       0               2d
rook-ceph         rook-ceph-osd-prepare-k8s-0-x8mb5                   0/1     Completed     0               2d
rook-ceph         rook-ceph-osd-prepare-k8s-1-2rf2p                   0/1     Completed     0               2d
rook-ceph         rook-ceph-rgw-ceph-objectstore-a-57df6d96c6-75wnp   1/1     Running       0               3d14h
rook-ceph         rook-direct-mount-5c8cb95fb4-ndb49                  1/1     Running       0               3d17h
system-upgrade    system-upgrade-controller-5cfff78dff-hsw6j          1/1     Terminating   1 (3d17h ago)   3d21h
system-upgrade    system-upgrade-controller-5cfff78dff-qvh4f          1/1     Running       0               2d
tigera-operator   tigera-operator-75dcb8988f-vtxm7                    1/1     Running       3 (3d15h ago)   3d21h
