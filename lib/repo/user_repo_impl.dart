import 'package:ai38ai/model/user_model.dart';
import 'package:ai38ai/repo/user_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepoImpl implements UserRepo{

  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;

  @override
  Future<void> addUser(UserModel userModel) {
    // TODO: implement addUser
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(String id) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<void> editProfile(UserModel userModel) {
    // TODO: implement editProfile
    throw UnimplementedError();
  }

  @override
  Future<void> forgetPassword(String email) {
    // TODO: implement forgetPassword
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> getAllUser() {
    // TODO: implement getAllUser
    throw UnimplementedError();
  }

  @override
  Future<UserModel> getUserByID(String id) {
    // TODO: implement getUserByID
    throw UnimplementedError();
  }

  @override
  Future<String> login(String email, String password) async{
    final user = await auth.signInWithEmailAndPassword(email: email, password: password);
    final userId = user.user?.uid;

    if(userId == null){
      throw Exception("Login failed");
    }
    return userId;
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<String> register(String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }

}