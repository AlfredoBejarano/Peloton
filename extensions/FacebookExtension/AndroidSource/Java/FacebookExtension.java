
package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;
import android.content.Intent;
import android.util.Log;
import android.app.Application;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.util.Log;

import java.lang.NullPointerException;
import java.lang.reflect.Field;
import java.net.URLConnection;
import java.net.URL;
import java.net.MalformedURLException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Collection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;
import android.net.Uri;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

//import com.facebook.UiLifecycleHelper;
//import com.facebook.Session;
//import com.facebook.SessionState;
//import com.facebook.Request;
//import com.facebook.Response;
//import com.facebook.HttpMethod;
//import com.facebook.RequestAsyncTask;
//import com.facebook.FacebookRequestError;
//import com.facebook.model.*;//GraphObject;
//import com.facebook.widget.WebDialog;
//import com.facebook.FacebookException;
//import com.facebook.FacebookOperationCanceledException;
import android.view.Window;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import com.facebook.*;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.facebook.share.model.GameRequestContent;
import com.facebook.share.widget.GameRequestDialog;
import com.facebook.share.model.AppInviteContent;
import com.facebook.share.widget.AppInviteDialog;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.widget.ShareDialog;
import com.facebook.share.Sharer;
import com.facebook.appevents.AppEventsLogger;

public class FacebookExtension
{

// Facebook communication settings
    public static final String STATUS_IDLE = "IDLE";
    public static final String STATUS_PROCESSING = "PROCESSING";
    public static final String STATUS_FAILED = "FAILED";
    public static final String STATUS_AUTHORISED = "AUTHORISED";
    private static final int EVENT_OTHER_SOCIAL = 70;
    
    public static String msLoginStatus = STATUS_IDLE; 
    public static String msUserId = ""; 
    private static int msRequestId = 1;
    private static boolean mbPermissionsRequestInProgress = false;
    private static List<String> mPermsRequested = null;
    private static boolean HaveRequestedUserId = false;

	private CallbackManager callbackManager;
	private LoginManager loginManager;
	
	private static boolean isSubsetOf(Collection<String> subset,
            Collection<String> superset) {
        for (String string : subset) {
            if (!superset.contains(string)) {
                return false;
            }
        }
        return true;
    }

	
	
	public void onActivityResult(Integer requestCode, Integer resultCode, Intent data)
	{
//		Session fbSession = Session.getActiveSession();
//		if(fbSession!=null)
//		{
//			fbSession.onActivityResult(RunnerActivity.CurrentActivity,requestCode,resultCode,data);
//		}
		callbackManager.onActivityResult(requestCode,resultCode,data);
		
		Log.i("yoyo","Got activity request code:"+requestCode+" resultCode:" + resultCode+ " data:" + data);
	}
	
	
	private String getFacebookSDKVersion()
    {
        String sdkVersion = null;
        ClassLoader classLoader = getClass().getClassLoader();
        Class<?> cls;
        try
        {
            cls = classLoader.loadClass("com.facebook.FacebookSdkVersion");
            Field field = cls.getField("BUILD");
            sdkVersion = String.valueOf(field.get(null));
        }
        catch (ClassNotFoundException e)
        {
            // error
        }
        catch (NoSuchFieldException e)
        {
            // error
        }
        catch (IllegalArgumentException e)
      	  {
            // error
        }
        catch (IllegalAccessException e)
        {
            // error
        }
        return sdkVersion;
    }
    
