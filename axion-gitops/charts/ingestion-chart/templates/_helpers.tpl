
{{/*
Base application name
*/}}
{{- define "ingestion.name" -}}
axion-ingestion
{{- end }}


{{/*
Deployment name
*/}}
{{- define "ingestion.deploymentName" -}}
{{ .Release.Name }}-{{ include "ingestion.name" . }}-deploy
{{- end }}

{{/*
HPA name
*/}}
{{- define "ingestion.hpaName" -}}
{{ .Release.Name }}-{{ include "ingestion.name" . }}-hpa
{{- end }}


{{/*
ingress name
*/}}
{{- define "ingestion.ingName" -}}
{{ .Release.Name }}-{{ include "ingestion.name" . }}-ingress
{{- end }}


{{/*
Base application name
*/}}
{{- define "axiontelemetry.name" -}}
axion
{{- end }}


{{/*
Ingestion service name
*/}}
{{- define "ingestion.ServiceName" -}}
{{ include "axiontelemetry.name" . }}-{{ .Release.Name }}-svc
{{- end }}



{{/*
PostgreSQL Service name
*/}}
{{- define "postgres.serviceName" -}}
axion-postgres-db-{{ .Values.environment }}-svc
{{- end }}


{{/*
Database connection string
*/}}
{{- define "ingestion.databaseUrl" -}}
postgresql://{{ .Values.database.postgresUser }}:{{ .Values.database.postgresPassword }}@{{ include "postgres.serviceName" . }}:{{ .Values.database.port }}/{{ .Values.database.postgresDbName }}
{{- end }}

