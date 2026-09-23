package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzaa extends zzi {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9441c;

    public zzaa(TaskCompletionSource taskCompletionSource) {
        this.f9441c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzj
    public final void X3(Status status) {
        TaskUtil.setResultOrApiException(status, this.f9441c);
    }
}
