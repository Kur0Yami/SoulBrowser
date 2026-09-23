package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
final class zzc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int readInt = parcel.readInt();
        for (ErrorCode errorCode : ErrorCode.values()) {
            if (readInt == errorCode.f3802c) {
                return errorCode;
            }
        }
        return ErrorCode.OTHER_ERROR;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ErrorCode[i];
    }
}
