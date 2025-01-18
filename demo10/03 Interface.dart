/*
  11 Dart 中的抽象類、多態以及接口
*/

/*
和Java一樣，Dart也有介面，但和Java還是有區別的。
  首先，Dart的介面沒有使用interface關鍵字來定義，而是普通類或抽象類都可以作為介面被實現。
  同樣使用implements關鍵字進行實現。
  但是Dart的介面有點特殊，如果實現的類是普通類，則需要覆寫普通類中的所有屬性和方法。
  而因為抽象類可以定義抽象方法，普通類不可以，因此如果需要實現像Java介面那樣的方式，通常會使用抽象類。
  建議使用抽象類定義介面。

*/

/*
定義一個DB庫，支持 MySQL、MSSQL、MongoDB。
MySQL、MSSQL、MongoDB這三個類裡面都有相同的方法。
*/

abstract class Db {
  // 當作介面，介面就是約定、規範
  late String uri; // 數據庫的連結地址
  add(String data);
  save();
  delete();
}

class Mysql implements Db {
  @override
  String uri;

  Mysql(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    print("這是MySQL的add方法：$data");
  }

  @override
  delete() {
    // TODO: implement delete
    print("這是MySQL的delete方法");
    return null;
  }

  @override
  save() {
    // TODO: implement save
    print("這是MySQL的save方法");
    return null;
  }
}

class MsSql implements Db {
  @override
  late String uri;

  @override
  add(String data) {
    print("這是MSSQL的add方法：$data");
  }

  @override
  delete() {
    // TODO: implement delete
    print("這是MSSQL的delete方法");
    return null;
  }

  @override
  save() {
    // TODO: implement save
    print("這是MSSQL的save方法");
    return null;
  }
}

void main(List<String> args) {
  Mysql mysql = Mysql("xxxxxx");
  mysql.add("1243214");
}
