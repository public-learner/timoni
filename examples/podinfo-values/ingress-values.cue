values: {
	ingress: {
		enabled:   true
		className: "nginx"
		host:      "podinfo.example.com"
		tls:       true
		annotations: "cert-manager.io/cluster-issuer": "letsencrypt"
	}
}
