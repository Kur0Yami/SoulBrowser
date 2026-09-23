package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzaf extends zzah {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzag f9480c;

    public zzaf(zzag zzagVar) {
        this.f9480c = zzagVar;
    }

    @Override // com.google.android.gms.internal.auth.zzah, com.google.android.gms.auth.account.zzb
    public final void n2(boolean z) {
        Status status;
        if (z) {
            status = Status.RESULT_SUCCESS;
        } else {
            status = zzal.f9484a;
        }
        this.f9480c.setResult((zzag) new zzak(status));
    }
}
