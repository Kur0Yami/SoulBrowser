package com.google.android.gms.internal.auth_blockstore;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zzh extends zzb implements zzi {
    @Override // com.google.android.gms.internal.auth_blockstore.zzb
    public final boolean I1(int i, Parcel parcel) {
        boolean z = false;
        if (i != 1) {
            return false;
        }
        Status status = (Status) zzc.a(parcel, Status.CREATOR);
        if (parcel.readInt() != 0) {
            z = true;
        }
        zzb.f2(parcel);
        TaskUtil.setResultOrApiException(status, Boolean.valueOf(z), (TaskCompletionSource<Boolean>) ((zzy) this).f9593c);
        return true;
    }
}
