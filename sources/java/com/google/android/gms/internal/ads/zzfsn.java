package com.google.android.gms.internal.ads;

import android.os.Handler;

/* loaded from: classes.dex */
public final class zzfsn implements zzfsg {
    public static zzfsn d;

    /* renamed from: a, reason: collision with root package name */
    public float f7626a;
    public zzfsb b;

    /* renamed from: c, reason: collision with root package name */
    public zzfsf f7627c;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzfsn, java.lang.Object] */
    public static zzfsn a() {
        if (d == null) {
            ?? obj = new Object();
            obj.f7626a = 0.0f;
            d = obj;
        }
        return d;
    }

    @Override // com.google.android.gms.internal.ads.zzfsg
    public final void zzd(boolean z) {
        if (z) {
            zzftp.g.getClass();
            zzftp.b();
            return;
        }
        zzftp.g.getClass();
        Handler handler = zzftp.i;
        if (handler != null) {
            handler.removeCallbacks(zzftp.k);
            zzftp.i = null;
        }
    }
}
