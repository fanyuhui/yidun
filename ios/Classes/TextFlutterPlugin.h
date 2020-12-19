#import <Flutter/Flutter.h>
#import <VerifyCode/NTESVerifyCodeManager.h>

@interface TextFlutterPlugin : NSObject<FlutterPlugin>
@property(nonatomic, strong) NTESVerifyCodeManager *manager;
@property (nonatomic, strong) FlutterEventSink eventSink;

+ (FlutterNativePlugin *)sharedInstance;

- (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar;
@end
