apiVersion: v1
kind: Pod
metadata:
  annotations:
    cni.projectcalico.org/containerID: 9e5673f64be7b04e77cdf9f14ae37106335b9806dc31d78f33f5ffdc4dca101e
    cni.projectcalico.org/podIP: 10.42.38.99/32
    cni.projectcalico.org/podIPs: 10.42.38.99/32
  creationTimestamp: "2023-06-09T01:37:06Z"
  generateName: restic-
  labels:
    app.kubernetes.io/instance: velero
    app.kubernetes.io/managed-by: Helm
    app.kubernetes.io/name: velero
    controller-revision-hash: 7c5fb9c7bb
    helm.sh/chart: velero-2.32.6
    name: restic
    pod-template-generation: "1"
  name: restic-sqwcs
  namespace: default
  ownerReferences:
  - apiVersion: apps/v1
    blockOwnerDeletion: true
    controller: true
    kind: DaemonSet
    name: restic
    uid: d01a2720-848d-48ca-8604-00a6b3b5acdf
  resourceVersion: "168446238"
  uid: 717bc672-c4ef-4b9e-9412-672fcfe6f65b
spec:
  affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
        nodeSelectorTerms:
        - matchFields:
          - key: metadata.name
            operator: In
            values:
            - k8s-4
  containers:
  - args:
    - restic
    - server
    command:
    - /velero
    env:
    - name: VELERO_NAMESPACE
      valueFrom:
        fieldRef:
          apiVersion: v1
          fieldPath: metadata.namespace
    - name: NODE_NAME
      valueFrom:
        fieldRef:
          apiVersion: v1
          fieldPath: spec.nodeName
    - name: VELERO_SCRATCH_DIR
      value: /scratch
    - name: AWS_SHARED_CREDENTIALS_FILE
      value: /credentials/cloud
    image: velero/velero:v1.9.3
    imagePullPolicy: IfNotPresent
    name: restic
    resources:
      limits:
        memory: 3000Mi
      requests:
        cpu: 15m
        memory: 200Mi
    securityContext:
      privileged: false
    terminationMessagePath: /dev/termination-log
    terminationMessagePolicy: File
    volumeMounts:
    - mountPath: /credentials
      name: cloud-credentials
    - mountPath: /host_pods
      mountPropagation: HostToContainer
      name: host-pods
    - mountPath: /scratch
      name: scratch
    - mountPath: /var/run/secrets/kubernetes.io/serviceaccount
      name: kube-api-access-cjh6z
      readOnly: true
  dnsPolicy: ClusterFirst
  enableServiceLinks: true
  nodeName: k8s-4
  preemptionPolicy: PreemptLowerPriority
  priority: 0
  restartPolicy: Always
  schedulerName: default-scheduler
  securityContext:
    runAsUser: 0
  serviceAccount: velero-server
  serviceAccountName: velero-server
  terminationGracePeriodSeconds: 3600
  tolerations:
  - key: node-role.kubernetes.io/master
    operator: Exists
  - effect: NoExecute
    key: node.kubernetes.io/not-ready
    operator: Exists
  - effect: NoExecute
    key: node.kubernetes.io/unreachable
    operator: Exists
  - effect: NoSchedule
    key: node.kubernetes.io/disk-pressure
    operator: Exists
  - effect: NoSchedule
    key: node.kubernetes.io/memory-pressure
    operator: Exists
  - effect: NoSchedule
    key: node.kubernetes.io/pid-pressure
    operator: Exists
  - effect: NoSchedule
    key: node.kubernetes.io/unschedulable
    operator: Exists
  volumes:
  - name: cloud-credentials
    secret:
      defaultMode: 420
      secretName: velero-helm-values
  - hostPath:
      path: /var/lib/kubelet/pods
      type: ""
    name: host-pods
  - emptyDir: {}
    name: scratch
  - name: kube-api-access-cjh6z
    projected:
      defaultMode: 420
      sources:
      - serviceAccountToken:
          expirationSeconds: 3607
          path: token
      - configMap:
          items:
          - key: ca.crt
            path: ca.crt
          name: kube-root-ca.crt
      - downwardAPI:
          items:
          - fieldRef:
              apiVersion: v1
              fieldPath: metadata.namespace
            path: namespace
status:
  conditions:
  - lastProbeTime: null
    lastTransitionTime: "2023-06-09T01:37:06Z"
    status: "True"
    type: Initialized
  - lastProbeTime: null
    lastTransitionTime: "2023-06-26T04:56:58Z"
    status: "True"
    type: Ready
  - lastProbeTime: null
    lastTransitionTime: "2023-06-26T04:56:58Z"
    status: "True"
    type: ContainersReady
  - lastProbeTime: null
    lastTransitionTime: "2023-06-09T01:37:06Z"
    status: "True"
    type: PodScheduled
  containerStatuses:
  - containerID: containerd://6c0472c3c708adfebae85ed424fdf664b7feb7a8861f60391c45ca779c88f814
    image: docker.io/velero/velero:v1.9.3
    imageID: docker.io/velero/velero@sha256:08a6f44b61ae24556abdb599370bfd4a6628bb1b448c11b7645a88f82a54197b
    lastState:
      terminated:
        containerID: containerd://80669ecb8285dfa2010752b4935b2a336914a134dc2f69cf9746de82bab6f633
        exitCode: 255
        finishedAt: "2023-06-26T04:56:49Z"
        reason: Unknown
        startedAt: "2023-06-17T03:18:03Z"
    name: restic
    ready: true
    restartCount: 2
    started: true
    state:
      running:
        startedAt: "2023-06-26T04:56:58Z"
  hostIP: 192.168.2.54
  phase: Running
  podIP: 10.42.38.99
  podIPs:
  - ip: 10.42.38.99
  qosClass: Burstable
  startTime: "2023-06-09T01:37:06Z"
