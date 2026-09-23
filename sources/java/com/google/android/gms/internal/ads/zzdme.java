package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
final class zzdme implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f5901a;
    public final WeakReference b;

    public /* synthetic */ zzdme(zzdmg zzdmgVar, View view) {
        this.f5901a = new WeakReference(zzdmgVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ne)).booleanValue()) {
            this.b = new WeakReference(view);
        } else {
            this.b = new WeakReference(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        String str;
        zzdmg zzdmgVar = (zzdmg) this.f5901a.get();
        if (zzdmgVar != null) {
            zzdmgVar.k.zza();
            zzbgb zzbgbVar = zzbgk.ne;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                View view = (View) this.b.get();
                zzfhr zzfhrVar = zzdmgVar.n;
                zzdon zzdonVar = zzdmgVar.I;
                zzdonVar.getClass();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue() && view != null) {
                    if (true != com.google.android.gms.ads.internal.util.zzab.zza(view)) {
                        str = "0";
                    } else {
                        str = "1";
                    }
                    zzdxd a2 = zzdonVar.f5967a.a();
                    a2.b("action", "hcp");
                    a2.b("hcp", str);
                    a2.a(zzfhrVar);
                    a2.c();
                }
            }
        }
    }
}
