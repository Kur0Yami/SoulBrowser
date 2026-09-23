package com.google.android.gms.internal.p001authapiphone;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zzi extends zzb implements zzj {
    public zzi() {
        super("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverResultCallback");
    }

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
            zzc.a(parcel);
            X3(createFromParcel);
            return true;
        }
        return false;
    }
}
