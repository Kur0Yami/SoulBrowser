package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zbt extends zbb implements zbu {
    @Override // com.google.android.gms.internal.p000authapi.zbb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            Status status = (Status) zbc.a(parcel, Status.CREATOR);
            SavePasswordResult savePasswordResult = (SavePasswordResult) zbc.a(parcel, SavePasswordResult.CREATOR);
            zbc.c(parcel);
            TaskUtil.setResultOrApiException(status, savePasswordResult, (TaskCompletionSource<SavePasswordResult>) ((zbag) this).f9453c);
            return true;
        }
        return false;
    }
}
