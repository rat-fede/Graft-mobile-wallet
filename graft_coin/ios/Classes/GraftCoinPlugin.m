#import "graftCoinPlugin.h"
#import <graft_coin/graft_coin-Swift.h>
//#include "../External/android/monero/include/wallet2_api.h"

@implementation graftCoinPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftgraftCoinPlugin registerWithRegistrar:registrar];
}
@end