	public void initFacebook(String appID) {
		Log.i("yoyo", "RunnerFacebook.initFacebook: Facebook initialisation for " + appID);
		Log.i("yoyo", "Facebook SDK version: " + getFacebookSDKVersion());
		
		FacebookSdk.sdkInitialize(RunnerActivity.CurrentActivity.getApplicationContext());
		AppEventsLogger.activateApp(RunnerActivity.CurrentActivity);
		callbackManager = CallbackManager.Factory.create();
		loginManager = LoginManager.getInstance();
		LoginManager.getInstance().registerCallback(callbackManager,
            new FacebookCallback<LoginResult>() {
                @Override
                public void onSuccess(LoginResult loginResult) {
                    // App code
					Log.i("yoyo","Login onSuccess: result:"+loginResult);
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
					RunnerJNILib.dsMapAddInt(dsMapIndex, "requestId", msRequestId);
					RunnerJNILib.dsMapAddString(dsMapIndex, "type", "facebook_login_result");
					RunnerJNILib.dsMapAddInt(dsMapIndex, "requestId", msRequestId);
					RunnerJNILib.dsMapAddString(dsMapIndex,"status","success");
					AccessToken token = AccessToken.getCurrentAccessToken();
					if(token!=null)
					{
						if(!token.isExpired())
						{
							Set permissions = token.getPermissions();
				
							Iterator<String> it = permissions.iterator();
							while(it.hasNext())
							{
								RunnerJNILib.dsMapAddString(dsMapIndex,it.next(),"granted");
								//Log.i("yoyo","Found permission:"+it.next());
							}
							
							permissions = token.getDeclinedPermissions();
				
							it = permissions.iterator();
							while(it.hasNext())
							{
								RunnerJNILib.dsMapAddString(dsMapIndex,it.next(),"declined");
								//Log.i("yoyo","Found permission:"+it.next());
							}
						}
					}
					
					
					RunnerJNILib.CreateAsynEventWithDSMap( dsMapIndex, EVENT_OTHER_SOCIAL);
					SetLoginStatus( STATUS_AUTHORISED );
		
                }

                @Override
                public void onCancel() {
                     // App code
					Log.i("yoyo","Login onCancel");
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
					RunnerJNILib.dsMapAddInt(dsMapIndex, "requestId", msRequestId);
					RunnerJNILib.dsMapAddString(dsMapIndex, "type", "facebook_login_result");
					RunnerJNILib.dsMapAddInt(dsMapIndex, "requestId", msRequestId);
					RunnerJNILib.dsMapAddString(dsMapIndex,"status","cancelled");
					RunnerJNILib.CreateAsynEventWithDSMap( dsMapIndex, EVENT_OTHER_SOCIAL);
					SetLoginStatus( STATUS_FAILED );
                }

                @Override
                public void onError(FacebookException exception) {
                     // App code   
					Log.i("yoyo","Login onError: exception:"+exception);
					int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
					RunnerJNILib.dsMapAddInt(dsMapIndex, "requestId", msRequestId);
					RunnerJNILib.dsMapAddString(dsMapIndex, "type", "facebook_login_result");
					RunnerJNILib.dsMapAddInt(dsMapIndex, "requestId", msRequestId);
					RunnerJNILib.dsMapAddString(dsMapIndex,"status","error");
					RunnerJNILib.dsMapAddString(dsMapIndex,"exception",exception.getMessage());

					RunnerJNILib.CreateAsynEventWithDSMap( dsMapIndex, EVENT_OTHER_SOCIAL);
					SetLoginStatus( STATUS_FAILED );
                }
    });
	}
	
	public void facebook_send_event(String EventName)
	{
		AppEventsLogger logger = AppEventsLogger.newLogger(RunnerActivity.CurrentActivity);
		logger.logEvent(EventName);
	}
	
	public String getUserId()
	{
		if(Profile.getCurrentProfile()!=null)
		{
			Profile profile = Profile.getCurrentProfile();
			return profile.getId();
		}
		
		return "";
	}
	
	public String facebookLoginStatus() {
		
		return msLoginStatus;
	}
	

	// Handle FB authorisation
	static List<String> ms_FacebookPermissions;
    public void setupFacebook(String[] permissions) {    
    
		
		//Log.i("yoyo","setting up facebook for permissions:"+permissions);
	    	    
	    // If we have our custom Facebook permission then setup the necessary parts
	    final RunnerActivity activity = RunnerActivity.CurrentActivity;
	    
		// Store permissions for potential later use
		ms_FacebookPermissions = new ArrayList<String>(Arrays.asList(permissions));
		

		FacebookLogin(permissions);

    }	
	
    private static void SetLoginStatus( String newState)
    {
    	Log.i("yoyo", "Facebook login status: " + msLoginStatus);
    	msLoginStatus = newState;
    }
    
    //new permissions support WIP...
    public Boolean CheckPermission( String _permission )
    {

		AccessToken token = AccessToken.getCurrentAccessToken();
		if(token!=null)
		{
			if(!token.isExpired())
			{
				Log.i("yoyo","About to check for permission:" +_permission);
				Set permissions = token.getPermissions();
				
				Iterator<String> it = permissions.iterator();
				while(it.hasNext())
				{
					Log.i("yoyo","Found permission:"+it.next());
				}
				
				if(permissions.contains(_permission))
				{
					Log.i("yoyo","Permission found");
					return true;
				}
				
			}
		}
		Log.i("yoyo","Permission not found");
    	return false;
    }
    
