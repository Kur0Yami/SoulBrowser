package com.google.android.gms.internal.auth_blockstore;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zzn extends zzb implements zzo {
    @Override // com.google.android.gms.internal.auth_blockstore.zzb
    public final boolean I1(int i, Parcel parcel) {
        if (i == 1) {
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            int readInt = parcel.readInt();
            zzb.f2(parcel);
            TaskUtil.setResultOrApiException(status, Integer.valueOf(readInt), (TaskCompletionSource<Integer>) ((zzv) this).f9590c);
            return true;
        }
        return false;
    }
}
