package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
final class zzedy implements zzddq {

    /* renamed from: c, reason: collision with root package name */
    public final Context f6410c;
    public final zzcbw f;

    public zzedy(Context context, zzcbw zzcbwVar) {
        this.f6410c = context;
        this.f = zzcbwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void N(zzfic zzficVar) {
        String str = zzficVar.b.b.e;
        if (!TextUtils.isEmpty(str)) {
            zzcbw zzcbwVar = this.f;
            Context context = this.f6410c;
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzficVar.f7383a.f7378a.d;
            zzcbwVar.getClass();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.W0)).booleanValue() && zzcbwVar.a(context) && zzcbw.g(context)) {
                synchronized (zzcbwVar.i) {
                }
            }
            zzcbwVar.h(context, "_aq", str, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void f(zzbza zzbzaVar) {
    }
}