    public Integer RequestPermissions( String[] _permissions, Boolean _bPublishPermission )
    {
		
		++msRequestId;
		mPermsRequested = Arrays.asList(_permissions);

		
		if(_bPublishPermission)
		{
			LoginManager.getInstance().logInWithPublishPermissions(    RunnerActivity.CurrentActivity,    mPermsRequested);
		}
		else
		{
			LoginManager.getInstance().logInWithReadPermissions(    RunnerActivity.CurrentActivity,    mPermsRequested);
		}
		
		return msRequestId;
		
    }
    
//  private static void PermissionsRequestResult(Session session, Exception exception)
//  {
//  	Log.i("yoyo", "Permssions request result");
//  	List<String> currentPerms = session.getPermissions();
//  	Log.i("yoyo", "current perms:" + currentPerms);
//  	Log.i("yoyo", "requested perms:" + mPermsRequested );
//  	int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
//  	RunnerJNILib.dsMapAddInt(dsMapIndex, "requestId", msRequestId);
//  	RunnerJNILib.dsMapAddString(dsMapIndex, "type", "facebook_permission_request");
//  	if( exception != null )
//  	{
//  		RunnerJNILib.dsMapAddString(dsMapIndex, "result", "error");
//  		String errorMsg = exception.getMessage();
//  		if( errorMsg != null ) {
//  			RunnerJNILib.dsMapAddString(dsMapIndex, "error", errorMsg);
//  		}
//  	}
//  	else
//  	{
//  		boolean bGranted = isSubsetOf(mPermsRequested, currentPerms);
//  		if( bGranted)
//  		{
//  			RunnerJNILib.dsMapAddString(dsMapIndex, "result", "granted");
//  		}
//  		else
//  		{
//  			RunnerJNILib.dsMapAddString(dsMapIndex, "result", "denied");
//  		}
//  		RunnerJNILib.CreateAsynEventWithDSMap( dsMapIndex, EVENT_OTHER_SOCIAL);
//  	}
//  	
//  }
    
	public void onResume()
	{

	}
	
	
	private boolean isNetworkAvailable() {	
        
        ConnectivityManager conMan = (ConnectivityManager) RunnerActivity.CurrentActivity.getApplicationContext().getSystemService(Context.CONNECTIVITY_SERVICE);
		NetworkInfo activeNetwork = conMan.getActiveNetworkInfo();
		return activeNetwork != null && activeNetwork.isConnected();
    }
	
	
	private void FacebookLogin(String[] permissions ) {
	
		//for(int i=0;i<ms_FacebookPermissions.length;i++)
		//	Log.i("yoyo", "Setting up Facebook for permissions " + ms_FacebookPermissions[i]);	
		SetLoginStatus( STATUS_PROCESSING );
		final List<String> permsList = Arrays.asList( permissions);
		RunnerActivity.ViewHandler.post(new Runnable() 
		{
			public void run() 
			{				
				Log.i("yoyo","Logging in with permissions:"+permsList);
//				Session.openActiveSession(RunnerActivity.CurrentActivity,true, permsList, fbSessionCallback);
				loginManager.logInWithReadPermissions(RunnerActivity.CurrentActivity,permsList);
			}
		});
	}
    
    public String getAccessToken()
    {
		AccessToken token = AccessToken.getCurrentAccessToken();
		if(token!=null)
		{
			if(!token.isExpired())
			{
				return token.getToken();
			}
		}
		return "";
    }
    
    // Log the user out from Facebook
    public void logout() 
	{
		loginManager.logOut();
    }
    
