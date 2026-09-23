package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzexu implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final zzfhq f7064a;

    public zzexu(zzfhq zzfhqVar) {
        this.f7064a = zzfhqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final void zza(Object obj) {
        boolean z;
        zzczm zzczmVar = (zzczm) obj;
        zzfhq zzfhqVar = this.f7064a;
        if (zzfhqVar != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.nd)).booleanValue()) {
                Bundle bundle = zzczmVar.f5627a;
                synchronized (zzfhqVar.f7366c) {
                    zzfhqVar.c();
                    if (zzfhqVar.e == 2) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                bundle.putBoolean("render_in_browser", z);
                bundle.putBoolean("disable_ml", zzfhqVar.b());
            }
        }
    }
}
