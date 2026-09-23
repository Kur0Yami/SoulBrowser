package com.google.android.gms.internal.auth;

import android.accounts.Account;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzai implements WorkAccountApi.AddAccountResult {
    public static final Account g = new Account("DUMMY_NAME", "com.google");

    /* renamed from: c, reason: collision with root package name */
    public final Status f9481c;
    public final Account f;

    public zzai(Status status, Account account) {
        this.f9481c = status;
        this.f = account == null ? g : account;
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi.AddAccountResult
    public final Account getAccount() {
        return this.f;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f9481c;
    }
}
