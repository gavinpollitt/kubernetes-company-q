#delete the secret from the client namespace
export KEY_FILE=./queue.key
export CERT_FILE=./queue.cert
export HOST=gav-wsl2.poll.com
export CERT_NAME=gavq
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ${KEY_FILE} -out ${CERT_FILE} -subj "/CN=${HOST}/O=${HOST}"
kubectl create secret tls ${CERT_NAME} --key ${KEY_FILE} --cert ${CERT_FILE} -n kube-system
