package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzfae implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final int f7152a;
    public final int b;

    public zzfae(int i, int i2) {
        this.f7152a = i;
        this.b = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final void zza(Object obj) {
        int i;
        Bundle bundle = ((zzczm) obj).f5627a;
        int i2 = this.f7152a;
        if (i2 != -1 && (i = this.b) != -1) {
            bundle.putInt("sessions_without_flags", i2);
            bundle.putInt("crashes_without_flags", i);
            com.google.android.gms.ads.internal.client.zzbb zzbbVar = com.google.android.gms.ads.internal.client.zzbb.g;
            if (com.google.android.gms.ads.internal.client.zzbd.zzc().j) {
                bundle.putBoolean("did_reset", true);
            }
        }
    }
}
