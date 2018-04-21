#!/bin/bash

echo "http://www.mybatis.org/generator/configreference/xmlconfig.html"

##java -jar mybatis-generator-core-x.x.x.jar -configfile generatorConfig.xml
##java -jar mybatis-generator-core-x.x.x.jar -configfile generatorConfig.xml -overwrite
##java -cp mybatis-generator-core-x.x.x.jar org.mybatis.generator.api.ShellRunner -configfile generatorConfig.xml
##java -cp mybatis-generator-core-x.x.x.jar org.mybatis.generator.api.ShellRunner -configfile generatorConfig.xml -overwrite

rm -rf gen
mkdir gen

#java -cp "libs/*" org.mybatis.generator.api.ShellRunner -configfile generatorConfig.xml -overwrite
java -cp "libs/*" org.mybatis.generator.api.ShellRunner -configfile generatorConfig.xml
