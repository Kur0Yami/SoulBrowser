package com.google.android.gms.fido.fido2;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzh extends com.google.android.gms.internal.fido.zzq {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f3791c;

    public zzh(TaskCompletionSource taskCompletionSource) {
        this.f3791c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zzr
    public final void o(Status status, PendingIntent pendingIntent) {
        TaskUtil.setResultOrApiException(status, new Object(), (TaskCompletionSource<Object>) this.f3791c);
    }
}