    // Handles the situation where an array is found within the json data
	private void extractJSONDataArray(JSONArray objArray, Integer dsListIndex)
	{       
    	for (int arrayIndex = 0; arrayIndex < objArray.length(); ++arrayIndex) 
	    {
		    Object arrayObj;
	    	try {	    	
	    	    arrayObj = objArray.get(arrayIndex);
	    	}
	    	catch (org.json.JSONException e) {
	    		e.printStackTrace();
	    		continue;
	    	}
	    	
        	if (arrayObj instanceof JSONArray)
    	    {
	            // Create a new ds_list for the array
        	    int dsNewListIndex = RunnerJNILib.dsListCreate();
            
            	// Add this map index to the list
    	        RunnerJNILib.dsListAddInt(dsListIndex, dsNewListIndex);
        
 	           	Log.i("yoyo", "Added ds_list " + dsNewListIndex + " to ds_list " + dsListIndex);
            
    	        // Add the ds_list index to the ds_map for the current key                      
            	extractJSONDataArray((JSONArray)objArray, dsNewListIndex); 
	        }
    	    else if (arrayObj instanceof JSONObject) 
        	{                    
            	// Create a new ds_map and get the index for it...
    	        int subDsMap = RunnerJNILib.dsMapCreate();
	            
            	// Add this map index to the list
        	    RunnerJNILib.dsListAddInt(dsListIndex, subDsMap);
            
	            // Recurse to parse the new dictionary
        	    translateJSONResponse((JSONObject)arrayObj, subDsMap);
            
	            Log.i("yoyo", "Added ds_map " + subDsMap + " to ds_list " + dsListIndex);
    	    }
        	else if (arrayObj instanceof String) 
	        {                    
    	        // Add the string to the list        	                     
    	        RunnerJNILib.dsListAddString(dsListIndex, (String)arrayObj);
        	    
            	Log.i("yoyo", "Added " + (String)arrayObj + " to ds_list " + dsListIndex);
	        } 
	        else if(arrayObj instanceof Integer)
    	    {
    			RunnerJNILib.dsListAddInt(dsListIndex, (Integer)arrayObj);
    			
    			Log.i("yoyo", "Added " + (Integer)arrayObj + " to ds_list " + dsListIndex );
    		} 
	        else 
	        {
        		String str = arrayObj.toString();
        		RunnerJNILib.dsListAddString(dsListIndex, str);
            	Log.i("yoyo", "Added " + str + " to ds_list " + dsListIndex); 
	        }
    	}
    }
    
    // Translates a JSON response from Facebook into ds_map/ds_list data
    private void translateJSONResponse(JSONObject response, Integer dsMapResponse) {
    
    	JSONArray keys = response.names();    
	    for (int n = 0; n < response.length(); ++n) 
    	{
	    	String currentKey;
	    	Object currentObj;
        	try {
	        	currentKey = (String)keys.get(n);
		        currentObj = response.get(currentKey);
		    }
		    catch (org.json.JSONException e) {
	    		e.printStackTrace();
	    		continue;
	    	}
        	//Log.i("yoyo","translateJSONResponse:key=" + currentKey.toString() + "=" + currentObj.toString());
    	    if (currentObj instanceof JSONArray) 
        	{
	            // Create a new ds_list for the array
    	        int dsListIndex = RunnerJNILib.dsListCreate();
            
        	    // Add this map index to the list
            	RunnerJNILib.dsMapAddInt(dsMapResponse, currentKey, dsListIndex);
            
	            Log.i("yoyo", "Added " + dsListIndex + " to ds_map " + dsMapResponse + " for key " + currentKey);
            
    	        // Add the ds_list index to the ds_map for the current key                  
            	extractJSONDataArray((JSONArray)currentObj, dsListIndex);
	        }
    	    else if (currentObj instanceof JSONObject) 
        	{
            	// Create a new ds_map and get the index for it...
	            int subDsMap = RunnerJNILib.dsMapCreate();
            
    	        // Add this to the current ds_map
        	    RunnerJNILib.dsMapAddInt(dsMapResponse, currentKey, subDsMap);
            
            	// And recurse to parse the new dictionary
    	        translateJSONResponse((JSONObject)currentObj, subDsMap);
            
        	    Log.i("yoyo", "Added new ds_map " + subDsMap + " to ds_map " + dsMapResponse + " for key " + currentKey);
	        }
    	    else if (currentObj instanceof String) 
        	{
            	// Add the string to the map with the current key                  
            	RunnerJNILib.dsMapAddString(dsMapResponse, currentKey, (String)currentObj);
            
	            Log.i("yoyo", "Added " + (String)currentObj + " to ds_map " + dsMapResponse + " for key " + currentKey);
    	    }
    	    else if(currentObj instanceof Integer)
    	    {
    			RunnerJNILib.dsMapAddInt(dsMapResponse, currentKey, (Integer)currentObj);
    			Log.i("yoyo", "Added " + (Integer)currentObj + " to ds_map " + dsMapResponse + " for key " + currentKey);
    		}
    	    else 
	        {
        		String str = currentObj.toString();
        		RunnerJNILib.dsMapAddString(dsMapResponse, currentKey, str);
	            Log.i("yoyo", "Added " + str + " to ds_map " + dsMapResponse + " for key " + currentKey); 
	        }
    	}    
    }
    
