// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
//
//
// class NotificationHelper {
//   static FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
//   static String? firebaseToken;
//
//   static init() async {
//     await firebaseMessaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//
//     firebaseToken = await firebaseMessaging.getToken();
//     initPushNotification();
//   }
//
//   static Future<void> firebaseMessagingBackgroundHandler(
//       RemoteMessage message) async {
//     await Firebase.initializeApp();
//
//   }
//
//   static void handleMessage(RemoteMessage? message) {
//     if (message == null) return;
//   }
//
//   static Future initPushNotification() async {
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//     FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
//     FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
//     FirebaseMessaging.onMessage.listen(handleMessage);
//     FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
//   }
// }
