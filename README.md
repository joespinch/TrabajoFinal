# Trabajo Final — Azure Databricks + Pokémon

Un proyecto de **analítica e ingeniería de datos en Azure Databricks** usando el universo Pokémon como caso de uso. La idea es simple: tomar datos (tipos, estadísticas, evolución, habilidades, etc.), **procesarlos a escala** y convertirlos en información lista para exploración y visualización.

> Dedicado con mucho cariño a mis **tres hijos**: con ustedes nos hemos reído, sorprendido y aprendido jugando desde que eran niños. Este trabajo también es un recuerdo de esas aventuras.

---

## Objetivo
Construir un flujo de datos completo (end-to-end) en Databricks, desde la ingesta hasta el análisis:

- **Ingesta** de datos Pokémon (fuentes externas/archivos).
- **Limpieza y transformación** con notebooks.
- **Modelado analítico** para consultas.
- **Visualización / dashboard** para extraer conclusiones.

---

## Arquitectura (conceptual)
Este repositorio representa un enfoque típico en Databricks (medallion architecture):

- **Bronze (Raw)**: datos tal como llegan.
- **Silver (Refined)**: datos limpios, normalizados y enriquecidos.
- **Gold (Serving)**: tablas/modelos listos para consumo (KPIs, agregaciones, features).

---

## Preguntas que se pueden responder
Algunas ideas de análisis que este caso de uso habilita:

- ¿Qué **tipos** son más frecuentes y cómo se combinan?
- ¿Cómo varían los **stats** (HP, ataque, defensa, velocidad) por tipo o generación?
- ¿Qué Pokémon destacan como “equilibrados” vs. “especialistas”?
- ¿Cómo cambia el poder a través de **evoluciones**?

---

## Contenido del repositorio (guía rápida)
Según la estructura del repo, encontrarás materiales como:

- `dashboard/` — recursos de visualización y/o evidencias.
- `certificaciones/` — documentos/capturas relacionadas.
- Notebooks/artefactos del proyecto para ejecutar el pipeline.

---

## Cómo ejecutar (resumen)
1. Importa este repositorio o los notebooks en tu **workspace de Azure Databricks**.
2. Configura el acceso a la(s) fuente(s) de datos.
3. Ejecuta el flujo en orden (ingesta → transformación → modelo → dashboard).

---

## Notas finales
Este proyecto mezcla dos cosas que me entusiasman:

- La potencia de **Databricks** para trabajar con datos reales.
- La nostalgia de Pokémon, que en casa siempre fue excusa para compartir tiempo y diversión.

Si estás revisando este trabajo: gracias por pasarte por aquí.
