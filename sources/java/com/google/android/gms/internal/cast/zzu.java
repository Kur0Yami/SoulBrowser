package com.google.android.gms.internal.cast;

import androidx.annotation.MainThread;
import com.google.android.gms.common.util.DefaultClock;
import j$.util.concurrent.ConcurrentHashMap;

@MainThread
/* loaded from: classes.dex */
public final class zzu {

    /* renamed from: a, reason: collision with root package name */
    public static zzu f9842a;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.cast.zzu, java.lang.Object] */
    public static synchronized void a() {
        synchronized (zzu.class) {
            if (f9842a == null) {
                ?? obj = new Object();
                new ConcurrentHashMap();
                DefaultClock.getInstance();
                f9842a = obj;
            }
        }
    }
}
