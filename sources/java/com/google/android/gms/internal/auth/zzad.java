package com.google.android.gms.internal.auth;

import android.accounts.Account;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzad extends zzah {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzae f9479c;

    public zzad(zzae zzaeVar) {
        this.f9479c = zzaeVar;
    }

    @Override // com.google.android.gms.internal.auth.zzah, com.google.android.gms.auth.account.zzb
    public final void q4(Account account) {
        Status status;
        if (account != null) {
            status = Status.RESULT_SUCCESS;
        } else {
            status = zzal.f9484a;
        }
        this.f9479c.setResult((zzae) new zzai(status, account));
    }
}
