{{/*
Base application name
*/}}
{{- define "telemetry.name" -}}
axion
{{- end }}

{{/*
Base application name
*/}}
{{- define "axion.telemetryName" -}}
telemetry
{{- end }}



{{/*
Deployment name
*/}}
{{- define "telemetry.deploymentName" -}}
{{ .Release.Name }}-{{ include "telemetry.name" . }}-deployment
{{- end }}


{{/*
HPA name
*/}}
{{- define "telemetry.hpaName" -}}
{{ .Release.Name }}-{{ include "telemetry.name" . }}-hpa
{{- end }}


{{/*
Service name
*/}}
{{- define "telemetry.serviceName" -}}
{{ include "telemetry.name" . }}-{{ .Release.Name }}-{{ include "axion.telemetryName" . }}-svc
{{- end }}


{{/*
Ingress name
*/}}
{{- define "telemetry.ingName" -}}
{{ .Release.Name }}-{{ include "telemetry.name" . }}-ingress
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
{{- define "telemetry.databaseUrl" -}}
postgresql://{{ .Values.database.postgresUser }}:{{ .Values.database.postgresPassword }}@{{ include "postgres.serviceName" . }}:{{ .Values.database.port }}/{{ .Values.database.postgresDbName }}
{{- end }}