//
//  
//  Copyright YoYo Games Ltd., 2015.
//  For support please submit a ticket at help.yoyogames.com
//
//


#import "FacebookExtension.h"

#import <FBSDKLoginKit/FBSDKLoginManager.h>

extern "C" void dsMapClear(int _dsMap );
extern "C" int dsMapCreate();
extern "C" void dsMapAddInt(int _dsMap, char* _key, int _value);
extern "C" void dsMapAddString(int _dsMap, char* _key, char* _value);
extern "C" int dsListCreate();
extern "C" void dsListAddInt(int _dsList, int _value);
extern "C" void dsListAddString(int _dsList, char* _value);
extern UIViewController *g_controller;

const int EVENT_OTHER_SOCIAL = 70;
//extern int CreateDsMap( int _num, ... );
//extern "C" void CreateAsynEventWithDSMap(int dsmapindex, int event_index);
extern "C" void createSocialAsyncEventWithDSMap(int dsmapindex);

static int s_requestID = 0;

FBSDKLoginManager *loginManager ;


@implementation FacebookExtension

void (^loginHandler)(FBSDKLoginManagerLoginResult *result, NSError *error);



- (id)init
{
    self = [super init];
    if (self)
    {
        // superclass successfully initialized, further
        // initialization happens here ...
        [self setLoginStatus: @"IDLE"];
    }
    loginManager = [[FBSDKLoginManager alloc] init];
	
    loginHandler= ^(FBSDKLoginManagerLoginResult *result, NSError *error)
    {
								if (error)
                                {
                                    // Process error
                                    NSLog(@"error");
                                }
                                else if (result.isCancelled)
                                {
                                    // Handle cancellations
                                    NSLog(@"is cancelled");
                                }
                                else
                                {
                                    int dsMapIndex = dsMapCreate();
                                    dsMapAddString(dsMapIndex, "type", "facebook_login_result");
                                    dsMapAddString(dsMapIndex,"status","success");
                                    
                                    for (NSString* item in result.grantedPermissions)
                                    {
                                        char *it8 =(char*)[item UTF8String];
                                        dsMapAddString(dsMapIndex,it8,"granted");
                                    }
                                    for (NSString* item  in result.declinedPermissions)
                                    {
                                        char *it8 =(char*)[item UTF8String];
                                        dsMapAddString(dsMapIndex,it8,"declined");
                                    }
                                    createSocialAsyncEventWithDSMap(dsMapIndex);
                                }
        
        
    };
	
    return self;
}

- (void) onLaunch:(NSDictionary *)launchOptions
{
	 [[FBSDKApplicationDelegate sharedInstance] application:[UIApplication sharedApplication]
    didFinishLaunchingWithOptions:launchOptions];
	
	[FBSDKProfile enableUpdatesOnAccessTokenChange:YES];
}

- (void)gameRequestDialog:(FBSDKGameRequestDialog *)gameRequestDialog
didCompleteWithResults:(NSDictionary *)results
{
    //User has done something.
    //Check "results" and do something.
	
	NSString *userData = gameRequestDialog.content.data;
	int map = [userData intValue];

	int dsListIndex = dsListCreate();
        
    NSString* to = @"to";
    dsMapAddInt(map, (char*)[to UTF8String], dsListIndex);
	 
	 NSArray *toarray = [ results objectForKey:@"to"];
	 
	 for (NSString* item  in toarray)
     {
		char *it8 =(char*)[item UTF8String];
		dsListAddString(dsListIndex, it8 );
     }
	 NSLog(@"gamerequestdialog completed with results for map %d",map);
}

- (void)gameRequestDialogDidCancel:(FBSDKGameRequestDialog *)gameRequestDialog
{
    //User has cancelled
   
	NSLog(@"gamerequestdialog was cancelled");
}

- (void)gameRequestDialog:(FBSDKGameRequestDialog *)gameRequestDialog 
didFailWithError:(NSError *)error
{
    //An error happened
    NSLog(@"gamerequestdialog error: %@", error);
    
}

//FBSDKSharingDelegate

- (void)sharer:(id<FBSDKSharing>)sharer didCompleteWithResults:(NSDictionary *)results {
NSLog(@" sharer completed");

	

}

- (void)sharer:(id<FBSDKSharing>)sharer didFailWithError:(NSError *)error {
NSLog(@"sharer fail %@",error.description);
}

- (void)sharerDidCancel:(id<FBSDKSharing>)sharer {
NSLog(@"sharer cancel");
}

- (void)FBinit;
{
    //facebook_init...appid must be in plist
    //..try to open cached session?
    //NB - login status may be already set to authorised in case of app cold start ( set via sessionStateChanged handler )
	
}


