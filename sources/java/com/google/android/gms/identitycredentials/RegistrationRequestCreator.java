package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class RegistrationRequestCreator implements Parcelable.Creator<RegistrationRequest> {
    @Override // android.os.Parcelable.Creator
    public final RegistrationRequest createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        List list = Collections.EMPTY_LIST;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        String str2 = str;
        byte[] bArr = null;
        byte[] bArr2 = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        if (fieldId != 4) {
                            if (fieldId != 5) {
                                SafeParcelReader.skipUnknownField(parcel, readHeader);
                            } else {
                                list = SafeParcelReader.createStringList(parcel, readHeader);
                            }
                        } else {
                            str2 = SafeParcelReader.createString(parcel, readHeader);
                        }
                    } else {
                        str = SafeParcelReader.createString(parcel, readHeader);
                    }
                } else {
                    bArr2 = SafeParcelReader.createByteArray(parcel, readHeader);
                }
            } else {
                bArr = SafeParcelReader.createByteArray(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new RegistrationRequest(bArr, bArr2, str, str2, list);
    }

    @Override // android.os.Parcelable.Creator
    public final RegistrationRequest[] newArray(int i) {
        return new RegistrationRequest[i];
    }
}
