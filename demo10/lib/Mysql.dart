import 'Db.dart';

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

  remove() {
    print("這是MySQL的remove方法");
  }
}
