import Flutter
import UIKit

public class SwiftWifluttingsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "wifluttings", binaryMessenger: registrar.messenger())
    let instance = SwiftWifluttingsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    openWifiSettings()
    result(true)
  }
    
  public func openWifiSettings() {
    if let url = URL(string:"App-Prefs:root=WIFI") {
        if UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
  }
}
