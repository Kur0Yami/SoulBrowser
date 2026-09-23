package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzbn extends zzbd {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9493c;

    public zzbn(TaskCompletionSource taskCompletionSource) {
        this.f9493c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.auth.zzbd, com.google.android.gms.internal.auth.zzbg
    public final void zzc(String str) {
        Status status;
        if (str != null) {
            status = Status.RESULT_SUCCESS;
        } else {
            status = new Status(3006);
        }
        TaskUtil.setResultOrApiException(status, str, (TaskCompletionSource<String>) this.f9493c);
    }
}
