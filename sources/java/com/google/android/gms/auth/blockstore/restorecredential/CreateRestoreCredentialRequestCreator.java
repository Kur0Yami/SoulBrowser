package com.google.android.gms.auth.blockstore.restorecredential;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes.dex */
public final class CreateRestoreCredentialRequestCreator implements Parcelable.Creator<CreateRestoreCredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final CreateRestoreCredentialRequest createFromParcel(Parcel parcel) {
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
        return new CreateRestoreCredentialRequest(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final CreateRestoreCredentialRequest[] newArray(int i) {
        return new CreateRestoreCredentialRequest[i];
    }
}
