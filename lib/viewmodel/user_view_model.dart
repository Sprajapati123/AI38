import 'package:ai38ai/model/user_model.dart';
import 'package:ai38ai/repo/user_repo.dart';
import 'package:flutter/material.dart';

class UserViewModel extends ChangeNotifier {
  final UserRepo _userRepo;

  UserViewModel({required UserRepo userRepo}) : _userRepo = userRepo;

  String? _error = "";

  String? get error => _error;

  bool _loading = false;

  bool get loading => _loading;

  UserModel? _user;

  UserModel? get user => _user;

  List<UserModel>? _allUsers;

  List<UserModel>? get allUsers => _allUsers;

  setError(String? error) {
    _error = error;
    notifyListeners();
  }

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  String? _userId;

  String? get userId => _userId;

  setUserId(String id) {
    _userId = id;
    notifyListeners();
  }

  Future<bool> login(String email, String password) async {
    setLoading(true);
    setError(null);
    try {
      final uid = await _userRepo.login(email, password);
      setUserId(uid);
      return true;
    } on Exception catch (e) {
      setError(e.toString());
      return false;
    } finally {
      setLoading(false);
    }
  }

  Future<String> register(String email, String password) async {
    setLoading(true);
    setError(null);
    try {
      final uid = await _userRepo.login(email, password);
      return uid;
    } on Exception catch (e) {
      setError(e.toString());
      return "";
    } finally {
      setLoading(false);
    }
  }

  Future<void> logout() async {}

  Future<bool> forgetPassword(String email) async {
    setLoading(true);
    setError(null);
    try {
      await _userRepo.forgetPassword(email);
      return true;
    } on Exception catch (e) {
      setError(e.toString());
      return false;
    } finally {
      setLoading(false);
    }
  }

  Future<void> addUser(UserModel userModel) async {}

  Future<bool> deleteUser(String id) async {
    setLoading(true);
    setError(null);
    try {
      await _userRepo.deleteUser(id);
      return true;
    } on Exception catch (e) {
      setError(e.toString());
      return false;
    } finally {
      setLoading(false);
    }
  }

  Future<void> getAllUser() async {
    setLoading(true);
    setError(null);
    try {
      _allUsers = await _userRepo.getAllUser();
    } on Exception catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  Future<void> getUserByID(String id) async {
    setError(null);
    setLoading(true);
    try {
      final data = await _userRepo.getUserByID(id);
      _user = data;
    } on Exception catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  Future<bool> editProfile(UserModel userModel) async {
    setError(null);
    setLoading(true);
    try {
      await _userRepo.editProfile(userModel);
      return true;
    } on Exception catch (e) {
      setError(e.toString());
      return false;
    } finally {
      setLoading(false);
    }
  }
}
