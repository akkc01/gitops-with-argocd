{{/*
Base application name
*/}}
{{- define "simulator.name" -}}
simulator
{{- end }}

{{/*
Base application name
*/}}
{{- define "axionsml.name" -}}
axion
{{- end }}

{{/*
Deployment name
*/}}
{{- define "simulator.deploymentName" -}}
{{ .Release.Name }}-{{ include "simulator.name" . }}-deploy
{{- end }}


{{/*
Ingestion service name
*/}}
{{- define "axion.ingestionServiceName" -}}
{{ include "axionsml.name" . }}-{{ .Release.Name }}-ingestion-svc
{{- end }}


{{/*
Ingestion API URL
*/}}
{{- define "simulator.ingestionApiUrl" -}}
http://{{ include "axion.ingestionServiceName" . }}:80/api/v1/telemetry/ingest
{{- end }}


