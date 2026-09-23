package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public class zzhh<T> extends zzl {

    /* renamed from: c, reason: collision with root package name */
    public final TaskCompletionSource f10191c;

    public zzhh(TaskCompletionSource taskCompletionSource) {
        this.f10191c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void r3(Status status) {
        this.f10191c.a(new ApiException(status));
    }
}
