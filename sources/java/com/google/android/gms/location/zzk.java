package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzk implements Parcelable.Creator<ActivityRecognitionResult> {
    /* JADX WARN: Type inference failed for: r15v1, types: [com.google.android.gms.location.ActivityRecognitionResult, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
    @Override // android.os.Parcelable.Creator
    public final ActivityRecognitionResult createFromParcel(Parcel parcel) {
        boolean z;
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList arrayList = null;
        boolean z2 = false;
        Bundle bundle = null;
        long j = 0;
        long j2 = 0;
        int i = 0;
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
                                bundle = SafeParcelReader.createBundle(parcel, readHeader);
                            }
                        } else {
                            i = SafeParcelReader.readInt(parcel, readHeader);
                        }
                    } else {
                        j2 = SafeParcelReader.readLong(parcel, readHeader);
                    }
                } else {
                    j = SafeParcelReader.readLong(parcel, readHeader);
                }
            } else {
                arrayList = SafeParcelReader.createTypedList(parcel, readHeader, DetectedActivity.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        ?? abstractSafeParcelable = new AbstractSafeParcelable();
        if (arrayList != null && arrayList.size() > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "Must have at least 1 detected activity");
        if (j > 0 && j2 > 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2, "Must set times");
        abstractSafeParcelable.f11562c = arrayList;
        abstractSafeParcelable.f = j;
        abstractSafeParcelable.g = j2;
        abstractSafeParcelable.h = i;
        abstractSafeParcelable.i = bundle;
        return abstractSafeParcelable;
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ActivityRecognitionResult[] newArray(int i) {
        return new ActivityRecognitionResult[i];
    }
}
