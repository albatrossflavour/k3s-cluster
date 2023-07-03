apiVersion: v1
kind: Pod
metadata:
  annotations:
    cni.projectcalico.org/containerID: 48502c742df05c6ec28985d7e72d11c3160589bfc843114137b73c8d5b64c12d
    cni.projectcalico.org/podIP: 10.42.231.196/32
    cni.projectcalico.org/podIPs: 10.42.231.196/32
  creationTimestamp: "2023-07-03T10:14:46Z"
  generateName: restic-
  labels:
    app.kubernetes.io/instance: velero
    app.kubernetes.io/managed-by: Helm
    app.kubernetes.io/name: velero
    controller-revision-hash: 68457cf9cd
    helm.sh/chart: velero-2.32.6
    name: restic
    pod-template-generation: "2"
  name: restic-gjl6z
  namespace: default
  ownerReferences:
  - apiVersion: apps/v1
    blockOwnerDeletion: true
    controller: true
    kind: DaemonSet
    name: restic
    uid: d01a2720-848d-48ca-8604-00a6b3b5acdf
  resourceVersion: "172497763"
  uid: b0de4b43-29c2-4339-b2d1-b4c662ae5c23
spec:
  affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
        nodeSelectorTerms:
        - matchFields:
          - key: metadata.name
            operator: In
            values:
            - k8s-1
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
    image: velero/velero:v1.11.0
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
      name: kube-api-access-tsdk6
      readOnly: true
  dnsPolicy: ClusterFirst
  enableServiceLinks: true
  nodeName: k8s-1
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
  - name: kube-api-access-tsdk6
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
    lastTransitionTime: "2023-07-03T10:14:46Z"
    status: "True"
    type: Initialized
  - lastProbeTime: null
    lastTransitionTime: "2023-07-03T10:14:46Z"
    message: 'containers with unready status: [restic]'
    reason: ContainersNotReady
    status: "False"
    type: Ready
  - lastProbeTime: null
    lastTransitionTime: "2023-07-03T10:14:46Z"
    message: 'containers with unready status: [restic]'
    reason: ContainersNotReady
    status: "False"
    type: ContainersReady
  - lastProbeTime: null
    lastTransitionTime: "2023-07-03T10:14:46Z"
    status: "True"
    type: PodScheduled
  containerStatuses:
  - containerID: containerd://671d48975bccc8bd643943e96fc3c3c1f64d665930d1e9e013d3faabe7088ef1
    image: docker.io/velero/velero:v1.11.0
    imageID: docker.io/velero/velero@sha256:80fc407e950931bf594d97aee2f4de3b1f41e596fba0af590e1530347554ec1c
    lastState:
      terminated:
        containerID: containerd://671d48975bccc8bd643943e96fc3c3c1f64d665930d1e9e013d3faabe7088ef1
        exitCode: 1
        finishedAt: "2023-07-03T10:40:45Z"
        reason: Error
        startedAt: "2023-07-03T10:40:45Z"
    name: restic
    ready: false
    restartCount: 10
    started: false
    state:
      waiting:
        message: back-off 5m0s restarting failed container=restic pod=restic-gjl6z_default(b0de4b43-29c2-4339-b2d1-b4c662ae5c23)
        reason: CrashLoopBackOff
  hostIP: 192.168.2.51
  phase: Running
  podIP: 10.42.231.196
  podIPs:
  - ip: 10.42.231.196
  qosClass: Burstable
  startTime: "2023-07-03T10:14:46Z"
