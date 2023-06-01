import 'package:firebase_auth/firebase_auth.dart';
import 'package:ponchao_app/models/directionDetailsInfo.dart';

import '../models/userModel.dart';

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

User? currentUser;

UserModel? userModelCurrentInfo;

String cloudMessagingServerToken = "key=AAAAnxSb4IA:APA91bHZjkbqpzgRukeYrTvZeJICf7xM8a6Fka7FJ18ezmAUqxJWd8jlIsSVif--zSfXoF5tr5aSJ6pUxKC6k-q5rzlKRLBc4rJXAySqzRVckjy2SyGM2EmxheIaq_w4X8rvQB1vLEZY";
List driversList = [];
DirectionDetailsInfo? tripDirectionDetailsInfo;
String userDropOffAddress = "";
String driverCarDetails = "";
String driverName = "";
String driverPhone = "";
String driverRatings = "";

double countRatingStars = 0.0;
String titleStarsRating = "";

