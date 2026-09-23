package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zbam extends IStatusCallback.Stub {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9457c;

    public zbam(zbat zbatVar, TaskCompletionSource taskCompletionSource) {
        this.f9457c = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        TaskUtil.setResultOrApiException(status, this.f9457c);
    }
}
