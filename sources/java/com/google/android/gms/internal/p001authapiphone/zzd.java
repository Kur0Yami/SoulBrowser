package com.google.android.gms.internal.p001authapiphone;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zzd extends zzb implements zze {
    @Override // com.google.android.gms.internal.p001authapiphone.zzb
    public final boolean I1(int i, Parcel parcel) {
        Status createFromParcel;
        if (i == 1) {
            Parcelable.Creator<Status> creator = Status.CREATOR;
            int i2 = zzc.f9443a;
            if (parcel.readInt() == 0) {
                createFromParcel = null;
            } else {
                createFromParcel = creator.createFromParcel(parcel);
            }
            int readInt = parcel.readInt();
            zzc.a(parcel);
            TaskUtil.setResultOrApiException(createFromParcel, Integer.valueOf(readInt), (TaskCompletionSource<Integer>) ((zzp) this).f9445c);
            return true;
        }
        return false;
    }
}
