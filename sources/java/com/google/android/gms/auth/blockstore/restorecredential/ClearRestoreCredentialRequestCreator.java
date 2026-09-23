package com.google.android.gms.auth.blockstore.restorecredential;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes.dex */
public final class ClearRestoreCredentialRequestCreator implements Parcelable.Creator<ClearRestoreCredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final ClearRestoreCredentialRequest createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            if (SafeParcelReader.getFieldId(readHeader) != 1) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                bundle = SafeParcelReader.createBundle(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new ClearRestoreCredentialRequest(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final ClearRestoreCredentialRequest[] newArray(int i) {
        return new ClearRestoreCredentialRequest[i];
    }
}
