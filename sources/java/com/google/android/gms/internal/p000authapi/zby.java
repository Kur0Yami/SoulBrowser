package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zby extends IStatusCallback.Stub {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9474c;

    public zby(TaskCompletionSource taskCompletionSource) {
        this.f9474c = taskCompletionSource;
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        boolean isSuccess = status.isSuccess();
        TaskCompletionSource taskCompletionSource = this.f9474c;
        if (isSuccess) {
            taskCompletionSource.b(null);
        } else {
            taskCompletionSource.a(ApiExceptionUtil.fromStatus(status));
        }
    }
}
