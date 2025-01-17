# Api Automation Testing Pokemon
This project is a technical challenge with Karate APi Framework using the Pokemon Api

**API AUTOMATION TESTING:**

The challenge will be to automate an API for the following endpoints or paths:
1. Verificar las evoluciones de Charmander.
2. Organizar los movimientos de squirtle de la A-Z.

**The following API will be used:**
• URL: https://pokeapi.co/api/v2/pokemon/

**Table of Contents**  
- [Introduction](#introduction)
- [Testing API with Karate](#testing_api_with_karate)
- [Prerequisites](#prerequisites)
- [Run the tests locally](#run-the-tests-locally)

# Introduction

In this project the most common examples of testing with the Karate framework are applied.
To apply the test cases we will use the test API https://pokeapi.co/api/v2/pokemon/ , which provides several endpoints on which you can make GET, requests.

# Testing API with Karate

**Karate** is the only open-source tool to combine API test-automation, mocks, performance-testing and even UI automation into a single, unified framework. The BDD syntax popularized by Cucumber is language-neutral, and easy for even non-programmers. Powerful JSON & XML assertions are built-in, and you can run tests in parallel for speed.

Test execution and report generation feels like any standard Java project. But there's also a stand-alone executable for teams not comfortable with Java. You don't have to compile code. Just write tests in a simple, readable syntax - carefully designed for HTTP, JSON, GraphQL and XML. And you can mix API and UI test-automation within the same test script.

https://github.com/intuit/karate

### Prerequisites

The project is developed in Java with Maven so it will install the following software:

* [Amazon Correto Java 17 SDK](https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/downloads-list.html)
* [Gradle](https://gradle.org/)
* Your favorite IDE, including :
   * [Intellij IDEA](http://www.jetbrains.com): To run features or scenarios tests it will configure: 
  
```
[Run configuration with Cucumber Java template]
    Main class: com.intuit.karate.cli.Main    
    Glue: com.intuit.karate
```


## Run the tests locally

To try to run the demo in the local system, enter the root folder and execute the following commands to install the dependencies and start up the test runners one by one.

```
gradle clean install -DskipTests
gradle clean test -Dtest=ExamplesRunner
gradle clean test -Dtest=DemoTestParallel
