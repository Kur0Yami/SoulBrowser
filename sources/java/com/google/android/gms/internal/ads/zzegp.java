package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzegp implements zzdby, zzdan {
    public static final Object g = new Object();
    public static int h;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzg f6484c;
    public final zzegz f;

    public zzegp(zzegz zzegzVar, com.google.android.gms.ads.internal.util.zzj zzjVar) {
        this.f = zzegzVar;
        this.f6484c = zzjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void S(com.google.android.gms.ads.internal.client.zze zzeVar) {
        a(false);
    }

    public final void a(boolean z) {
        int i;
        int intValue;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a7)).booleanValue() && !this.f6484c.zzx()) {
            Object obj = g;
            synchronized (obj) {
                i = h;
                intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.b7)).intValue();
            }
            if (i < intValue) {
                zzegz zzegzVar = this.f;
                zzfmb a2 = zzegzVar.d.a(new Bundle());
                a2.k(new zzgyk(a2, new zzegy(zzegzVar, z)), zzcdo.g);
                synchronized (obj) {
                    h++;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final void zzg() {
        a(true);
    }
}