    // Posts a message to the users feed based on the set of key-value pairs found in the given array: ["key0", "value0", "key1", "value1"..."keyN", "valueN"]
	// See http://developers.facebook.com/docs/reference/api/user/#posts for the set of key-value pairs expected
    public void graphRequest(String _graphPath, String _httpMethod, String[] _keyValuePairs, Integer _dsMapResponse) 
    {

    	
    	final String graphPath = _graphPath;
		final String httpMethod = _httpMethod;
		final String[] keyValuePairs= _keyValuePairs;
    	final int dsMapResponse = _dsMapResponse;
    	
		
    	Runnable exec = new Runnable() {
    		public void run() 
    		{   
			    if ((keyValuePairs.length & 0x1) != 0) {
					throw new IllegalArgumentException("There must be an even number of strings forming key-value pairs");
				}
				if (!httpMethod.equals("GET") && !httpMethod.equals("POST")  && !httpMethod.equals("DELETE")) {
					throw new IllegalArgumentException("The httpMethod for a Facebook graph request must be one of 'GET', 'POST' or 'DELETE', value supplied was: " + httpMethod);
				}
					
				Log.i("yoyo", "Making graph API request for path: " + graphPath + " with httpMethod: " + httpMethod);
				try {
		    		Bundle parameters = new Bundle();    	        
		    	        
		    	    // Populate the Bundle parameters with the key-value pairs			
		    	    for (int n = 0; n < keyValuePairs.length; n += 2) {
									
			           	parameters.putString(keyValuePairs[n], keyValuePairs[n+1]);
		    	    }
		    	    
		    	    HttpMethod httpmethod = HttpMethod.POST;
		    		if(httpMethod.equals("GET"))
		    			httpmethod = HttpMethod.GET;
		    		else if(httpMethod.equals("DELETE"))
		    			httpmethod = HttpMethod.DELETE;
		    		
		    	  
		    		GraphRequest request = new GraphRequest(AccessToken.getCurrentAccessToken(), graphPath, parameters, httpmethod,new GraphRequest.Callback()
                    {
		    			public void onCompleted(GraphResponse response)
						{
							if( response != null )
							{
								Log.i("yoyo", "Facebook graph request COMPLETE: " + response.toString());	
								//add response to map
								if (dsMapResponse != -1) 
								{
									RunnerJNILib.dsMapAddString(dsMapResponse, "response_text", response.toString());
								}
							}
							
							JSONObject graphobj = response.getJSONObject();
							if(graphobj!=null)
							{
							
								//JSONObject graphResponse = graphobj.getInnerJSONObject();
										   
								if (dsMapResponse != -1) {
									translateJSONResponse(graphobj, dsMapResponse);
								}
							}
									   
							
							//FacebookRequestError error = response.getError();
							//if (error != null) {
							
						//		Log.i("yoyo","Error from facebook graphRequest response:" + error.getErrorMessage());
								//is response null in case of error? add error message to "response_text" ?
						//	}
						}
                    });
		
					request.executeAsync();
					//RequestAsyncTask task = new RequestAsyncTask(request);
					//task.execute();
				} 
			    catch(Exception e) {
		    	    e.printStackTrace();
		        }	
    		}
    	};
    	RunnerActivity.ViewHandler.post( exec );
    }
    

	private Bundle buildParamsBundle( String[] keyValuePairs )
	{
		Bundle parameters = new Bundle();
		if ((keyValuePairs.length & 0x1) != 0) {
			throw new IllegalArgumentException("There must be an even number of strings forming key-value pairs");
		}
		try {
    		// Populate the Bundle parameters with the key-value pairs
    	    for (int n = 0; n < keyValuePairs.length; n += 2) {
	        	parameters.putString(keyValuePairs[n], keyValuePairs[n+1]);
    	    }    	
    	}        
		catch(Exception e) {
    		e.printStackTrace();
        }
		return parameters;
	}
    
