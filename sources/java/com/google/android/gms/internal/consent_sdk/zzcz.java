package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzcz {

    /* renamed from: a, reason: collision with root package name */
    public static final Handler f10001a = new Handler(Looper.getMainLooper());
    public static final Executor b = new zzcy();

    public static void a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
        } else {
            throw new IllegalStateException("Method must be call on main thread.");
        }
    }
}
