package com.google.android.gms.internal.cast;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cast.framework.SessionTransferCallback;

@VisibleForTesting
/* loaded from: classes.dex */
public final class zzx extends SessionTransferCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzy f9865a;

    public zzx(zzy zzyVar) {
        this.f9865a = zzyVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void a(int i, int i2) {
        boolean z;
        zzcr zzcrVar = new zzcr(11);
        zzcrVar.f9659a = Integer.valueOf(i2);
        zzy zzyVar = this.f9865a;
        if (zzyVar.b.f == 2) {
            z = true;
        } else {
            z = false;
        }
        zzcrVar.b = Boolean.valueOf(z);
        zzyVar.a(new zzcs(zzcrVar));
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void b(int i) {
    }
}
