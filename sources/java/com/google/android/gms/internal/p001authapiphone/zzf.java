package com.google.android.gms.internal.p001authapiphone;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zzf extends zzb implements zzg {
    @Override // com.google.android.gms.internal.p001authapiphone.zzb
    public final boolean I1(int i, Parcel parcel) {
        Status createFromParcel;
        boolean z = false;
        if (i != 1) {
            return false;
        }
        Parcelable.Creator<Status> creator = Status.CREATOR;
        int i2 = zzc.f9443a;
        if (parcel.readInt() == 0) {
            createFromParcel = null;
        } else {
            createFromParcel = creator.createFromParcel(parcel);
        }
        Status status = createFromParcel;
        if (parcel.readInt() != 0) {
            z = true;
        }
        zzc.a(parcel);
        TaskUtil.setResultOrApiException(status, Boolean.valueOf(z), (TaskCompletionSource<Boolean>) ((zzq) this).f9446c);
        return true;
    }
}
