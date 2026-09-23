package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
final class zzezr implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f7136a;

    public zzezr(Bundle bundle) {
        this.f7136a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        Bundle bundle = this.f7136a;
        if (!bundle.isEmpty()) {
            zzczmVar.b.putBundle("shared_pref", bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        Bundle bundle = this.f7136a;
        if (!bundle.isEmpty()) {
            zzczmVar.f5627a.putBundle("shared_pref", bundle);
        }
    }
}
