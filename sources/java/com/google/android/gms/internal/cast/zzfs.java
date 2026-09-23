package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzfs extends zzgj {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9696c;

    public zzfs(zzfu zzfuVar, TaskCompletionSource taskCompletionSource) {
        this.f9696c = taskCompletionSource;
        Objects.requireNonNull(zzfuVar);
    }

    @Override // com.google.android.gms.internal.cast.zzgj, com.google.android.gms.internal.cast.zzgf
    public final void w2(Status status, zzgc zzgcVar) {
        TaskUtil.setResultOrApiException(status, new Response(new zzgi(Status.RESULT_SUCCESS, zzgcVar)), (TaskCompletionSource<Response>) this.f9696c);
    }
}
