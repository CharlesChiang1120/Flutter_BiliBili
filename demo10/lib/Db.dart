abstract class Db {
  // 當作介面，介面就是約定、規範
  late String uri; // 數據庫的連結地址
  add(String data);
  save();
  delete();
}
