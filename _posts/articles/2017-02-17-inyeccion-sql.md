---
layout: post
title: "Inyección SQL ¿Cómo proteger nuestras bases de datos?"
excerpt: "Los ataques SQLi son de los más comunes y pueden comprometer tu sistema y los datos de tus clientes."
categories: articulos
tags: [SQLi, Vulnerabilidades]
comments: false
share: true
author: aza
modified: 2017-02-17T11:25:57-03:00
---

## ¿Qué es?

Los ataques de inyección SQL aprovechan la falta de sanitización
de datos ingresados por el usuario para manipular las consultas a
la base de datos y obtener datos a los que de otra forma no tendrían
acceso.

## Alcance

Es una de las vulnerabilidades más explotadas en la web por varias
razones. Ocurre frecuentemente, ya sea por descuido o desconocimiento,
es relativamente fácil de detectar y permite escalar privilegios en el
servidor hasta tomar el control total.

Abusando una de estas vulnerabilidades los atacantes pueden obtener credenciales
de acceso, copiar la base de datos completa o crear archivos en el servidor
para ejecutar código malicioso.

## Detección

Una forma fácil de saber si una web es vulnerable a una inyección SQL muy
evidente, es agregar una comilla simple a un valor en una dirección URL. Si
nos muestra un error o no carga correctamente el sitio es probablemente vulnerable
y necesita ser corregido de inmediato.

https://www.misitioweb.com/?id=123'

## Soluciones

Para arreglar una web vulnerable es necesario modificarla para que sanitice
los datos cada vez que hace una llamada a la base de datos. Si utiliza un
[manejador de contenidos (CMS) actualice el sistema](/articulos/wordpress) y componentes a su última
versión.

También puede optar por Firewalls de Aplicación y Sistemas de Detección de
Intrusos (IDS) que detecten y prevengan este tipo de ataques aún cuando
existan estas vulnerabilidades.

En caso de que su sitio fuera vulnerado es necesario recuperar los archivos
y base de datos desde un backup limpio, actualizar el sistema y cambiar las
contraseñas de todos los usuarios. Si el objetivo de los atacantes era enviar
spam o infectar usuarios con virus es probable que haya que
[sacar al sitio de diferentes listas negras](/articulos/listas-negras-blacklists).

¿Es su web vulnerable a ataques SQLi?
[Pida un análisis de seguridad hoy](https://seguridadweb.online/contacto.html).
