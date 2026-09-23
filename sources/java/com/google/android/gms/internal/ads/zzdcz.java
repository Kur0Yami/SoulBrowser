package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzdcz extends zzdgi implements zzdbe, zzdcj {
    public final zzfhr f;
    public final AtomicBoolean g;
    public final zzfic h;

    public zzdcz(Set set, zzfhr zzfhrVar, zzfic zzficVar) {
        super(set);
        this.g = new AtomicBoolean();
        this.f = zzfhrVar;
        this.h = zzficVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final void n() {
        int i = this.f.b;
        if (i != 2 && i != 5 && i != 4 && i != 6 && i != 7) {
            return;
        }
        t0();
    }

    public final void t0() {
        final com.google.android.gms.ads.internal.client.zzt zztVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.W8)).booleanValue() && this.g.compareAndSet(false, true) && (zztVar = this.f.e0) != null && zztVar.zza == 3) {
            s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzdcy
                @Override // com.google.android.gms.internal.ads.zzdgh
                public final /* synthetic */ void zza(Object obj) {
                    ((zzddb) obj).a(com.google.android.gms.ads.internal.client.zzt.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final void zzl() {
        if (this.f.b == 1) {
            t0();
        }
    }
}
