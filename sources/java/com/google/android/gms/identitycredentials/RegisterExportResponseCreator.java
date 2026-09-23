package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes.dex */
public final class RegisterExportResponseCreator implements Parcelable.Creator<RegisterExportResponse> {
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.identitycredentials.RegisterExportResponse, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
    @Override // android.os.Parcelable.Creator
    public final RegisterExportResponse createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            SafeParcelReader.getFieldId(readHeader);
            SafeParcelReader.skipUnknownField(parcel, readHeader);
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new AbstractSafeParcelable();
    }

    @Override // android.os.Parcelable.Creator
    public final RegisterExportResponse[] newArray(int i) {
        return new RegisterExportResponse[i];
    }
}
