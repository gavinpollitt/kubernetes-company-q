#delete the secret from the client namespace
kubectl delete secret gavq -n client > /dev/null
kubectl delete secret gavq -n kube-system > /dev/null
export KEY_FILE=../../ingress/queue.key
export CERT_FILE=../../ingress/queue.cert
export HOST=gav-wsl2.poll.com
export CERT_NAME=gavq
kubectl create secret tls ${CERT_NAME} --key ${KEY_FILE} --cert ${CERT_FILE} -n kube-system
