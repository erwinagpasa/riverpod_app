import 'package:hooks_riverpod/hooks_riverpod.dart';

//Provider - is the most basic of all providers. It exposes an object
//that never changes. We could replace Provider with other providers
//like StreamProvider or StateNotifierProvider, to change how the
//value is interacted with.

//(ref) - That function will always receive an object called ref as a parameter.
//This object allows us to read other providers or to perform some
//operations when the state of our provider will be destroyed.
final textProvider = Provider((ref) => 'Hello riverpod');
