package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class zzcbt implements zzbck {

    /* renamed from: c, reason: collision with root package name */
    public final Context f5027c;
    public final Object f;
    public final String g;
    public boolean h;

    public zzcbt(Context context, String str) {
        this.f5027c = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.g = str;
        this.h = false;
        this.f = new Object();
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    public final void Q(zzbcj zzbcjVar) {
        a(zzbcjVar.j);
    }

    public final void a(boolean z) {
        zzcbw zzD = com.google.android.gms.ads.internal.zzt.zzD();
        Context context = this.f5027c;
        if (!zzD.a(context)) {
            return;
        }
        synchronized (this.f) {
            try {
                if (this.h == z) {
                    return;
                }
                this.h = z;
                String str = this.g;
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (this.h) {
                    zzcbw zzD2 = com.google.android.gms.ads.internal.zzt.zzD();
                    if (zzD2.a(context)) {
                        zzD2.j(context, str, "beginAdUnitExposure");
                    }
                } else {
                    zzcbw zzD3 = com.google.android.gms.ads.internal.zzt.zzD();
                    if (zzD3.a(context)) {
                        zzD3.j(context, str, "endAdUnitExposure");
                    }
                }
            } finally {
            }
        }
    }
}
