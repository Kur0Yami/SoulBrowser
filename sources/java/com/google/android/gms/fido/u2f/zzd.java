package com.google.android.gms.fido.u2f;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.fido.zzu;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzd extends zzu {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f3815c;

    public zzd(TaskCompletionSource taskCompletionSource) {
        this.f3815c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zzv
    public final void o(Status status, PendingIntent pendingIntent) {
        TaskUtil.setResultOrApiException(status, new Object(), (TaskCompletionSource<Object>) this.f3815c);
    }
}
