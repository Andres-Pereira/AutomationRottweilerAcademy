# Automatizacion para Rottweiler Academy

Acerca de los features:
En el presente repositorio se encuentran los steps (pasos) que se realizaron en Gherkin basados en casos de prueba, estos archivos estan incluidos en la carpeta "features" y tienen la extension .feature. Los feature definen funcionalidades de la pagina e incluyen distintos casos de prueba(Scenarios) para dichas funcionalidades. Estos respetan la sintaxis del lenguaje Gherkin que incluye las palabras clave: Given,When,Then. Los features son escritos en lenguaje natural, por lo que son sencillos de entender por cualquier persona.

Acerca de los steps:
Los steps son archivos que contienen la implementacion de los features, son lineas de codigo que automatizan estos casos de prueba. 
Esta implementacion se realizo en el lenguaje de programacion Ruby y llevan la extension .rb
Se utilizaron principalmente las gemas:
* Cucumber:Herramienta usada en BDD para describir en texto plano como el software debe comportarse. Para describir al programa se realizan features y Scenarios.
* Capybara: Es una libreria  que incluye comandos que hacen mas sencillo simular la interaccion de un usuario con la aplicacion. Es mas entendible por su simplicidad.
* Selenium: Driver que permite que los comandos de Capybara se ejecuten en nuestro navegador. Nos permite ver como se ejecutan las pruebas automatizadas.

Acerca de archivos support:
En la carpeta "support" se encuentra el archivo "hooks.rb" que incluira los hooks utilizados al correr los features. Los hooks son lineas de codigo que nos permiten realizar acciones antes o despues de la ejecucion de un Feature, Scenario o Step.
Mientras que en el archivo "env.rb" se encuentra la importacion de las gemas requeridas, variables de entorno y configuraciones iniciales de Capybara y Selenium para que estos funcionen en conjunto y correctamente.


Referencias: 
Hooks
https://cucumber.io/docs/cucumber/api/#hooks

Cucumber
https://cucumber.io/

Capybara
https://teamcapybara.gith/