	public void facebook_refresh_accesstoken()
	{
		if(AccessToken.getCurrentAccessToken()!=null)
		{
			AccessToken.refreshCurrentAccessTokenAsync(new AccessToken.AccessTokenRefreshCallback(){
				@Override
				public void OnTokenRefreshed(AccessToken at)
				{
					Log.i("yoyo","Token refreshed");
				};
				@Override
				public void OnTokenRefreshFailed(FacebookException exception)
				{
					Log.i("yoyo","AccessToken refresh failed");
					Log.i("yoyo","OnTokenRefreshFailed: exception:"+exception);
					
				};
			});
		}
		else
			Log.i("yoyo","No access token to refresh");
		
	}
    
    public void dialog(String dialogType, String[] keyValuePairs, Integer dsMapResponse) 
	{  	
    	showDialog(dialogType, keyValuePairs,dsMapResponse);
    }
	
	public void inviteDialog(String dialogType, String[] keyValuePairs, Integer dsMapResponse) 
    {
    	showInviteDialog( keyValuePairs,dsMapResponse);
    }	   
    

    
    private void showInviteDialog( String[] _keyValuePairs, int _dsMapResponse)
    {
    	
		final String[] keyValuePairs = _keyValuePairs;
		final int mapIndex = _dsMapResponse;
	
		
		
		RunnerActivity.ViewHandler.post( new Runnable() 
		{
    	public void run() 
    	{
			//Session fbSession = Session.getActiveSession();
	    	//WebDialog.Builder dialogBuilder;
			
//			AppInviteDialog appInviteDialog = new AppInviteDialog(RunnerActivity.CurrentActivity);
//			if (appInviteDialog.canShow()) {
//				AppInviteContent.Builder content = new AppInviteContent.Builder();
//				content.setApplinkUrl(Uri.parse("https://developers.facebook.com/docs/ios/share/"));
//				content.setPreviewImageUrl("http://i.imgur.com/g3Qc1HN.png");
//				AppInviteContent appInviteContent = content.build();
//				//appInviteDialog.registerCallback(callbackManager, facebookCallback);
//				appInviteDialog.show(RunnerActivity.CurrentActivity, appInviteContent);
//			}
//		}
//		});		
			
			String title = "Title";
			String message= "Message";
			
			for (int n = 0; n < keyValuePairs.length-1; n += 2) 
			{
				if(keyValuePairs[n].equals("title"))
				{
					title = keyValuePairs[n+1];
				}
				else if(keyValuePairs[n].equals("message"))
				{
					message = keyValuePairs[n+1];
				}
			}	
				 
			
			GameRequestContent content = new GameRequestContent.Builder()
			.setTitle(title)
			.setMessage(message)
			.build();
		
			 GameRequestDialog g = new GameRequestDialog(RunnerActivity.CurrentActivity);
			 g.registerCallback(callbackManager, new FacebookCallback<GameRequestDialog.Result>() {
				 @Override
				 public void onSuccess(GameRequestDialog.Result o) {

					Log.i("yoyo","invite dialog success");
					 Log.i("yoyo", o.toString());
					 List recipients = o.getRequestRecipients();
					 String requestId = o.getRequestId();
					 Log.i("yoyo","Invite request="+ requestId);
					 for(int i=0;i<recipients.size();i++)
					 {
						Log.i("yoyo","to:" + recipients.get(i));
					 }
					 
					int numMappings = recipients.size();
			
					if( mapIndex >=0 && numMappings > 0)
					{
						
						if( requestId != null )
						{
							RunnerJNILib.dsMapAddString( mapIndex, "request", requestId );
							int dsListIndex = RunnerJNILib.dsListCreate();
							RunnerJNILib.dsMapAddInt( mapIndex, "to", dsListIndex);
							
							for(int i=0;i<recipients.size();i++)
							{
								RunnerJNILib.dsListAddString(dsListIndex, (String)(recipients.get(i)) );
							}
						}
					}
					 
					 
				 }

				 @Override
				 public void onCancel() {
					 Log.i("yoyo", "invite dialog  onCancel");
				 }

				 @Override
				 public void onError(FacebookException error) {
				 Log.i("yoyo", "invite dialog error:" + error.getMessage());
					 error.printStackTrace();
				 }
			 });
			 g.show(content);
		}
		});		
//	    	if( fbSession == null || !fbSession.isOpened())
//	    	{
//	    		//we can still present a dialog without an active session-
//	    		//passing null for applicationId should retrieve appID from manifest...
//	    		Log.i("yoyo","facebook dialog - no open session");
//	    		String appId = null;
//	    		dialogBuilder = new WebDialog.Builder(RunnerActivity.CurrentActivity, appId, action, params );
//	    	}
//	    	else
//	    	{
//	    		Log.i("yoyo","facebook dialog - with open session");
//	    		dialogBuilder = new WebDialog.Builder(RunnerActivity.CurrentActivity, fbSession, action, params );
//	    	}
//	    	
//	    	dialogBuilder.setOnCompleteListener( new WebDialog.OnCompleteListener()
//	    	{
//	    		@Override
//				public void onComplete(Bundle values, FacebookException error) {
//					if (error != null && !(error instanceof FacebookOperationCanceledException)) {
//						Log.i("yoyo","Error showing facebook dialog :" + error);
//					}
//					
//					if(values!=null)
//					{
//						Log.i("yoyo", "dialog completed: " + values.toString());
//						if( bInviteDialog )
//						{
//							//special case apprequests results for consistency with html5 response
//							parseInviteDialogResult( values, mapIndex);
//						}
//						else
//						{
//							if( mapIndex >=0 )
//							{
//								String key;
//				                String val;
//								Iterator<String> it = values.keySet().iterator();
//								while(it.hasNext()) {
//				                    key = it.next();
//									try{
//										val = values.get(key).toString();
//										Log.i("yoyo", "Added " + val + " to ds_map " + mapIndex + " for key " + key);
//										RunnerJNILib.dsMapAddString(mapIndex, key, val );
//									}
//									catch( Exception ex )
//									{
//										Log.i("yoyo", ex.getMessage());
//									}
//								}
//							}
//						}
//					}
//				}
//	    	});
//	    	
//	    	dialog = dialogBuilder.build();
//	    	Window dialog_window = dialog.getWindow();
//			dialog_window.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
//				WindowManager.LayoutParams.FLAG_FULLSCREEN);
//	
//			
//	    	dialog.show();
//   	}
//    	});
    }
	
