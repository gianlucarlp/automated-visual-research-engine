# SRT Documentary Media Mapper V11 — REFINED FAST

V11 melhora relevância e diversidade sem adicionar análise visual pesada.

## Anti-Repetition
URLs já usadas são bloqueadas nas cenas seguintes.

## Context Engine
A IA recebe cena anterior + atual + próxima.

## Query Ladder
Busca específica primeiro. Só amplia se houver poucos resultados.

## Must Have / Avoid
Requisitos e exclusões entram no ranking local sem nova chamada de IA.

## Confidence Score
Cada candidato recebe confiança aproximada 0–100.

## Diversity
Penaliza excesso do mesmo provedor/tipo de mídia em cenas recentes.

## Mantido para velocidade
- Economy Mode
- cache de IA
- cache de busca
- Smart Cut FAST/CENTER/OFF
- FFmpeg invisível e portátil
- 1920x1080 / 16:9
- duração exata do SRT
- output plano para CapCut

## Build
Coloque `ffmpeg.exe` e `ffprobe.exe` em `bin\`.
Execute `build_and_run.bat`.

Saída:
`dist\SRT_Documentary_Media_Mapper_V11_REFINED_FAST.exe`
