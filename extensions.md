# Extensión propuesta: automatización de tareas intermedias

## Motivación

El modelo de Acemoglu y Restrepo supone que la automatización avanza desde las tareas de menor índice hacia las de mayor índice. Por ello, la asignación entre capital y trabajo puede resumirse mediante un único umbral:

\[
I^*=\min\{I,\widetilde I\},
\]

de modo que

\[
i\leq I^*
\quad\Rightarrow\quad
\text{capital},
\]

mientras que

\[
i>I^*
\quad\Rightarrow\quad
\text{trabajo}.
\]

Esta estructura implica que las tareas automatizadas se encuentran siempre en la parte inferior del continuo de tareas.

Sin embargo, los propios autores reconocen que esta es una simplificación importante: en la realidad, la automatización puede concentrarse en tareas intermedias y no necesariamente comenzar por las tareas más simples. Incorporar este patrón es una extensión natural del modelo.

## Pregunta

La extensión busca responder:

\[
\boxed{
\text{¿Cómo cambian los efectos de la automatización sobre empleo, salarios y participación laboral cuando las tareas automatizadas son intermedias?}
}
\]

La pregunta permite pasar de estudiar únicamente **cuánto se automatiza** a estudiar también **qué parte del continuo de tareas se automatiza**.

## Cambio respecto al modelo base

En lugar de representar la automatización mediante un único umbral \(I^*\), propongo introducir dos límites:

\[
I_L<I_H,
\]

de modo que las tareas automatizadas pertenezcan al intervalo

\[
[I_L,I_H].
\]

La asignación de tareas sería:

\[
i<I_L
\quad\Rightarrow\quad
\text{trabajo},
\]

\[
I_L\leq i\leq I_H
\quad\Rightarrow\quad
\text{capital},
\]

\[
i>I_H
\quad\Rightarrow\quad
\text{trabajo}.
\]

Por tanto, la estructura cambia de

\[
\boxed{
\text{capital}
\;|\;
\text{trabajo}
}
\]

a

\[
\boxed{
\text{trabajo}
\;|\;
\text{capital}
\;|\;
\text{trabajo}.
}
\]

La medida de tareas automatizadas sería

\[
I_H-I_L,
\]

mientras que la medida total de tareas realizadas por trabajo sería

\[
(I_L-(N-1))+(N-I_H).
\]

## Mecanismo económico

En el modelo original, un aumento de \(I\) desplaza progresivamente hacia el capital las tareas que antes realizaba el trabajo.

Con automatización intermedia, el efecto depende no solo del tamaño del intervalo automatizado, sino también de su ubicación.

Esto introduce una nueva dimensión:

\[
\boxed{
\text{posición de la automatización}
}
\]

además de

\[
\boxed{
\text{cantidad de automatización}.
}
\]

Dos economías podrían automatizar exactamente la misma medida de tareas,

\[
I_H-I_L,
\]

pero experimentar efectos diferentes si una automatiza tareas de baja complejidad y otra automatiza tareas intermedias.

## Hipótesis

La hipótesis principal es que

\[
\boxed{
\text{misma cantidad de automatización}
\not\Rightarrow
\text{mismo efecto agregado}.
}
\]

En particular, si las tareas intermedias concentran una parte importante de la demanda de trabajo, su automatización podría generar un efecto desplazamiento considerable aun cuando las tareas más simples continúen siendo realizadas por trabajadores.

Al mismo tiempo, las tareas de mayor índice seguirían siendo realizadas por trabajo, por lo que el mecanismo de creación de nuevas tareas y reincorporación laboral podría continuar operando.

De manera esquemática:

\[
\text{automatización intermedia}
\rightarrow
\text{menos tareas intermedias para trabajo}
\rightarrow
L\downarrow,\quad s_L\downarrow.
\]

Pero simultáneamente,

\[
N\uparrow
\rightarrow
\text{nuevas tareas complejas}
\rightarrow
\text{reincorporación del trabajo}.
\]

## Comparación con el benchmark

El benchmark de Acemoglu y Restrepo implica que, cuando la automatización expande efectivamente el conjunto de tareas realizadas por capital, la participación laboral disminuye.

La extensión permitiría comparar:

\[
\text{automatización desde abajo}
\]

con

\[
\text{automatización de tareas intermedias}.
\]

El objeto central de comparación sería determinar si el efecto sobre

\[
W,\qquad L,\qquad s_L
\]

depende únicamente de la medida de tareas automatizadas o también de su ubicación dentro del continuo.

## Resultado esperado

Antes de resolver el modelo, esperaría que la ubicación de las tareas automatizadas afecte la magnitud del desplazamiento laboral.

En particular,

\[
\frac{\partial L}{\partial (I_H-I_L)}
\]

y

\[
\frac{\partial s_L}{\partial (I_H-I_L)}
\]

podrían depender de \(I_L\) y \(I_H\), y no únicamente de la longitud del intervalo automatizado.

Esto implicaría que

\[
\boxed{
\text{el efecto de la automatización depende de qué tareas son automatizadas, no solo de cuántas}.
}
\]

## Valor agregado

La extensión agrega una dimensión que el modelo base deja fuera: la heterogeneidad en la localización de la automatización.

Esto permitiría estudiar:

- automatización de tareas simples frente a tareas intermedias;
- diferencias en la magnitud del desplazamiento laboral;
- polarización de tareas;
- efectos distributivos más heterogéneos;
- posibles diferencias en la dinámica de reincorporación del trabajo.

Además, el propio paper identifica la automatización de tareas intermedias como una generalización importante de su marco. La dificultad principal es que la asignación deja de estar caracterizada por un único umbral, lo que obliga a reformular las condiciones de equilibrio y, eventualmente, las condiciones para un sendero de crecimiento balanceado. 
