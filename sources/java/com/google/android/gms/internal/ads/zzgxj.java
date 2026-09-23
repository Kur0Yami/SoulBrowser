package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgxj extends zzgxl {
    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* synthetic */ void s(Object obj) {
        m((ListenableFuture) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final Object t(Object obj, Object obj2) {
        zzgxu zzgxuVar = (zzgxu) obj;
        ListenableFuture zza = zzgxuVar.zza(obj2);
        if (zza != null) {
            return zza;
        }
        throw new NullPointerException(zzgqr.b("AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgxuVar));
    }
}
