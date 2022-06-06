abstract class AmazonSettingsImpl {
  Future<bool> isRegionConnected(int index);
  Future<bool> isAccountConnected();
  Future<void> connectAccount();
}
