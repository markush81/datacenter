# Kubernetes

Pls. make sure you have `kind` and `kubectl` installed upfront.

References:

- [Kind Documentation](https://kind.sigs.k8s.io)
- [Kind Ingress NGINX](https://kind.sigs.k8s.io/docs/user/ingress/#ingress-nginx)

## Connections

```bash
kubectl --context kind-datacenter-k8s
```

Ingress

- [http](http://localhost)
- [https](https://localhost) :warning: you have to accept the Selfsigned CA.