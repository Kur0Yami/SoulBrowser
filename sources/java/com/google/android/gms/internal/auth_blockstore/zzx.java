package com.google.android.gms.internal.auth_blockstore;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzx extends zze {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9592c;

    public zzx(TaskCompletionSource taskCompletionSource) {
        this.f9592c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.auth_blockstore.zze, com.google.android.gms.internal.auth_blockstore.zzm
    public final void O3(Status status, byte[] bArr) {
        TaskUtil.setResultOrApiException(status, bArr, (TaskCompletionSource<byte[]>) this.f9592c);
    }
}
