package com.google.android.gms.internal.auth_blockstore;

import com.google.android.gms.auth.blockstore.RetrieveBytesResponse;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzw extends zze {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9591c;

    public zzw(TaskCompletionSource taskCompletionSource) {
        this.f9591c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.auth_blockstore.zze, com.google.android.gms.internal.auth_blockstore.zzm
    public final void k1(Status status, RetrieveBytesResponse retrieveBytesResponse) {
        TaskUtil.setResultOrApiException(status, retrieveBytesResponse, (TaskCompletionSource<RetrieveBytesResponse>) this.f9591c);
    }
}
