{{/*
Base application name
*/}}
{{- define "postgres.name" -}}
postgres
{{- end }}

{{/*
Base application name
*/}}
{{- define "pgres.name" -}}
axion
{{- end }}


{{/*
PostgreSQL Deployment name
*/}}
{{- define "postgres.deploymentName" -}}
{{ .Release.Name }}-{{ include "pgres.name" . }}-{{ include "postgres.name" . }}-deploy
{{- end }}


{{/*
PostgreSQL Service name
*/}}
{{- define "postgres.serviceName" -}}
{{ include "pgres.name" . }}-{{ .Release.Name }}-postgres-svc
{{- end }}


{{/*
PostgreSQL Secret name
*/}}
{{- define "postgres.secretName" -}}
{{ include "pgres.name" . }}-{{ .Release.Name }}-{{ include "postgres.name" . }}-secret
{{- end }}


{{/*
PostgreSQL ConfigMap name
*/}}
{{- define "postgres.configMapName" -}}
{{ include "pgres.name" . }}-{{ .Release.Name }}-{{ include "postgres.name" . }}-configmap
{{- end }}