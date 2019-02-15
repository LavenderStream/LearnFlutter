package org.tiny.plugins;

import android.content.Context;
import android.os.Build;
import android.util.Log;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

/**
 * Created by tiny on 2/14/2019.
 */
public class LogUtilProviderPlugin {
    private static final String TAG = "LogUtil";
    private static final String CHANNEL_NAME = "org.tiny.plugins.log.LogUtil";


    public static void registerWith(Context context, BinaryMessenger messenger) {
        new MethodChannel(messenger, CHANNEL_NAME).setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                String message = methodCall.argument("message");
                switch (methodCall.method) {
                    case "v":
                        Log.v(TAG, message);
                        break;
                    case "d":
                        Log.d(TAG, message);
                        break;
                    case "i":
                        Log.i(TAG, message);
                        break;
                    case "w":
                        Log.w(TAG, message);
                        break;
                    case "e":
                        Log.e(TAG, message);
                        break;
                    case "wtf":
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.FROYO) {
                            Log.wtf(TAG, message);
                        }
                        break;
                }

                result.success(null);
            }
        });
    }
}
