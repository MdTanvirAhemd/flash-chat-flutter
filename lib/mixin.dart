void main() {
  //Fish().move();

  Duck().move();

  Duck().fly();

  Duck().swim();
}

class Animal {
  void move() {
    print('Changed position');
  }
}

class Fish extends Animal {
  @override
  void move() {
    super.move();
    print('by swimming');
  }
}

class Bird extends Animal {
  @override
  void move() {
    super.move();
    print('by flying');
  }
}

mixin CanSwim {
  void swim() {
    print('change position by swimming');
  }
}

mixin CanFly {
  void fly() {
    print('change position by flying');
  }
}

class Duck extends Animal with CanSwim, CanFly {}
