package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzern implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6850a;

    public zzern(Context context) {
        this.f6850a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        boolean z;
        if (ContextCompat.a(this.f6850a, "com.google.android.gms.permission.AD_ID") == 0) {
            z = true;
        } else {
            z = false;
        }
        return zzgym.a(new zzero(z));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 2;
    }
}
