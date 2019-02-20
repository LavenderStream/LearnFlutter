package org.tiny.webviewplugin;

import android.content.Context;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

/**
 * Created by tiny on 2/20/2019.
 */
public class FlutterWebViewFactory extends PlatformViewFactory  {

    public FlutterWebViewFactory(BinaryMessenger messenger) {
        super(StandardMessageCodec.INSTANCE);
    }

    @Override
    public PlatformView create(Context context, int i, Object o) {
        return new FlutterWebView(context);
    }
}
