abstract class UserRepo {

  Future<String> login(String email,String password);
  Future<String> register(String email, String password);
  Future<void> logout();

  Future<void> forgetPassword(String email);
  addUser();
  deleteUser();
  getAllUser();
  getUserByID();

}
