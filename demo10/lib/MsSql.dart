import 'Db.dart';

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
