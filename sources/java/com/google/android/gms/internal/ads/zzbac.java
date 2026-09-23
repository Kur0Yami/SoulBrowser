package com.google.android.gms.internal.ads;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzbac {
    public static final String[] e = {"android:establish_vpn_service", "android:establish_vpn_manager"};

    /* renamed from: a, reason: collision with root package name */
    public long f4525a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f4526c;
    public boolean d;

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzbac, java.lang.Object] */
    public static zzbac a(Context context, Executor executor) {
        String[] strArr = e;
        ?? obj = new Object();
        obj.f4525a = 0L;
        obj.b = 0L;
        obj.f4526c = -1L;
        obj.d = false;
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                ((AppOpsManager) context.getSystemService("appops")).startWatchingActive(strArr, executor, new zzbab(obj));
            } catch (IllegalArgumentException | NoSuchMethodError unused) {
            }
        }
        return obj;
    }
}
