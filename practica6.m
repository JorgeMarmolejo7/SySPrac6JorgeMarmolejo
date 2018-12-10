%% Pr�ctica 6: Sistemas diferenciales
%% Datos generales:
% Autor:
% Marmolejo Mart�nez Hamlet Jorge

% Grupo: 2TV2 

% Profesor: Dr. Rafael Mart�nez Mart�nez
%%
%% Objetivos:
% * Conocer comandos para obtener las funciones de respuesta de un sistema
% * Graficar las expresiones de respuesta
% 
%%
%% Introducci�n
% En esta practica se mostrar� como un programa resuelve sistemas
% diferenciales de orden n mediante la transformada de Laplace y Fourier, el
% programa despliega la funci�n de trasnferencia, la respuesta al impulso,
% la respuesta a entrada cero, la respuesta a estado cero, la respuesta
% total con condiciones iniciales y las gr�ficas correspondientes
%% Desarrollo
%% Entregable 1
% Se tiene el sistema del ejemplo 
% Muestra la funci�n de transferencia del sistema.
% Con la se�al de entrada
% $$x(t)=exp(-t)cos(t)u(t)$$

syms t
transformadaLaplace([2 2 1 1],[2 -1 3],[2 3 1],[0 1],exp(-t)*cos(t)*heaviside(t),10)

%% Entregable 2
% Se muestra la respuesta al impulso del sistema

syms t
transFourierImpulse([2 2 1],[2 1],sign(t),5)


%% Entregable 3
%  Se muestra la respuesta a entrada cero del sistema
syms t
transLaplaceCero([2 2 1 1],[2 -1 3],[2 3 1],[0 1],0*t,10)

%% Entregable 4
%  Se muestra la respuesta a estado cero del sistema
syms t
transLaplaceCeroState([2 2 1 1],[2 -1 3],[0 0 0],[0 0],exp(-t)*cos(t)*heaviside(t),10)

%% Entregable 5
%  Se muestra la respuesta total del sistema
syms t
transLaplaceTotal([2 2 1 1],[2 -1 3],[2 3 1],[0 1],exp(-t)*cos(t)*heaviside(t),10)
%% Entregable 6
%  Se muestra la respuesta total al escal�n
syms t
transLaplaceTotal([2 2 1 1],[2 -1 3],[0 0 0],[0 0],sign(t),10)
