package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzeyo implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f7092a;

    public zzeyo(Bundle bundle) {
        this.f7092a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        Bundle bundle = this.f7092a;
        if (bundle != null) {
            zzczmVar.b.putAll(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        Bundle bundle = this.f7092a;
        if (bundle != null) {
            zzczmVar.f5627a.putAll(bundle);
        }
    }
}
