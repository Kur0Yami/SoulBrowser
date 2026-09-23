package com.google.android.gms.auth.account;

import android.accounts.Account;
import com.google.android.gms.common.api.Result;

@Deprecated
/* loaded from: classes.dex */
public interface WorkAccountApi {

    @Deprecated
    /* loaded from: classes.dex */
    public interface AddAccountResult extends Result {
        Account getAccount();
    }
}
