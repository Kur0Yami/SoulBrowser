package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzeyn implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f7091a;

    public zzeyn(Bundle bundle) {
        this.f7091a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return zzgym.a(new zzeyo(this.f7091a));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 30;
    }
}
