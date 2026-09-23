package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

@Deprecated
/* loaded from: classes.dex */
public class GoogleSignInResult implements Result {

    /* renamed from: c, reason: collision with root package name */
    public final Status f3381c;
    public final GoogleSignInAccount f;

    public GoogleSignInResult(GoogleSignInAccount googleSignInAccount, Status status) {
        this.f = googleSignInAccount;
        this.f3381c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f3381c;
    }
}
