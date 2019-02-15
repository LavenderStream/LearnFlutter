package org.tiny.learnflutter;

import android.os.Bundle;

import org.tiny.plugins.LogUtilProviderPlugin;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
        LogUtilProviderPlugin.registerWith(this, getFlutterView());
    }
}
