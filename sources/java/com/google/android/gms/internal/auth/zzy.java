package com.google.android.gms.internal.auth;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzy extends zzj {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9585c;

    public zzy(TaskCompletionSource taskCompletionSource) {
        this.f9585c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.auth.zzk
    public final void p4(Status status, Bundle bundle) {
        zzab.g(status, bundle, this.f9585c);
    }
}
