package org.tiny.webviewplugin;

import android.widget.Button;
import android.widget.ImageView;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** WebviewPlugin */
public class WebviewPlugin implements MethodCallHandler {
    private FlutterActivity mActivity;
    public WebviewPlugin(FlutterActivity activity, MethodChannel channel){
        this.mActivity  = activity;

    }
    /** Plugin registration. */
    public static void registerWith(Registrar registrar) {
       /* final MethodChannel channel = new MethodChannel(registrar.messenger(), "org.tiny.webviewplugin.webview");
        channel.setMethodCallHandler(new WebviewPlugin((FlutterActivity) registrar.activity(), channel));*/

        registrar.platformViewRegistry().registerViewFactory("webviewplugin",
                new FlutterWebViewFactory(registrar.messenger(), registrar.activity()));
    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {
        if ("loadUrl".equals(call.method)){
            result.success(null);
        }else {
            result.notImplemented();
        }
    }
}
