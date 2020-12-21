#import <Flutter/Flutter.h>

#import <VerifyCode/NTESVerifyCodeManager.h>
@interface YidunPlugin : NSObject<FlutterPlugin,NTESVerifyCodeManagerDelegate,FlutterStreamHandler>

@property(nonatomic, strong) NTESVerifyCodeManager *manager;
@property (nonatomic, strong) FlutterEventSink eventSink;

+ (YidunPlugin *)sharedInstance;

-(void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar;

@property (nonatomic, copy) NSString *captchaId;


@end
