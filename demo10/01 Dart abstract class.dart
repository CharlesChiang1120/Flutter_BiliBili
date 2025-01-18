/*
  11 Dart 中的抽象類、多態以及接口
*/

/*
Dart 中的抽象類

Dart 抽象類主要用於定義標準，子類可以繼承抽象類，也可以實現抽象類作為接口。

抽象類的特點
1. 抽象類的定義  
   使用 `abstract` 關鍵字來定義。

2. 抽象方法 
   Dart 中的抽象方法不需要用 `abstract` 聲明，沒有方法體的方法稱為抽象方法。

3. 子類繼承抽象類  
   子類若繼承抽象類，必須實現其中的所有抽象方法。

4. 抽象類作為接口實現 
   若將抽象類作為接口實現，必須實現抽象類中定義的所有屬性與方法。

5. 抽象類不能被實例化 
   抽象類無法直接創建實例，只有繼承它的子類才可以被實例化。

---

`extends` 與 `implements` 的區別

1. 使用 `extends` 繼承抽象類  
   - 當需要複用抽象類中的方法，並用抽象方法對子類進行約束時，使用 `extends` 繼承抽象類。

2. 使用 `implements` 實現抽象類  
   - 當僅將抽象類作為標準（接口）時，使用 `implements` 實現抽象類。

---

範例：定義一個 `Animal` 類，要求子類必須包含 `eat` 方法

 */

abstract class Animal {
  eat(); //抽象方法
  run(); //抽象方法
  printInfo() {
    print("Normal method in abstract class");
  }
}

class Dog extends Animal {
  @override
  eat() {
    print("dog is eating bone");
  }

  @override
  run() {
    // TODO: implement run
    print("dog is running");
  }
}

class Cat extends Animal {
  @override
  eat() {
    // TODO: implement eat
    print("cat is eating mouse");
  }

  @override
  run() {
    // TODO: implement run
    print("cat is running");
  }
}

void main(List<String> args) {
  Dog d = new Dog();
  d.eat();
  d.printInfo();

  Cat c = new Cat();
  c.eat();
  c.printInfo();

  // Animal a=new Animal();
}
