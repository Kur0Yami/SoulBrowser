package com.google.android.gms.fido.fido2;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzv extends com.google.android.gms.internal.fido.zzf {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f3799c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzv(TaskCompletionSource taskCompletionSource) {
        super("com.google.android.gms.fido.fido2.api.ICredentialListCallback");
        this.f3799c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zzg
    public final void D0(ArrayList arrayList) {
        this.f3799c.b(arrayList);
    }

    @Override // com.google.android.gms.internal.fido.zzg
    public final void E(Status status) {
        this.f3799c.c(new ApiException(status));
    }
}
