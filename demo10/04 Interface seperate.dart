/*
  11 Dart 中的抽象類、多態以及接口
*/

import 'lib/Mysql.dart';
import 'lib/MsSql.dart';

void main(List<String> args) {
  Mysql mysql = Mysql("xxxxxx");
  mysql.add("1243214");

  MsSql mssql = MsSql();
  mssql.uri = '127.0.0.1';
  mssql.add("ssssssss");
}
