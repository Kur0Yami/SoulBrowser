package com.google.android.gms.internal.p000authapi;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zbp extends zbb implements zbq {
    @Override // com.google.android.gms.internal.p000authapi.zbb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            Status status = (Status) zbc.a(parcel, Status.CREATOR);
            PendingIntent pendingIntent = (PendingIntent) zbc.a(parcel, PendingIntent.CREATOR);
            zbc.c(parcel);
            TaskUtil.setResultOrApiException(status, pendingIntent, (TaskCompletionSource<PendingIntent>) ((zban) this).f9458c);
            return true;
        }
        return false;
    }
}
