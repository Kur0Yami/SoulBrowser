package com.google.android.gms.internal.auth;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzaa extends zzj {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9477c;

    public zzaa(TaskCompletionSource taskCompletionSource) {
        this.f9477c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.auth.zzk
    public final void p4(Status status, Bundle bundle) {
        zzab.g(status, bundle, this.f9477c);
    }
}
