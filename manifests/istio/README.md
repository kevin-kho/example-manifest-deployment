Istio is managed by four charts:
  - base
  - cni
  - istiod
  - gateways

They must be installed in that order.
When you bump Istio Version, the resources must be rollout restarted in order to get the new proxy version


Instructions:
1. Update `values.yaml` of each chart
2. Update `generate.sh` with the Istio version you want
3. Execute `generate.sh`; this will run `helm template` for all four charts and write to a `generated.yaml` file. `manifest-seperator` will run and separate the manifest into individual resources and place them in subdirectory `out`
4. Sync the Istio workload via ArgoCD, or through any CICD workflow
5. Once Istio workloads are up to date, non-Istio workloads must be restarted to get the updated sidecar proxy version.
