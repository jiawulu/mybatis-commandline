#!/bin/bash

echo "http://www.mybatis.org/generator/configreference/xmlconfig.html"

##java -jar mybatis-generator-core-x.x.x.jar -configfile generatorConfig.xml
##java -jar mybatis-generator-core-x.x.x.jar -configfile generatorConfig.xml -overwrite
##java -cp mybatis-generator-core-x.x.x.jar org.mybatis.generator.api.ShellRunner -configfile generatorConfig.xml
##java -cp mybatis-generator-core-x.x.x.jar org.mybatis.generator.api.ShellRunner -configfile generatorConfig.xml -overwrite

rm -rf gen
mkdir gen

java -cp "libs/*" org.mybatis.generator.api.ShellRunner -configfile generatorConfig.xml -overwrite


```
SqlSession sqlSession = sqlSessionFactory.openSession();

  try {
    MyTableMapper mapper = sqlSession.getMapper(MyTableMapper.class);
    List<MyTable> allRecords = mapper.selectByExample(null);
  } finally {
    sqlSession.close();
 }
 ```

```
 TestTableExample example = new TestTableExample();

  example.or()
    .andField1EqualTo(5)
    .andField2IsNull();

  example.or()
    .andField3NotEqualTo(9)
    .andField4IsNotNull();

  List<Integer> field5Values = new ArrayList<Integer>();
  field5Values.add(8);
  field5Values.add(11);
  field5Values.add(14);
  field5Values.add(22);

  example.or()
    .andField5In(field5Values);

  example.or()
    .andField6Between(3, 7);

In the above example, the dynamically generated where clause will effectively be:

  where (field1 = 5 and field2 is null)
     or (field3 <> 9 and field4 is not null)
     or (field5 in (8, 11, 14, 22))
     or (field6 between 3 and 7)
```