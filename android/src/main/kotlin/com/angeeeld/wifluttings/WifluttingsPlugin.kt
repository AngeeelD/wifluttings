package com.angeeeld.wifluttings

import android.content.Intent
import android.provider.Settings
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.PluginRegistry.Registrar

class WifluttingsPlugin {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar): Unit {
      val channel = MethodChannel(registrar.messenger(), "wifluttings")
//      channel.setMethodCallHandler(WifluttingsPlugin())
      channel.setMethodCallHandler(object : MethodCallHandler {
        override fun onMethodCall(call: MethodCall, result: Result) {
          if (call.method.equals("openWifiSettings")) {
            registrar.activity().startActivity(Intent(Settings.ACTION_WIFI_SETTINGS));
            result.success(true)
          } else {
            result.success(false)
//            result.notImplemented()
          }
        }
      })
    }
  }
}
