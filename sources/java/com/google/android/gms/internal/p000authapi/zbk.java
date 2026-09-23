package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zbk extends zbb implements zbl {
    @Override // com.google.android.gms.internal.p000authapi.zbb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            Status status = (Status) zbc.a(parcel, Status.CREATOR);
            BeginSignInResult beginSignInResult = (BeginSignInResult) zbc.a(parcel, BeginSignInResult.CREATOR);
            zbc.c(parcel);
            TaskUtil.setResultOrApiException(status, beginSignInResult, (TaskCompletionSource<BeginSignInResult>) ((zbal) this).f9456c);
            return true;
        }
        return false;
    }
}
