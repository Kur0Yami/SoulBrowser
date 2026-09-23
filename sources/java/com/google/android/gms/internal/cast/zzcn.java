package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* loaded from: classes.dex */
public final class zzcn {
    public static final Logger d = new Logger("AnalyticsConsent", null);

    /* renamed from: a, reason: collision with root package name */
    public final zzfu f9653a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfk f9654c = new zzfk(Looper.getMainLooper());

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.cast.zzfu, com.google.android.gms.common.api.GoogleApi] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.common.api.Api$ApiOptions] */
    public zzcn(Context context, long j) {
        this.f9653a = new GoogleApi(context, (Api<??>) zzga.f9700a, new Object(), GoogleApi.Settings.DEFAULT_SETTINGS);
        this.b = j;
    }
}
