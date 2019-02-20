package org.tiny.webviewpluginexample;

import android.os.Bundle;

import org.tiny.webviewplugin.FlutterWebViewPlugin;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
        FlutterWebViewPlugin.registerWith(this);
    }
}
