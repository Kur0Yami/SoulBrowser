package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzx extends IStatusCallback.Stub {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9584c;

    public zzx(TaskCompletionSource taskCompletionSource) {
        this.f9584c = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        zzab.g(status, null, this.f9584c);
    }
}
