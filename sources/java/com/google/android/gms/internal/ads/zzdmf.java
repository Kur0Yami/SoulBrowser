package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
final class zzdmf implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f5902a;
    public final zzfpi b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.client.zzv f5903c;
    public final zzfno d;

    public /* synthetic */ zzdmf(zzdmg zzdmgVar, zzfpi zzfpiVar, com.google.android.gms.ads.internal.util.client.zzv zzvVar, zzfno zzfnoVar) {
        this.f5902a = new WeakReference(zzdmgVar);
        this.b = zzfpiVar;
        this.f5903c = zzvVar;
        this.d = zzfnoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzdmg zzdmgVar = (zzdmg) this.f5902a.get();
        String str = (String) map.get("u");
        if (zzdmgVar != null && !TextUtils.isEmpty(str)) {
            this.b.b(str, this.f5903c, this.d, zzdmgVar.H);
        }
    }
}
