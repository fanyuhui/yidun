#import "YidunPlugin.h"

@implementation YidunPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"yidun_plugin"
            binaryMessenger:[registrar messenger]];
  YidunPlugin* instance = [[YidunPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"show" isEqualToString:call.method]) {
      result(@"show");
  } else {
    result(FlutterMethodNotImplemented);
  }
}
@end
