package com.google.android.gms.cast;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

@VisibleForTesting
/* loaded from: classes.dex */
class zzo extends com.google.android.gms.cast.internal.zzc {
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void doExecute(com.google.android.gms.cast.internal.zzx zzxVar) {
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzn(this, status);
    }
}
