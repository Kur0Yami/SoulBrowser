package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.ShowFirstParty;

@ShowFirstParty
/* loaded from: classes.dex */
public final class zzfup {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7670a;
    public final Looper b;

    public zzfup(Context context, Looper looper) {
        this.f7670a = context;
        this.b = looper;
    }

    public final void a(String str) {
        zzfuz D = zzfvb.D();
        Context context = this.f7670a;
        String packageName = context.getPackageName();
        D.k();
        ((zzfvb) D.f).E(packageName);
        D.k();
        ((zzfvb) D.f).G(2);
        zzfux D2 = zzfuy.D();
        D2.k();
        ((zzfuy) D2.f).E(str);
        D2.k();
        ((zzfuy) D2.f).F(2);
        D.k();
        ((zzfvb) D.f).F((zzfuy) D2.m());
        zzfuq zzfuqVar = new zzfuq(context, this.b, (zzfvb) D.m());
        synchronized (zzfuqVar.f7672c) {
            try {
                if (!zzfuqVar.d) {
                    zzfuqVar.d = true;
                    zzfuqVar.f7671a.checkAvailabilityAndConnect();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
