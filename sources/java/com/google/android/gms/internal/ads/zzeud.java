package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzeud implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final double f6942a;
    public final boolean b;

    public zzeud(double d, boolean z) {
        this.f6942a = d;
        this.b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        Bundle a2 = zzfiz.a("device", bundle);
        bundle.putBundle("device", a2);
        Bundle a3 = zzfiz.a("battery", a2);
        a2.putBundle("battery", a3);
        a3.putBoolean("is_charging", this.b);
        a3.putDouble("battery_level", this.f6942a);
    }
}
