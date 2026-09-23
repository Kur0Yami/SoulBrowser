package com.google.android.gms.internal.cast;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

@VisibleForTesting
/* loaded from: classes.dex */
class zzer extends BaseImplementation.ApiMethodImpl {
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void doExecute(zzew zzewVar) {
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzes(status);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        setResult((zzer) obj);
    }
}
