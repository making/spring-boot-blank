# Spring Boot Blank

Maven archetype to create a pre-configured maven project for Spring Boot Application

Supports

* log4jdbc-log4j2
* Lombok
* REST Assured (for E2E test)

[![Build Status](https://travis-ci.org/making/spring-boot-blank.svg)](https://travis-ci.org/making/spring-boot-blank)

## How to use

with Bash

    mvn archetype:generate\
     -DarchetypeGroupId=am.ik.archetype\
     -DarchetypeArtifactId=spring-boot-blank-archetype\
     -DarchetypeVersion=1.0.6

with CommandPrompt (Windows)

    mvn archetype:generate^
     -DarchetypeGroupId=am.ik.archetype^
     -DarchetypeArtifactId=spring-boot-blank-archetype^
     -DarchetypeVersion=1.0.6

### Example

```
$ mvn archetype:generate -B\
  -DarchetypeGroupId=am.ik.archetype\
  -DarchetypeArtifactId=spring-boot-blank-archetype\
  -DarchetypeVersion=1.0.6\
  -DgroupId=com.example\
  -DartifactId=hajiboot\
  -Dversion=1.0.0-SNAPSHOT
[INFO] Scanning for projects...
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building Maven Stub Project (No POM) 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] >>> maven-archetype-plugin:2.2:generate (default-cli) @ standalone-pom >>>
[INFO]
[INFO] <<< maven-archetype-plugin:2.2:generate (default-cli) @ standalone-pom <<<
[INFO]
[INFO] --- maven-archetype-plugin:2.2:generate (default-cli) @ standalone-pom ---
[INFO] Generating project in Batch mode
[WARNING] Archetype not found in any catalog. Falling back to central repository (http://repo1.maven.org/maven2).
[WARNING] Use -DarchetypeRepository=<your repository> if archetype's repository is elsewhere.
Downloading: http://repo1.maven.org/maven2/am/ik/archetype/spring-boot-blank-archetype/1.0.6/spring-boot-blank-archetype-1.0.6.jar
Downloaded: http://repo1.maven.org/maven2/am/ik/archetype/spring-boot-blank-archetype/1.0.6/spring-boot-blank-archetype-1.0.6.jar (6 KB at 7.5 KB/sec)
Downloading: http://repo1.maven.org/maven2/am/ik/archetype/spring-boot-blank-archetype/1.0.6/spring-boot-blank-archetype-1.0.6.pom
Downloaded: http://repo1.maven.org/maven2/am/ik/archetype/spring-boot-blank-archetype/1.0.6/spring-boot-blank-archetype-1.0.6.pom (3 KB at 3.8 KB/sec)
[INFO] ----------------------------------------------------------------------------
[INFO] Using following parameters for creating project from Archetype: spring-boot-blank-archetype:1.0.6
[INFO] ----------------------------------------------------------------------------
[INFO] Parameter: groupId, Value: com.example
[INFO] Parameter: artifactId, Value: hajiboot
[INFO] Parameter: version, Value: 1.0.0-SNAPSHOT
[INFO] Parameter: package, Value: com.example
[INFO] Parameter: packageInPathFormat, Value: com/example
[INFO] Parameter: package, Value: com.example
[INFO] Parameter: version, Value: 1.0.0-SNAPSHOT
[INFO] Parameter: groupId, Value: com.example
[INFO] Parameter: artifactId, Value: hajiboot
[INFO] project created from Archetype in dir: /Users/maki/tmp/hajiboot
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 8.407s
[INFO] Finished at: Wed Oct 08 09:20:27 JST 2014
[INFO] Final Memory: 15M/109M
[INFO] ------------------------------------------------------------------------

$ find . | sort | sed '1d;s,[^/]*/,|    ,g;s/..//;s/[^ ]*$/|-- &/'
   |-- hajiboot
   |    |-- pom.xml
   |    |-- src
   |    |    |-- main
   |    |    |    |-- java
   |    |    |    |    |-- com
   |    |    |    |    |    |-- example
   |    |    |    |    |    |    |-- App.java
   |    |    |    |    |    |    |-- AppConfig.java
   |    |    |    |    |    |    |-- HelloController.java
   |    |    |    |-- resources
   |    |    |    |    |-- application.properties
   |    |    |    |    |-- log4jdbc.log4j2.properties
   |    |    |    |    |-- templates
   |    |    |    |    |    |-- hello.html
   |    |    |-- test
   |    |    |    |-- java
   |    |    |    |    |-- com
   |    |    |    |    |    |-- example
   |    |    |    |    |    |    |-- HelloControllerTest.java
   |    |    |    |-- resources
   |    |    |    |    |-- .gitkeep


$ mvn test -f hajiboot/pom.xml
... Starts end to end test ;)
```

## License

Licensed under the Apache License, Version 2.0.
