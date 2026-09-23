package com.google.android.gms.internal.appset;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zze extends zzb implements zzf {
    @Override // com.google.android.gms.internal.appset.zzb
    public final boolean I1(int i, Parcel parcel) {
        Status createFromParcel;
        com.google.android.gms.appset.zzc createFromParcel2;
        if (i == 1) {
            Parcelable.Creator<Status> creator = Status.CREATOR;
            int i2 = zzc.f9430a;
            AppSetIdInfo appSetIdInfo = null;
            if (parcel.readInt() == 0) {
                createFromParcel = null;
            } else {
                createFromParcel = creator.createFromParcel(parcel);
            }
            Status status = createFromParcel;
            Parcelable.Creator<com.google.android.gms.appset.zzc> creator2 = com.google.android.gms.appset.zzc.CREATOR;
            if (parcel.readInt() == 0) {
                createFromParcel2 = null;
            } else {
                createFromParcel2 = creator2.createFromParcel(parcel);
            }
            com.google.android.gms.appset.zzc zzcVar = createFromParcel2;
            zzo zzoVar = (zzo) this;
            if (zzcVar != null) {
                appSetIdInfo = new AppSetIdInfo(zzcVar.f3332c, zzcVar.f);
            }
            TaskUtil.setResultOrApiException(status, appSetIdInfo, (TaskCompletionSource<AppSetIdInfo>) zzoVar.f9435c);
            return true;
        }
        return false;
    }
}
