#import "WifluttingsPlugin.h"
#import <wifluttings/wifluttings-Swift.h>

@implementation WifluttingsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWifluttingsPlugin registerWithRegistrar:registrar];
}
@end