	private void showDialog(String _action,String[] _keyValuePairs, int _dsMapResponse)
    {
    	final String action = _action;
		final String[] keyValuePairs = _keyValuePairs;
		final int mapIndex = _dsMapResponse;
		
		RunnerActivity.ViewHandler.post( new Runnable() 
		{
			public void run() 
			{
		
				if (ShareDialog.canShow(ShareLinkContent.class)) 
				{
					String contentUrl = "";
					String desc = "";
					String imageUrl = "";
					String title = "";
					
					for (int n = 0; n < keyValuePairs.length-1; n += 2) 
					{
						if(keyValuePairs[n].equals("name"))
						{
							title = keyValuePairs[n+1];
						}
						else if(keyValuePairs[n].equals("link"))
						{
							contentUrl = keyValuePairs[n+1];
						}
						else if(keyValuePairs[n].equals("picture"))
						{
							imageUrl = keyValuePairs[n+1];
						}
						else if(keyValuePairs[n].equals("description"))
						{
							desc = keyValuePairs[n+1];
						}	
					}					
					
					ShareDialog shareDialog = new ShareDialog(RunnerActivity.CurrentActivity);
					ShareLinkContent.Builder contentbuilder = new ShareLinkContent.Builder();
					
					if(!contentUrl.equals(""))
						contentbuilder.setContentUrl(Uri.parse(contentUrl));
					if(!desc.equals(""))
						contentbuilder.setContentDescription(desc);
					if(!imageUrl.equals(""))
						contentbuilder.setImageUrl(Uri.parse(imageUrl));
					if(!title.equals(""))
						contentbuilder.setContentTitle(title);
					ShareLinkContent content = contentbuilder.build();
					
					shareDialog.registerCallback(callbackManager, new FacebookCallback<ShareDialog.Result>() 
					{
						 @Override
						 public void onSuccess(Sharer.Result o) 
						 {

							Log.i("yoyo","share dialog success");
							Log.i("yoyo", o.toString());
							if(o.getPostId()!=null)
							{
								Log.i("yoyo","post_id="+o.getPostId());
						
								if( mapIndex >=0 )
								{
									RunnerJNILib.dsMapAddString(mapIndex, "post_id", o.getPostId() );			
								}
							}
						 }

						 @Override
						 public void onCancel() {
							 Log.i("yoyo", "share dialog  onCancel");
						 }

						 @Override
						 public void onError(FacebookException error) {
						 Log.i("yoyo", "invite dialog error:" + error.getMessage());
							 error.printStackTrace();
						 }
					 });
				
					shareDialog.show(content);
				}
			}
		});		

    }

}