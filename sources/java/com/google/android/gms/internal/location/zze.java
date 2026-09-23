package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
final class zze extends zzf {
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(zzaz zzazVar) {
        zzaz zzazVar2 = zzazVar;
        zzazVar2.checkConnected();
        Preconditions.checkNotNull(null);
        ((zzam) zzazVar2.getService()).zzk();
        setResult((zze) Status.RESULT_SUCCESS);
    }
}
