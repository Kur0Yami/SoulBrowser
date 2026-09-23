package com.google.android.gms.fido.fido2;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzs extends com.google.android.gms.internal.fido.zzl {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f3796c;

    public zzs(TaskCompletionSource taskCompletionSource) {
        this.f3796c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zzm
    public final void o(Status status, PendingIntent pendingIntent) {
        TaskUtil.setResultOrApiException(status, new Object(), (TaskCompletionSource<Object>) this.f3796c);
    }
}
