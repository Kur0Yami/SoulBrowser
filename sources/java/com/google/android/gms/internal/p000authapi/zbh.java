package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zbh extends zbb implements zbi {
    @Override // com.google.android.gms.internal.p000authapi.zbb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            Status status = (Status) zbc.a(parcel, Status.CREATOR);
            AuthorizationResult authorizationResult = (AuthorizationResult) zbc.a(parcel, AuthorizationResult.CREATOR);
            zbc.c(parcel);
            boolean isSuccess = status.isSuccess();
            TaskCompletionSource taskCompletionSource = ((zbx) this).f9473c;
            if (isSuccess) {
                taskCompletionSource.b(authorizationResult);
                return true;
            }
            taskCompletionSource.a(ApiExceptionUtil.fromStatus(status));
            return true;
        }
        return false;
    }
}
