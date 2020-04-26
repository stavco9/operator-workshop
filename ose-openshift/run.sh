#!/bin/bash

podman run --rm --name ose-openshift -t -v $HOME/.ssh/id_rsa:/opt/app-root/src/.ssh/id_rsa:Z,ro -v $HOME/.kube/config:/opt/app-root/src/kubeconfig:Z,ro -v $HOME/ose-openshift/inventory:/tmp/inventory:Z,ro -e INVENTORY_FILE=/tmp/inventory -e OPTS="-vvv"  -v $HOME/ose-openshift/:/opt/app-root/ose-ansible/:Z,ro -e PLAYBOOK_FILE=/opt/app-root/ose-ansible/playbook.yaml -e K8S_AUTH_KUBECONFIG=/opt/app-root/src/kubeconfig registry.infra.local:5000/openshift3/ose-ansible
