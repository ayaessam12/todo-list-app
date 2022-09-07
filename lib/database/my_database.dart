import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todolist/database/task.dart';

class MyDatabase{
  static CollectionReference<Task> getTasksCollection(){
    return FirebaseFirestore.instance.collection(Task.collectionName)
    .withConverter<Task>(fromFirestore: (snapshot, options) {
          return Task.fromFirestore(snapshot.data()!);
        },        toFirestore: (task,option){
          return task.toFireStore();
    });


  }
  static void insertTask(Task task){
FirebaseFirestore.instance
    .collection('tasks')
    .withConverter<Task>(fromFirestore:((snapshot,_)=>Task.fromFirestore(snapshot.data()!)),


    toFirestore:(task,options)=>task.toFireStore() );



    var taskCollection=getTasksCollection();
    var taskDoc=taskCollection.doc();
    task.id=taskDoc.id; //creat new doc
    taskDoc.set(task);


  }
}