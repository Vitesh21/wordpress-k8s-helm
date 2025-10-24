apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: {{ include "wordpress.fullname" . }}
  labels:
    {{- include "wordpress.labels" . | nindent 4 }}
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
    - host: {{ .Values.ingress.host }}
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: {{ include "wordpress.fullname" . }}
                port:
                  number: {{ .Values.service.port }}