package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzexr implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f7062a;

    public zzexr(Bundle bundle) {
        this.f7062a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        Bundle a2 = zzfiz.a("device", bundle);
        a2.putBundle("android_mem_info", this.f7062a);
        bundle.putBundle("device", a2);
    }
}
