package org.tiny.webviewplugin;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;

import io.flutter.plugin.platform.PlatformView;

public class FlutterWebView implements PlatformView {
    private final WebView mWebView;

    FlutterWebView(Context context) {
        mWebView = new WebView(context);
        mWebView.loadUrl("http://www.hao123.com");
    }

    @Override
    public View getView() {
        return mWebView;
    }

    @Override
    public void dispose() {
    }
}