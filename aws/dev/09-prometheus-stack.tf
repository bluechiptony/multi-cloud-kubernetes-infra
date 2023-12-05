resource "helm_release" "prometheus" {
  name       = "prometheus"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  version    = "4.5.2"  # Specify the desired chart version

  namespace  = "kube-prometheus-stack"
  create_namespace = true

  depends_on = [
    module.eks
  ]

  
  values = [
    # Add any custom values here if needed
  ]
}