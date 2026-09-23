package com.google.android.gms.cast.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* loaded from: classes.dex */
public abstract class zzc extends BaseImplementation.ApiMethodImpl {
    public final void a() {
        setResult((zzc) createFailedResult(new Status(2001)));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        setResult((zzc) obj);
    }
}