-(void)onResume
{
	[FBSDKAppEvents activateApp];
}

-(BOOL)onOpenURL:(NSURL*)url sourceApplication:(NSString*)sourceApplication annotation:(id)annotation
{

	BOOL handled = [[FBSDKApplicationDelegate sharedInstance] application:[UIApplication sharedApplication]
    openURL:url
    sourceApplication:sourceApplication
    annotation:annotation
	];
  // Add any custom logic here.
  return handled;
}

- (void)login:(NSArray*)_permissions loginType:(int)_loginType
{
    //set login type

    FBSDKLoginBehavior eType = FBSDKLoginBehaviorNative;
	
    switch(_loginType)
    {

        case 3: //"fb_login_forcing_webview",3);
            eType = FBSDKLoginBehaviorWeb; 
			break;
        case 4: //"fb_login_use_system_account",4);
            eType = FBSDKLoginBehaviorSystemAccount; 
			break;
		case 5: //"fb_login_forcing_safari",5);
			eType = FBSDKLoginBehaviorBrowser;
			break;

    }
    
	if([FBSDKAccessToken currentAccessToken] != nil)
	{
		NSLog(@"facebook_login: session already open");
		[self setLoginStatus:@"AUTHORISED"];
		return;
	}
    

    
    [self setLoginStatus:@"PROCESSING"];

	
	
	loginManager.loginBehavior = eType;
	[loginManager logInWithReadPermissions:_permissions fromViewController:g_controller 
			handler:loginHandler];
}

- (void)logout
{
	[loginManager logOut];
}

- (NSString*)loginStatus
{
    return mLoginStatus;
}

- (void)setLoginStatus:(NSString*)_status
{
    NSLog(@"Setting login status to %@\n", _status);
    mLoginStatus = _status;
}

- (NSString *)accessToken
{

    if ([FBSDKAccessToken currentAccessToken] != nil) 
	{
		return [[FBSDKAccessToken currentAccessToken]  tokenString];
	}
	
	
    return @"";
}

- (NSString *)userId
{
	if ([FBSDKAccessToken currentAccessToken] == nil)  {
        return @"";
    }	
	return [[FBSDKAccessToken currentAccessToken] userID];
}






-(void)parseInviteDialogResult:(NSURL*) resultURL dsMap:(int)map
{
    NSString* query=[resultURL absoluteString];
    NSArray *components = [query componentsSeparatedByString:@"&"];
    NSUInteger len = [components count];
    if( len > 1)
    {
        int dsListIndex = dsListCreate();
        
        int i=0;
        for (NSString *component in components)
        {
            NSArray *subcomponents = [component componentsSeparatedByString:@"="];
            len = [subcomponents count];
            if( len >1)
            {
                const char* key=[[subcomponents objectAtIndex:0] UTF8String];
                const char* val=[[subcomponents objectAtIndex:1] UTF8String];
                //[myArray addObject:val];
                if( i==0 ) {
                    dsMapAddString( map, (char*)key,(char*)val );
                    NSString* to = @"to";
                    dsMapAddInt(map, (char*)[to UTF8String], dsListIndex);
                }
                else
                {
                    dsListAddString(dsListIndex, (char*)val );
                }
            }
            ++i;
        }
    }

}

- (void)showDialog:(NSString*)dialogType params:(NSMutableDictionary*)params userData:(int)userData
{
    int mapIndex = userData; //for ds map response...
    //clear the map!
    if( mapIndex>=0)
    {
        dsMapClear(mapIndex);
    }
    bool bInviteDialog = [dialogType isEqualToString:@"apprequests"];
    
	if(!bInviteDialog)
	{
		FBSDKShareLinkContent *content = [[FBSDKShareLinkContent alloc] init];
		
		
		NSString *desc = [params objectForKey:@"description"];

		if(desc!=nil)
			content.contentDescription = desc;
		NSString *name = [params objectForKey:@"name"];
		if(name!=nil)
			content.contentTitle = name;
		
		NSString *contentURL = [params objectForKey:@"link"];
		if(contentURL !=nil)
			content.contentURL = [NSURL URLWithString:contentURL];
		
		NSString *imageURL = [params objectForKey:@"picture"];
		if(imageURL!=nil)
			content.imageURL =  [NSURL URLWithString:imageURL];
		
		NSString *caption = [params	objectForKey:@"caption"];
		if(caption!=nil)
			content.quote = caption;
		
		[FBSDKShareDialog showFromViewController:g_controller withContent:content delegate:self];
	}
	else
	{
		FBSDKGameRequestContent *gameRequestContent = [[FBSDKGameRequestContent alloc] init];
		// Look at FBSDKGameRequestContent for futher optional properties
		
		NSString *title = [params	objectForKey:@"title"];
		if(title!=nil)
			gameRequestContent.title = title;
		
		NSString *message = [params	objectForKey:@"message"];
		if(message!=nil)
			gameRequestContent.message = message;
		
		gameRequestContent.data =  [NSString stringWithFormat:@"%d",userData];
		[FBSDKGameRequestDialog showWithContent:gameRequestContent delegate:self];
	
	}
	
}

