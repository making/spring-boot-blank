#!/bin/sh
KEYWORD="DELETE THIS LINE"

rm -rf ./tmp
mkdir tmp
cp -r src pom.xml tmp
pushd tmp

sed -i -e "s/am\.ik\.archetype/xxxxxx.yyyyyy.zzzzzz/g" pom.xml
sed -i -e "s/spring-boot-blank/projectName/g" pom.xml
sed -i -e "s/github\.com\/making\/projectName/github.com\/making\/spring-boot-blank/g" pom.xml

mvn archetype:create-from-project

pushd target/generated-sources/archetype
sed -i -e "/$KEYWORD/d" target/classes/archetype-resources/pom.xml
sed -i -e "s/xxxxxx\.yyyyyy\.zzzzzz/\${package}/g" target/classes/archetype-resources/pom.xml
sed -i -e "s/xxxxxx\.yyyyyy\.zzzzzz/am.ik.archetype/g" pom.xml
sed -i -e "s/projectName/spring-boot-blank/g" pom.xml
sed -i -e "s/<scm>/<distributionManagement><snapshotRepository><id>ossrh<\/id><url>https:\/\/oss.sonatype.org\/content\/repositories\/snapshots<\/url><\/snapshotRepository><repository><id>ossrh<\/id><url>https:\/\/oss.sonatype.org\/service\/local\/staging\/deploy\/maven2\/<\/url><\/repository><\/distributionManagement><scm>/g" pom.xml
sed -i -e "s/<build>/<build><plugins><plugin><groupId>org.sonatype.plugins<\/groupId><artifactId>nexus-staging-maven-plugin<\/artifactId><version>1.6.2<\/version><extensions>true<\/extensions><configuration><serverId>ossrh<\/serverId><nexusUrl>https:\/\/oss.sonatype.org\/<\/nexusUrl><autoReleaseAfterClose>true<\/autoReleaseAfterClose><\/configuration><\/plugin><plugin><groupId>org.apache.maven.plugins<\/groupId><artifactId>maven-gpg-plugin<\/artifactId><version>1.5<\/version><executions><execution><id>sign-artifacts<\/id><phase>verify<\/phase><goals><goal>sign<\/goal><\/goals><\/execution><\/executions><\/plugin><\/plugins>/g" pom.xml

mvn deploy

