# Sistema de automatización de turnos laborales con IA

Sistema de automatización que procesa turnos laborales enviados por WhatsApp, aplica reglas de negocio (festivos y domingos), calcula el valor del turno y sincroniza la información en una base estructurada.

## Problema

La información de turnos laborales se recibe por WhatsApp en mensajes no estructurados, lo que dificulta llevar un control claro de fechas, valores y pagos acumulados. Los errores manuales generan confusión y pérdida de tiempo al momento de calcular el total de una quincena.

## Solución

Se diseñó un flujo automatizado que recibe mensajes reenviados a un bot de WhatsApp, interpreta su contenido mediante inteligencia artificial, valida si corresponden a un turno laboral y extrae la información relevante. El sistema aplica reglas de negocio para calcular el valor del turno y mantiene la información sincronizada en una base estructurada.

## Arquitectura

1. El mensaje del turno es reenviado al bot de WhatsApp.
2. El mensaje es procesado por n8n.
3. Un agente de IA interpreta el contenido y extrae los datos.
4. Se validan reglas de negocio (festivos y domingos).
5. La información se guarda o actualiza en una tabla estructurada.
6. Ediciones o eliminaciones del mensaje se reflejan automáticamente.

## Flujo de automatización

El flujo de n8n centraliza la lógica del sistema, gestionando la interpretación de mensajes, aplicación de reglas y sincronización de datos.

![Flujo en n8n](docs/flow.png)

## Tecnologías

- n8n
- JavaScript
- IA (Mistral API)
- WhatsApp Bot
- Notion API

## Limitaciones

- La integración con WhatsApp depende de un bot y del reenvío manual del mensaje.
- El sistema no está desplegado como producto comercial.
- El flujo está diseñado para un volumen moderado de mensajes.

## Estado del proyecto

El sistema es funcional y ha sido validado en un caso real. Actualmente se encuentra en evolución, con foco en mejorar la automatización del canal de entrada y el despliegue del flujo.
