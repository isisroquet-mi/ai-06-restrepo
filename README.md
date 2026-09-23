# Acemoglu & Restrepo (2018): The Race Between Machine and Man

Este repositorio estudia **Acemoglu y Restrepo, _The Race Between Machine and Man: Implications of Technology for Growth, Factor Shares and Employment_**, NBER Working Paper No. 22252. Utilizo la versión de **mayo de 2016, revisada en junio de 2017**, que es la versión empleada para la formalización Lean.

## 1. Pregunta

El paper pregunta cómo cambia el papel del trabajo cuando el progreso tecnológico puede tomar dos formas opuestas:

1. **automatización:** tareas que antes realizaba el trabajo pasan a poder ser realizadas por capital;
2. **creación de nuevas tareas:** aparecen tareas más complejas en las que el trabajo tiene ventaja comparativa.

La pregunta económica central puede resumirse como

$$
\boxed{
\text{¿Puede la automatización desplazar permanentemente al trabajo,
o la creación de nuevas tareas genera una fuerza que lo reincorpora?}
}
$$

El paper estudia las consecuencias de esta carrera para el **crecimiento, los salarios, el empleo y la participación del trabajo en el ingreso**.

## 2. Cambio de unidad de análisis

A diferencia de los artículos anteriores del curso, donde el objeto central era la decisión de un **agente individual**, aquí la unidad de análisis es la **economía agregada**.

Por ello, no existe un único problema individual que produzca el resultado principal. El equilibrio surge de la interacción entre:

- hogares, que deciden consumo, ahorro y oferta de trabajo;
- firmas, que deciden con qué factor producir cada tarea;
- innovadores y científicos, que deciden si dirigir recursos hacia automatización o hacia la creación de nuevas tareas.

El objeto central deja de ser únicamente una elección individual y pasa a ser la **asignación endógena de un continuo de tareas entre capital y trabajo**.

## 3. Marco de tareas

La producción final combina un continuo de tareas de medida uno,

$$
i\in[N-1,N].
$$

El parámetro $N$ representa la frontera de tareas. Cuando aumenta $N$, aparece una nueva tarea más compleja y se reemplaza una tarea antigua.

La productividad del trabajo en una tarea $i$ es $\gamma(i)$ y se supone creciente:

$$
\gamma'(i)>0.
$$

Por tanto, el trabajo tiene ventaja comparativa en las tareas de mayor índice.

La tecnología de automatización está representada por $I$. Las tareas

$$
i\leq I
$$

pueden producirse usando capital, mientras que las tareas

$$
i>I
$$

deben producirse con trabajo.

Sin embargo, que una tarea sea técnicamente automatizable no significa que necesariamente sea producida con capital. Las firmas comparan el costo del capital,

$$
R,
$$

con el costo efectivo del trabajo,

$$
\frac{W}{\gamma(i)}.
$$

Existe entonces un umbral $\widetilde I$ definido por

$$
\frac{W}{R}=\gamma(\widetilde I).
$$

El umbral efectivamente observado es

$$
\boxed{
I^*=\min\{I,\widetilde I\}.
}
$$

Así,

$$
i\leq I^*
\quad\Rightarrow\quad
\text{capital},
$$

mientras que

$$
i>I^*
\quad\Rightarrow\quad
\text{trabajo}.
$$

Este umbral conecta directamente **precios factoriales, tecnología y asignación de tareas**.

## 4. Las dos fuerzas: desplazamiento y reincorporación

### Desplazamiento

Cuando aumenta $I$ y la restricción tecnológica es vinculante,

$$
I^*=I<\widetilde I,
$$

una mayor cantidad de tareas pasa del trabajo al capital.

Esto genera un **efecto desplazamiento**:

$$
\text{automatización}
\rightarrow
\text{menos tareas para el trabajo}
\rightarrow
\frac{W}{R}\downarrow,
\quad
s_L\downarrow,
\quad
L\downarrow.
$$

La participación laboral disminuye de manera inequívoca en este caso.

El efecto sobre el salario, sin embargo, no es necesariamente negativo. La automatización también abarata la producción y aumenta la productividad. En la Proposición 3,

$$
d\ln W
=
\underbrace{d\ln Y|_{K,L}}_{\text{efecto productividad}}
-
\underbrace{
(1-s_L)
\frac{\Lambda_I}{\widehat\sigma+\varepsilon_L}dI
}_{\text{efecto desplazamiento}}.
$$

Por tanto,

$$
\boxed{
dW>0
\iff
\text{efecto productividad}
>
\text{efecto desplazamiento}.
}
$$

La automatización puede entonces aumentar la productividad y, al mismo tiempo, reducir la participación del trabajo; su efecto sobre el salario es ambiguo en el corto plazo.

### Reincorporación

La segunda fuerza aparece cuando aumenta $N$.

La creación de nuevas tareas amplía el conjunto de actividades en las que el trabajo tiene ventaja comparativa:

