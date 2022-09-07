
class Task{
  static const String collectionName='tasks';
  String? title;
  String? id;
  String? des;
  DateTime? dateTime;
  bool? isDone;
  Task ({
    this.title,this.id,this.des,this.dateTime,this.isDone
});
  Task.fromFirestore(Map<String,dynamic> taskData)
  :this(title: taskData?['title'],
  id: taskData['id'],
  des:taskData['des'],
  dateTime: taskData['dateTime'],
  isDone: taskData['isDone']);

  Map<String,dynamic> toFireStore(){
    return{
      'title':title,
      'id':id,
      'des':des,
      'dateTime':dateTime?.millisecondsSinceEpoch,
      'isDone':isDone



    };


  }




}