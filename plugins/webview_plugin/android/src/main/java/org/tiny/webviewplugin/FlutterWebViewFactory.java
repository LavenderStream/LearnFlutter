package org.tiny.webviewplugin;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class FlutterWebViewFactory extends PlatformViewFactory {
    private Button mWebView;

    public FlutterWebViewFactory(BinaryMessenger createArgsCodec, Context context) {
        super(StandardMessageCodec.INSTANCE);
        mWebView = new Button(context);
        mWebView.setText("haha");
        mWebView.setBackgroundColor(Color.RED);
    }


    @Override
    public PlatformView create(Context context, int i, Object o) {
        return new PlatformView() {
            @Override
            public View getView() {
                return mWebView;
            }

            @Override
            public void dispose() {

            }
        };
    }
}
