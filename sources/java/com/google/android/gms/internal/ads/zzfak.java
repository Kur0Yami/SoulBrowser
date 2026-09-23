package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class zzfak implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7160a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7161c;
    public final int d;
    public final boolean e;
    public final int f;

    public zzfak(int i, int i2, int i3, int i4, String str, boolean z) {
        this.f7160a = str;
        this.b = i;
        this.f7161c = i2;
        this.d = i3;
        this.e = z;
        this.f = i4;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        boolean z = true;
        zzfiz.b(bundle, "carrier", this.f7160a, !TextUtils.isEmpty(r0));
        int i = this.b;
        if (i == -2) {
            z = false;
        }
        zzfiz.c(bundle, "cnt", i, z);
        bundle.putInt("gnt", this.f7161c);
        bundle.putInt("pt", this.d);
        Bundle a2 = zzfiz.a("device", bundle);
        bundle.putBundle("device", a2);
        Bundle a3 = zzfiz.a("network", a2);
        a2.putBundle("network", a3);
        a3.putInt("active_network_state", this.f);
        a3.putBoolean("active_network_metered", this.e);
    }
}
