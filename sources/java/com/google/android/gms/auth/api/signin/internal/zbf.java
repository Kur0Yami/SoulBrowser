package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zbf extends zba {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zbg f3390c;

    public zbf(zbg zbgVar) {
        this.f3390c = zbgVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void Q0(GoogleSignInAccount googleSignInAccount, Status status) {
        if (googleSignInAccount != null) {
            zbn a2 = zbn.a(null);
            synchronized (a2) {
                a2.f3394a.c(googleSignInAccount, null);
            }
        }
        this.f3390c.setResult((zbg) new GoogleSignInResult(googleSignInAccount, status));
    }
}
