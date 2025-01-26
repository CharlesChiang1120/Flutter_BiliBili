/*
  15 Dart 2.13 之後的一些新特性 - Null safety、late 關鍵字、空類型聲明符?、非空斷言!、required 關鍵字
*/

/*
  和 Java 一樣，Dart 也有接口，但是和 Java 還是有區別的。
  首先，Dart 的接口沒有 interface 關鍵字來定義接口，而是普通類或抽象類都可以作為接口被實現。
  同樣使用 implements 關鍵字進行實現。
  但是 Dart 的接口有點奇怪，如果實現的類是普通類，會將普通類和抽象類中的屬性和方法全部需要覆寫一遍。
  而因為抽象類可以定義抽象方法，普通類不可以，所以一般如果要實現像 Java 接口那樣的方式，通常會使用抽象類。
  建議使用抽象類定義接口。
*/

/*
  定義一個 DB 庫，支持 mysql、mssql、mongodb
  mysql、mssql、mongodb 三個類裡面都有相同的方法
*/

abstract class Db {
  // 當做接口，接口：就是約定、規範
  late String uri; // 資料庫的連結地址
  add(String data);
  save();
  delete();
}

class Mysql implements Db {
  @override
  late String uri; // 覆寫屬性
  Mysql(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    print("這是 Mysql 的 add 方法：" + data);
  }

  @override
  save() {
    print("這是 Mysql 的 save 方法");
  }

  @override
  delete() {
    print("這是 Mysql 的 delete 方法");
  }
}

class Mssql implements Db {
  @override
  late String uri; // 覆寫屬性
  Mssql(this.uri);

  @override
  add(String data) {
    print("這是 Mssql 的 add 方法：" + data);
  }

  @override
  save() {
    print("這是 Mssql 的 save 方法");
  }

  @override
  delete() {
    print("這是 Mssql 的 delete 方法");
  }
}

class Mongodb implements Db {
  @override
  late String uri; // 覆寫屬性
  Mongodb(this.uri);

  @override
  add(String data) {
    print("這是 Mongodb 的 add 方法：" + data);
  }

  @override
  save() {
    print("這是 Mongodb 的 save 方法");
  }

  @override
  delete() {
    print("這是 Mongodb 的 delete 方法");
  }
}

void main() {
  Mysql mysql = Mysql("mysql://localhost:3306");
  mysql.add("數據1");
  mysql.save();
  mysql.delete();

  Mssql mssql = Mssql("mssql://localhost:1433");
  mssql.add("數據2");
  mssql.save();
  mssql.delete();

  Mongodb mongodb = Mongodb("mongodb://localhost:27017");
  mongodb.add("數據3");
  mongodb.save();
  mongodb.delete();
}