//graphRequest:nsGraphPath httpMethod:nsHttpMethod params:params dsMap:_dsMapIndex ];
-(void)graphRequest:(NSString*)_graphPath httpMethod:(NSString*)_httpMethod params:(NSMutableDictionary*)_params dsMap:(int)_dsMap
{
	if (![FBSDKAccessToken currentAccessToken])
    {
        NSLog(@"facebook graph request error: user not logged in");
        return;
    }
    
    //clear the map!
    if( _dsMap >=0)
    {
        dsMapClear(_dsMap);
    }
    
    int dsMapIndex = _dsMap;
    
    //OR-if we want to set graph API version...
    //FBRequest *request = [FBRequest requestWithGraphPath:_graphPath parameters:_params HTTPMethod:_httpMethod];
	FBSDKGraphRequest *request = [[FBSDKGraphRequest alloc] initWithGraphPath:_graphPath parameters:_params HTTPMethod:_httpMethod];
   
    [request startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error)
	{
		if(!error)
		{
			  NSLog(@"graphRequest Result: %@", result);
		}
		else
		{
			NSLog(@"error %@", error.description);
		}
		if(dsMapIndex >=0)
        {
             NSString* desc = [result description];
             if( result != nil)
             {
                 dsMapAddString(dsMapIndex, "response_text",(char*)[desc UTF8String]);
             
                 if( [result isKindOfClass:[NSDictionary class]] )
                 {
                     [self extractJSONData:result dsMapIndex:dsMapIndex];
                 }
             }
             else if( error )
             {
                 dsMapAddString(dsMapIndex, "response_text", (char*)[error.description UTF8String]);
             }
         }
		}];
    

}


