//
//  
//  Copyright YoYo Games Ltd., 2015.
//  For support please submit a ticket at help.yoyogames.com
//
//

#import <Foundation/Foundation.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>


@interface FacebookExtension:NSObject <FBSDKGameRequestDialogDelegate,FBSDKSharingDelegate>
{
@private
    // The FB login state
    NSString* mLoginStatus;
    NSString* mUserId;
}


- (void)FBinit;
- (void)login:(NSArray*)permissions loginType:(int)_loginType;
- (void)logout;
- (NSString*)loginStatus;
- (void)setLoginStatus:(NSString*)status;
- (NSString *)accessToken;
- (NSString *)userId;



- (void)showDialog:(NSString*)dialogType params:(NSMutableDictionary*)params userData:(int)userData;
-(void)graphRequest:(NSString*)_graphPath httpMethod:(NSString*)_httpMethod params:(NSDictionary*)_params dsMap:(int)_dsMap;
-(void)parseInviteDialogResult:(NSURL*) resultURL dsMap:(int)map;
- (NSMutableDictionary*)parseURLParams:(NSString*)query;
- (void)extractJSONDataArray:(NSArray*)objArray dsListIndex:(int)dsListIndex;
- (void)extractJSONData:(NSDictionary*)jsonData dsMapIndex:(int)dsMapIndex;

//permission requests
-(bool)checkPermission:(NSString*)permission;
-(int)requestPermissions:(NSArray*)_permissions publish:(bool)_bPublish;
-(void)requestPublishPermissions:(NSArray*)_permissions requestId:(int)_requestId;
-(void)requestReadPermissions:(NSArray*)_permissions requestId:(int)_requestId;
-(void)facebook_refresh_accesstoken;
-(void)facebook_send_event:(NSString *)event_name;

@end
