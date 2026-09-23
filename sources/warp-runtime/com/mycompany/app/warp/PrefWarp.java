package com.mycompany.app.warp;

import android.content.Context;
import android.content.SharedPreferences;

/** Preferences for unofficial Cloudflare WARP (WebView proxy) mode. */
public final class PrefWarp {
    public static final String PREFS = "PrefWarp";
    public static final String KEY_MODE = "mWarpMode";
    public static final String KEY_PORT = "mWarpPort";
    public static final int DEFAULT_PORT = 19811;

    private PrefWarp() {}

    private static SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public static boolean isEnabled(Context context) {
        return prefs(context).getBoolean(KEY_MODE, false);
    }

    public static void setEnabled(Context context, boolean enabled) {
        prefs(context).edit().putBoolean(KEY_MODE, enabled).apply();
    }

    public static int getPort(Context context) {
        return prefs(context).getInt(KEY_PORT, DEFAULT_PORT);
    }

    public static void setPort(Context context, int port) {
        prefs(context).edit().putInt(KEY_PORT, port).apply();
    }

    public static String listenAddress(Context context) {
        return "127.0.0.1:" + getPort(context);
    }
}
