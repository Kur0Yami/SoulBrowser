package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;

/* loaded from: classes.dex */
public final class zzayw {

    /* renamed from: a, reason: collision with root package name */
    public NetworkCapabilities f4487a;

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzayw, java.lang.Object] */
    public static zzayw a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        ?? obj = new Object();
        if (connectivityManager != null && Build.VERSION.SDK_INT >= 24) {
            try {
                connectivityManager.registerDefaultNetworkCallback(new zzayv(obj));
                return obj;
            } catch (RuntimeException unused) {
                synchronized (zzayw.class) {
                    obj.f4487a = null;
                }
            }
        }
        return obj;
    }
}
