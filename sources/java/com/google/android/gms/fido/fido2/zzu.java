package com.google.android.gms.fido.fido2;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzu extends com.google.android.gms.internal.fido.zzd {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f3798c;

    public zzu(TaskCompletionSource taskCompletionSource) {
        this.f3798c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zze
    public final void E(Status status) {
        this.f3798c.c(new ApiException(status));
    }

    @Override // com.google.android.gms.internal.fido.zze
    public final void zzb(boolean z) {
        this.f3798c.b(Boolean.valueOf(z));
    }
}
