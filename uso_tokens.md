# Uso de tokens de opencode por sesion

Fuente: base de datos ~/.local/share/opencode/opencode.db. Opencode no guarda las sesiones como archivos JSON sueltos en ~/.local/share/opencode/; las guarda en SQLite: la tabla session_v2 trae los totales por sesion (tokens_input, tokens_output, tokens_reasoning, tokens_cache_read, tokens_cache_write y cost) y la tabla session_message guarda cada mensaje como JSON en el campo data (el texto del usuario en data.text; en los mensajes del asistente, el modelo en data.model.id y data.model.providerID, y los tokens por mensaje en data.tokens.input, data.tokens.output, data.tokens.reasoning y data.tokens.cache).

Fechas y horas en America/Mexico_City (UTC-6). El total de cada fila es entrada + salida. Generado el 2026-11-20 14:02.

| # | Fecha y hora | Modelo | Entrada | Salida | Total | Primer mensaje del usuario |
|---|---|---|---|---|---|---|
| 1 | 2026-11-20 13:10 | opencode/deepseek-v4.1-flash-free | 76679 | 20678 | 97357 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 2 | 2026-11-20 13:42 | opencode/deepseek-v4.1-flash-free | 6659 | 77 | 6736 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 3 | 2026-11-20 13:42 | opencode/deepseek-v4.1-flash-free | 6659 | 71 | 6730 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 4 | 2026-11-20 13:42 | opencode/deepseek-v4.1-flash-free | 6659 | 76 | 6735 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 5 | 2026-11-20 13:42 | opencode/deepseek-v4.1-flash-free | 6383 | 59 | 6442 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 6 | 2026-11-20 13:42 | opencode/deepseek-v4.1-flash-free | 6659 | 72 | 6731 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 7 | 2026-11-20 13:42 | opencode/deepseek-v4.1-flash-free | 6659 | 72 | 6731 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 8 | 2026-11-20 13:43 | opencode/deepseek-v4.1-flash-free | 33802 | 2269 | 36071 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 9 | 2026-11-20 13:43 | opencode/deepseek-v4.1-flash-free | 239 | 58 | 297 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 10 | 2026-11-20 13:43 | opencode/deepseek-v4.1-flash-free | 6383 | 63 | 6446 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 11 | 2026-11-20 13:43 | opencode/deepseek-v4.1-flash-free | 6659 | 72 | 6731 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 12 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 6383 | 59 | 6442 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 13 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 6383 | 59 | 6442 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 14 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 239 | 59 | 298 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 15 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 16 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 17 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 18 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 19 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 20 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 21 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 22 | 2026-11-20 13:44 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 23 | 2026-11-20 13:45 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 24 | 2026-11-20 13:45 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 25 | 2026-11-20 13:45 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 26 | 2026-11-20 13:45 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 27 | 2026-11-20 13:45 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 28 | 2026-11-20 13:45 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 29 | 2026-11-20 13:45 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 30 | 2026-11-20 13:45 | opencode/deepseek-v4.1-flash-free | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 31 | 2026-11-20 13:51 | sin modelo (sin respuesta del asistente) | 0 | 0 | 0 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |
| 32 | 2026-11-20 13:55 | opencode/beam-free | 281121 | 23062 | 304183 | Lee el archivo Prompt_V2.txt de este repositorio y ejecútalo como tu única instrucción. Datos de entrada: FUENTES: DOF. ... |

Totales (32 sesiones): entrada 457566, salida 46806, total 504372, razonamiento 33342, lectura de cache 5345280, escritura de cache 0, coste registrado 0.0.

Notas: 15 sesiones registran tokens y 17 registran 0 tokens de entrada y 0 de salida. La suma de los tokens de los mensajes del asistente en session_message es 455157 de entrada y 46683 de salida; la diferencia con los totales de session_v2 (457566 / 46806) se debe a que opencode agrega en la sesion tokens que no aparecen como mensajes de asistente individuales. Al generar este archivo habia una sesion activa, por lo que los totales pueden seguir creciendo despues de esta foto.
