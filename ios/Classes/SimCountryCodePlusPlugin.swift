import Flutter
import UIKit
import CoreTelephony

public class SimCountryCodePlusPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "sim_country_code_plus", binaryMessenger: registrar.messenger())
        let instance = SimCountryCodePlusPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "getSimCountryCode" {
            let networkInfo = CTTelephonyNetworkInfo()
            if let carrier = networkInfo.subscriberCellularProvider {
                result(carrier.isoCountryCode?.uppercased())
            } else {
                result(nil)
            }
        } else {
            result(FlutterMethodNotImplemented)
        }
    }
} 