# nginx-unprivileged: läuft als uid 101 (nicht-root), listened auf 8080.
# Pod-Security restricted-enforce-fähig — keine root-caps, keine privileged-
# escalation. Image ~22MB (vs busybox ~5MB) — vertretbar für root-loslosen
# Pod.
#
# Default-config in /etc/nginx/conf.d/default.conf serviert /usr/share/nginx/html
# auf port 8080 mit gzip + index.html-fallback.
FROM nginxinc/nginx-unprivileged:1.27-alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8080
