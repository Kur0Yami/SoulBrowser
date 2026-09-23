package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzetw implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final int f6934a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f6935c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final float i;
    public final boolean j;
    public final boolean k;

    public zzetw(int i, boolean z, boolean z2, int i2, int i3, int i4, int i5, int i6, float f, boolean z3, boolean z4) {
        this.f6934a = i;
        this.b = z;
        this.f6935c = z2;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = i6;
        this.i = f;
        this.j = z3;
        this.k = z4;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.qc)).booleanValue()) {
            bundle.putInt("muv_min", this.e);
            bundle.putInt("muv_max", this.f);
        }
        bundle.putFloat("android_app_volume", this.i);
        bundle.putBoolean("android_app_muted", this.j);
        if (!this.k) {
            bundle.putInt("am", this.f6934a);
            bundle.putBoolean("ma", this.b);
            bundle.putBoolean("sp", this.f6935c);
            bundle.putInt("muv", this.d);
            bundle.putInt("rm", this.g);
            bundle.putInt("riv", this.h);
        }
    }
}
