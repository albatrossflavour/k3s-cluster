#kubectl get deploy -n default -ojson \
#| sed "s#\"image\"\: \"velero\/velero\:v[0-9]*.[0-9]*.[0-9]\"#\"image\"\: \"velero\/velero\:v1.11.0\"#g" \
#| sed "s#\"server\",#\"server\",\"--uploader-type=$uploader_type\",#g" \
#| sed "s#default-volumes-to-restic#default-volumes-to-fs-backup#g" \
#| sed "s#default-restic-prune-frequency#default-repo-maintain-frequency#g" \
#| sed "s#restic-timeout#fs-backup-timeout#g"
#| kubectl apply -f -




echo $(kubectl get ds -n default restic -ojson) \
| sed "s#\"image\"\: \"velero\/velero\:v[0-9]*.[0-9]*.[0-9]\"#\"image\"\: \"velero\/velero\:v1.11.0\"#g" \
| sed "s#\"name\"\: \"restic\"#\"name\"\: \"node-agent\"#g" \
| sed "s#\[ \"restic\",#\[ \"node-agent\",#g" \
| kubectl apply -f -
kubectl delete ds -n default restic --force --grace-period 0
