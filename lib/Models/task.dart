class Task{
  String name;
  bool state;

  Task({this.name,this.state=false});

  void complated(){
    state =! state;
  }
}