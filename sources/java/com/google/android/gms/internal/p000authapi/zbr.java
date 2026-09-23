package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zbr extends zbb implements zbs {
    @Override // com.google.android.gms.internal.p000authapi.zbb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            Status status = (Status) zbc.a(parcel, Status.CREATOR);
            SaveAccountLinkingTokenResult saveAccountLinkingTokenResult = (SaveAccountLinkingTokenResult) zbc.a(parcel, SaveAccountLinkingTokenResult.CREATOR);
            zbc.c(parcel);
            boolean isSuccess = status.isSuccess();
            TaskCompletionSource taskCompletionSource = ((zbaf) this).f9452c;
            if (isSuccess) {
                taskCompletionSource.b(saveAccountLinkingTokenResult);
                return true;
            }
            taskCompletionSource.a(ApiExceptionUtil.fromStatus(status));
            return true;
        }
        return false;
    }
}