$$
\text{nuevas tareas}
\rightarrow
\text{más tareas para el trabajo}
\rightarrow
\frac{W}{R}\uparrow,
\quad
s_L\uparrow,
\quad
L\uparrow.
$$

Esta es la fuerza de **reincorporación del trabajo** que contrarresta el desplazamiento generado por la automatización.

La dinámica relevante del modelo puede resumirse mediante

$$
n(t)=N(t)-I(t).
$$

Un menor $n$ significa que la automatización ha avanzado relativamente más rápido que la creación de nuevas tareas.

## 5. Cambio tecnológico endógeno

Hay una cantidad fija $S$ de científicos que puede dedicarse a automatizar tareas o a crear nuevas tareas:

$$
S_I(t)+S_N(t)\leq S.
$$

Las fronteras tecnológicas evolucionan según

$$
\dot I(t)=\kappa_I S_I(t),
$$

$$
\dot N(t)=\kappa_N S_N(t).
$$

Los científicos se asignan según el valor económico de cada innovación. Si $V_I$ es el valor de automatizar y $V_N$ el valor de crear una nueva tarea, un equilibrio interior requiere

$$
\boxed{
\kappa_I v_I(n)=\kappa_N v_N(n).
}
$$

Esta condición determina la dirección endógena del cambio tecnológico.

## 6. Resultado principal

La **Proposición 6** caracteriza los senderos de crecimiento balanceado cuando la dirección del cambio tecnológico es endógena.

El resultado requiere:

1. **Assumption 1':**

$$
\gamma(i)=e^{Ai},
\qquad A>0,
$$

de modo que la productividad laboral crece exponencialmente con la complejidad de las tareas.

2. **Assumption 2:** una de las siguientes condiciones:

$$
\eta\rightarrow0
\qquad\text{o}\qquad
\zeta=1,
$$

lo que permite trabajar con demandas homotéticas de capital y trabajo.

3. **Assumption 4:**

$$
\widehat\sigma>\zeta,
$$

de modo que las innovaciones dirigidas hacia el factor relativamente más barato sean rentables.

4. Existe un umbral $\bar S$ tal que

$$
S<\bar S.
$$

Esta condición evita una tasa de crecimiento excesivamente alta que desincentive la creación de nuevas tareas.

Bajo estas condiciones:

### A. Automatización completa

Si

$$
\rho<\bar\rho,
$$

existe un BGP con

$$
n=0,
$$

por lo que

$$
N=I
$$

y todas las tareas son producidas por capital.

Es el caso extremo en el que el trabajo se vuelve redundante.

### B. Equilibrio interior único

Si

$$
\rho>\bar\rho
$$

y la productividad relativa de la investigación en automatización es suficientemente alta,

$$
\frac{\kappa_I}{\kappa_N}>\bar\kappa,
$$

existe un único BGP interior con

$$
n\in(\bar n(\rho),1)
$$

y

$$
\boxed{
\kappa_Iv_I(n)=\kappa_Nv_N(n).
}
$$

En este equilibrio algunas tareas son realizadas por capital y otras por trabajo.

Además:

- si $\theta=0$, el BGP es globalmente estable en sentido saddle-path;
- si $\theta>0$, el equilibrio es único localmente y asintóticamente estable alrededor del BGP.

### C. Múltiples BGP

Si

$$
\underline{\kappa}
<
\frac{\kappa_I}{\kappa_N}
<
\bar\kappa,
$$

pueden existir múltiples senderos de crecimiento balanceado.

### D. Sin automatización

Si

$$
\frac{\kappa_I}{\kappa_N}
<
\underline{\kappa},
$$

existe un único BGP con

$$
n=1,
$$

en el cual todas las tareas son producidas por trabajo.

## 7. Intuición del resultado principal

El resultado más importante no es simplemente que "las máquinas reemplazan trabajadores".

En el BGP interior aparece una fuerza de corrección:

$$
\text{más automatización}
\rightarrow
\text{menos tareas realizadas por trabajo}
\rightarrow
\text{cambian los precios factoriales}
\rightarrow
\text{automatizar otra tarea se vuelve relativamente menos rentable}
\rightarrow
\text{crear nuevas tareas se vuelve relativamente más atractivo}.
$$

Por ello, **desplazamiento y reincorporación operan simultáneamente**.

Un shock transitorio que acelera la automatización puede activar estas fuerzas y hacer que empleo y participación laboral regresen hacia su nivel inicial. En cambio, un cambio permanente en la frontera de posibilidades de innovación que haga relativamente más fácil automatizar —un aumento de $\kappa_I/\kappa_N$— conduce a un nuevo BGP con menor $n$, menor empleo y menor participación laboral.

## 8. Conclusión

El paper reemplaza la visión de una carrera puramente destructiva entre trabajadores y máquinas por una carrera entre **dos tipos de cambio tecnológico**:

$$
\boxed{
\text{automatización}
\quad\text{vs.}\quad
\text{creación de nuevas tareas}.
}
$$

