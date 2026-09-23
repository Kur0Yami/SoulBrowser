package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzetb implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzx f6908a;
    public final boolean b;

    public zzetb(com.google.android.gms.ads.internal.client.zzx zzxVar, boolean z) {
        this.f6908a = zzxVar;
        this.b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o6)).booleanValue()) {
            bundle.putBoolean("app_switched", this.b);
        }
        com.google.android.gms.ads.internal.client.zzx zzxVar = this.f6908a;
        if (zzxVar != null) {
            int i = zzxVar.zza;
            if (i == 1) {
                bundle.putString("avo", "p");
            } else if (i == 2) {
                bundle.putString("avo", "l");
            }
        }
    }
}
