# OpenCode en GitHub Codespaces — gratis

Una VM aparte, tuya, con OpenCode en la terminal y Gemini gratis. No pagas nada si te quedas en el plan gratis.

## Lo que necesitas antes de empezar

- Tu cuenta de GitHub.
- Una clave gratis de Google AI Studio. No pide tarjeta.
- Este repo: `osielin20046-insano/opencode-codespace`. Antes de subir nada, confirma en tu cuenta de GitHub que lo ves. Si no lo ves, créalo con ese mismo nombre, en Public y vacío, y luego sigue.

## Pasos que haces tú

### 1. Sube los 4 archivos a tu repo

Hazlo en la web de GitHub, un archivo a la vez:

1. Abre tu repo: https://github.com/osielin20046-insano/opencode-codespace
2. Pulsa **Add file** y luego **Create new file**.
3. En el cuadro del nombre escribe la ruta completa del archivo. Por ejemplo, para el primero escribe:
   `.devcontainer/devcontainer.json`
4. Pega el contenido de ese archivo y pulsa **Commit changes**.
5. Repite lo mismo con los otros 3, con estas rutas exactas:
   - `opencode.json`
   - `AGENTS.md`
   - `README.md` (este archivo)

Al final tu repo debe tener esos 4 archivos. No subas ninguna clave.

### 2. Consigue tu clave gratis de Gemini

1. Entra a https://aistudio.google.com/apikey
2. Inicia sesión con tu cuenta de Google.
3. Pulsa **Create API key**.
4. Copia la clave. No la pegues en el chat ni en ningún archivo del repo.

### 3. Guarda la clave como secret de Codespaces

1. En tu repo, pulsa **Settings** (arriba, en el menú del repo).
2. En el menú de la izquierda, pulsa **Secrets and variables** y luego **Codespaces**.
3. Pulsa **New repository secret**.
4. En **Name** escribe exactamente:
   `GOOGLE_GENERATIVE_AI_API_KEY`
5. En **Secret** pega tu clave de Gemini.
6. Pulsa **Add secret**.

La clave llega al Codespace como variable de entorno. Nunca aparece en el repo.

> Si algún día necesitas Browser Use, crea otro secret igual, con el nombre `BROWSER_USE_API_KEY`. Sin ese secret, no actives Browser Use.

### 4. Crea el Codespace

1. Abre tu repo: https://github.com/osielin20046-insano/opencode-codespace
2. Pulsa el botón verde **Code**.
3. Pulsa la pestaña **Codespaces**.
4. Pulsa **Create codespace on main**.
5. Espera a que se abra el editor en el navegador. La primera vez tarda unos minutos: ahí se instala Node y OpenCode solo.

No elijas una máquina más grande que la de 2 núcleos. La gratis es la de 2 núcleos.

### 5. Comprueba que OpenCode está instalado

En la terminal del Codespace (abajo, en el editor), escribe:

```bash
opencode --version
```

Deberías ver un número de versión, por ejemplo `2.x.x`. Si dice que no encuentra el comando, espera un poco a que termine la instalación y vuelve a intentarlo.

Comprueba también que la clave llegó, sin mostrarla:

```bash
test -n "$GOOGLE_GENERATIVE_AI_API_KEY" && echo "clave presente" || echo "clave falta"
```

Deberías ver `clave presente`. Si ves `clave falta`, el secret no llegó: borra el Codespace y crea uno nuevo después del paso 3.

### 6. Prueba que funciona

En la misma terminal, escribe exactamente esto:

```bash
timeout 120 opencode run --model google/gemini-3.5-flash-lite "responde solo: HOLA" < /dev/null
```

Respuesta que deberías ver:

```
HOLA
```

Si tarda, espera: el `timeout 120` le da hasta 2 minutos. Si sale un error de límite de Gemini, espera un minuto y prueba una sola vez más.

### 7. Para usarlo

A partir de aquí, usa OpenCode en la terminal del Codespace:

```bash
opencode
```

O para una tarea en un solo comando:

```bash
opencode run "tu tarea aquí"
```

## Cómo activar Browser Use (solo si lo necesitas)

Browser Use está en `opencode.json`, pero desactivado por defecto. Cada llamada carga sus herramientas y gasta cuota de Gemini.

1. Crea el secret `BROWSER_USE_API_KEY` como en el paso 3.
2. En `opencode.json`, cambia `"disabled": true` por `"disabled": false` en el servidor `browser-use`.
3. Cierra OpenCode y vuelve a abrirlo.

Para volver a desactivarlo, cambia de nuevo a `"disabled": true`.

## Costo cero: qué no hacer

- No elijas una máquina de 4 o más núcleos. La gratis es la de 2 núcleos.
- GitHub Free incluye 120 core-hours al mes de Codespaces. Eso son 60 horas al mes en la máquina de 2 núcleos. Si te pasas, GitHub cobra. Revisa tu uso en GitHub: tu foto de perfil → **Settings** → **Billing** → **Codespaces**.
- Cuando termines, para el Codespace: en github.com, pulsa tu foto de perfil → **Your codespaces** → los tres puntos del Codespace → **Stop codespace**. Si ya no lo vas a usar, ahí mismo pulsa **Delete**.
- No pongas ninguna tarjeta en GitHub ni en Google AI Studio para esto. Si algo te pide pagar, para y avísame antes de seguir.

## Archivos de este repo

- `.devcontainer/devcontainer.json` — instala Node 22 y OpenCode solo al crear el Codespace.
- `opencode.json` — modelo Gemini gratis, con Browser Use desactivado por defecto.
- `AGENTS.md` — reglas cortas para el agente.
- `README.md` — estos pasos.
