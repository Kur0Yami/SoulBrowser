package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzan;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
class zzj extends zzan {

    /* renamed from: c, reason: collision with root package name */
    public final zzl f3344c;

    public zzj(zzl zzlVar) {
        super("com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferCallbacks");
        this.f3344c = zzlVar;
    }

    @Override // com.google.android.gms.internal.auth.zzan, com.google.android.gms.internal.auth.zzat
    public final void P(Status status) {
        TaskCompletionSource taskCompletionSource = this.f3344c.f3345a;
        int i = AccountTransferClient.f3342a;
        taskCompletionSource.a(new ApiException(status));
    }
}
