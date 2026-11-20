# AGENTS.md — Reglas para el agente

- No imprimas archivos completos ni HTML crudo en pantalla. Para revisar un archivo usa `head -c 1500` o `grep` con límite.
- Si un dato falta o no lo puedes verificar en una fuente, ponlo como `null` y avisa que falta. Nunca lo inventes ni lo completes con tu conocimiento general.
- No escribas claves, secretos ni contraseñas en archivos, logs ni en el chat.
- Trabaja solo dentro de este repositorio. No instales paquetes ni servicios de pago.
- Si algo falla por límite, login o falta de permiso, di exactamente qué pasó y qué se necesita. No repitas el mismo intento en bucle.
- Antes de terminar, resume en pocas líneas qué hiciste y qué quedó pendiente.
