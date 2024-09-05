// Segregated interfaces
abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

// Human worker implements both Workable and Eatable
class HumanWorker implements Workable, Eatable {
  @override
  void work() {
    print("Human is working");
  }

  @override
  void eat() {
    print("Human is eating");
  }
}

// Robot worker only implements Workable, no need for eat method
class RobotWorker implements Workable {
  @override
  void work() {
    print("Robot is working");
  }
}

void main() {
  HumanWorker human = HumanWorker();
  RobotWorker robot = RobotWorker();

  human.work();
  human.eat();

  robot.work();
}
