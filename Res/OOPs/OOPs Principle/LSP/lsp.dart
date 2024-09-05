class Bird {
  void makeSound() {
    print("Bird is making sound");
  }
}

class FlyingBird extends Bird {
  void fly() {
    print("I am flying");
  }
}

class Sparrow extends FlyingBird {
  // Sparrow can fly, inherits fly() from FlyingBird
  @override
  void fly() {
    print("Sparrow is flying");
  }
}

class Penguin extends Bird {
  // Penguin doesn't have a fly() method, so it doesn't break LSP
  @override
  void makeSound() {
    print("Penguin can make sound");
  }
}

void main() {
  FlyingBird bird = Sparrow();
  bird.fly();

  Bird penguin = Penguin();
  penguin.makeSound();
}
