/*
  11 Dart 中的抽象類、多態以及接口
*/

/*
Datr中的多態：
    允許將子類型的指標賦值給父類型的指標，同一個函數調用會有不同的執行效果。

    子類的實例賦值給父類的引用。
    
    多態就是父類定義一個方法但不實現，讓繼承它的子類去實現，每個子類都有不同的表現。
*/

abstract class Animal {
  eat(); //抽象方法
}

class Dog extends Animal {
  @override
  eat() {
    print("dog is eating bone");
  }

  run() {
    print("dog is running");
  }
}

class Cat extends Animal {
  @override
  eat() {
    print("cat is eating mouse");
  }

  run() {
    print("cat is running");
  }
}

void main(List<String> args) {
  // Dog d=new Dog();
  // d.eat();
  // d.run();

  // Cat c=new Cat();
  // c.eat();

  Animal d = new Dog();
  d.eat();

  Animal c = new Cat();
  c.eat();
}
