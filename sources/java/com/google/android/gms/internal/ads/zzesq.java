package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzesq implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f6895a;

    public zzesq(Bundle bundle) {
        this.f6895a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        Bundle bundle = this.f6895a;
        if (!bundle.isEmpty()) {
            zzczmVar.f5627a.putBundle("installed_adapter_data", bundle);
        }
    }
}
