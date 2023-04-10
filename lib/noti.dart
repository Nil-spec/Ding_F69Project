import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class Noti{
  static Future initialize(FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin)async{
    var androidInitialize = new AndroidInitializationSettings('mipmap/ic_launcher');
    var initializationSettings = new InitializationSettings(android: androidInitialize);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }
  static Future showBigTextNotification({var id =0, required String title, required String body,var payload,required FlutterLocalNotificationsPlugin fln}) async{
    AndroidNotificationDetails androidNotificationDetails =
    new AndroidNotificationDetails(
        'you_can_name_it_what_ever1', 'channel_name',
        playSound: true,

        importance: Importance.max,
      priority: Priority.high,
    );

    var not=NotificationDetails(android:androidNotificationDetails);
    await fln.show(0, title, body, not);


  }

}