// A function for parsing URL parameters returned by the Feed Dialog.
- (NSMutableDictionary*)parseURLParams:(NSString *)query
{
    NSArray *pairs = [query componentsSeparatedByString:@"&"];
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    for (NSString *pair in pairs) {
        NSArray *kv = [pair componentsSeparatedByString:@"="];
        NSString *val =[kv[1] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSString*key = [kv[0] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        params[key] = val;
    }
    return params;
}

// Handles the situation where an array is found within the json data
- (void)extractJSONDataArray:(NSArray*)objArray dsListIndex:(int)dsListIndex
{
    for (int arrayIndex = 0; arrayIndex < [objArray count]; ++arrayIndex)
    {
        NSObject* arrayObj = [objArray objectAtIndex:arrayIndex];
        if ([arrayObj isKindOfClass:[NSArray class]])
        {
            // Create a new ds_list for the array
            int dsNewListIndex = dsListCreate();
            
            // Add this map index to the list
            dsListAddInt(dsListIndex, dsNewListIndex);
            
            NSLog(@"Added ds_list %d to ds_list %d", dsNewListIndex, dsListIndex);
            
            // Add the ds_list index to the ds_map for the current key
            NSArray* objArray = (NSArray*)arrayObj;
            [self extractJSONDataArray:objArray dsListIndex:dsNewListIndex];
        }
        else if ([arrayObj isKindOfClass:[NSDictionary class]])
        {
            // Create a new ds_map and get the index for it...
            int subDsMap = dsMapCreate();
            
            // Add this map index to the list
            dsListAddInt(dsListIndex, subDsMap);
            
            // Recurse to parse the new dictionary
            NSDictionary* dictObj = (NSDictionary*)arrayObj;
            [self extractJSONData:dictObj dsMapIndex:subDsMap];
            
            NSLog(@"Added ds_map %d to ds_list %d", subDsMap, dsListIndex);
        }
        else if ([arrayObj isKindOfClass:[NSString class]])
        {
            // Add the string to the list
            NSString* str = (NSString*)arrayObj;
            char currentVal[256];
            [str getCString:currentVal maxLength:256 encoding:NSUTF8StringEncoding];
            dsListAddString(dsListIndex, currentVal);
            
            NSLog(@"Added %@ to ds_list %d", str, dsListIndex);
        }
    }
}

// Builds a ds_map from the jsonData contained in the given dictionary
- (void)extractJSONData:(NSDictionary*)jsonData dsMapIndex:(int)dsMapIndex
{
    NSArray* keys = [jsonData allKeys];
    for (int n = 0; n < [keys count]; ++n)
    {
        // Extract the current key in a form the C++ can use
        NSString* nsKey = [keys objectAtIndex:n];
        char currentKey[256];
        [nsKey getCString:currentKey maxLength:256 encoding:NSUTF8StringEncoding];
        
        NSObject* obj = [jsonData objectForKey:[keys objectAtIndex:n]];
        if ([obj isKindOfClass:[NSArray class]])
        {
            // Create a new ds_list for the array
            int dsListIndex = dsListCreate();
            
            // Add this map index to the list
            dsMapAddInt(dsMapIndex, currentKey, dsListIndex);
            
            NSLog(@"Added ds_list %d to ds_map %d for key %@", dsListIndex, dsMapIndex, nsKey);
            
            // Add the ds_list index to the ds_map for the current key
            NSArray* objArray = (NSArray*)obj;
            [self extractJSONDataArray:objArray dsListIndex:dsListIndex];
        }
        else if ([obj isKindOfClass:[NSDictionary class]])
        {
            // Create a new ds_map and get the index for it...
            int subDsMap = dsMapCreate();
            
            // Add this to the current ds_map
            dsMapAddInt(dsMapIndex, currentKey, subDsMap);
            
            // And recurse to parse the new dictionary
            NSDictionary* dictObj = (NSDictionary*)obj;
            [self extractJSONData:dictObj dsMapIndex:subDsMap];
            
            NSLog(@"Added new ds_map %d to ds_map %d for key %@", subDsMap, dsMapIndex, nsKey);
        }
        else if ([obj isKindOfClass:[NSString class]])
        {
            // Add the string to the map with the current key
            NSString* str = (NSString*)obj;
            char currentVal[256];
            [str getCString:currentVal maxLength:256 encoding:NSUTF8StringEncoding];
            dsMapAddString(dsMapIndex, currentKey, currentVal);
            
            NSLog(@"Added %@ to ds_map %d for key %@", str, dsMapIndex, nsKey);
        }
        else if([obj isKindOfClass:[NSNumber class] ])
        {
            NSNumber *num = (NSNumber *)obj;
            NSInteger val = [num integerValue];
            dsMapAddInt(dsMapIndex, currentKey, val);
            NSLog(@"Added %ld to ds_map %d for key %@", (long)val, dsMapIndex, nsKey);
        }
    }
}


-(bool)checkPermission:(NSString*)permission
{

	if ([FBSDKAccessToken currentAccessToken])
    {
		if ([[FBSDKAccessToken currentAccessToken] hasGranted:permission]) 
		{
			return true;
		}
    }
    else
    {
        NSLog(@"Facebook User must be logged in to query permissions");
    }
    return false;
}

-(void)requestPublishPermissions:(NSArray*)_permissions requestId:(int)_requestId
{

	[loginManager logInWithPublishPermissions:_permissions
                    fromViewController:g_controller
                               handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
							   if(error)
							   {
									NSLog(@"Error requesting publish permissions: %@", error.description);
							   }
							   else
							   {
									if(result.isCancelled)
										NSLog(@"Error requesting publish permissions: Cancelled");								
									else
										NSLog(@"Requesting publish permsissions - success");
										
							   }
 }];
NSLog(@"requestPublishPermissions: %@ %d", _permissions, _requestId);
}

-(void)requestReadPermissions:(NSArray*)_permissions requestId:(int)_requestId
{

		[loginManager logInWithReadPermissions:_permissions
                    fromViewController:g_controller
                               handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
			
							if(error)
							{
								NSLog(@"Error requesting read permissions: %@", error.description);
							}
							else
							{
								NSLog(@"Error requesting read permissions: %@", error.description);
							}
		}];
		NSLog(@"requestReadPermissions: %@ %d", _permissions, _requestId);

}


-(int)requestPermissions:(NSArray*)_permissions publish:(bool)_bPublish
{
    //session must be open: think we are fine since we login if necessary...

    

    int requestId = ++s_requestID;
    
	if(_bPublish)
	{
		[self requestPublishPermissions:_permissions requestId:requestId ];
	}
	else
	{
		[self requestReadPermissions:_permissions requestId:requestId];
	}

    return requestId;
}

-(void)facebook_refresh_accesstoken
{
	if ([FBSDKAccessToken currentAccessToken])
    {
		[FBSDKAccessToken  refreshCurrentAccessToken:^(FBSDKGraphRequestConnection *result, id res, NSError *error) {
							   if(error)
							   {
									NSLog(@"Error refreshCurrentAccessToken : %@", error.description);
							   }
							   else
							   {
									
										NSLog(@"refreshCurrentAccessToken - success");
										
							   }
		
		
        }];
		
    }
    
}

-(void) facebook_send_event:(NSString *)event_name
{
	[FBSDKAppEvents logEvent:event_name];
}


@end



