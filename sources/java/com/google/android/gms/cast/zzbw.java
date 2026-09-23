package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzbw implements Parcelable.Creator {
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object, com.google.android.gms.cast.MediaQueueContainerMetadata, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        double d = 0.0d;
        String str = null;
        ArrayList arrayList = null;
        int i = 0;
        ArrayList arrayList2 = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 2) {
                if (fieldId != 3) {
                    if (fieldId != 4) {
                        if (fieldId != 5) {
                            if (fieldId != 6) {
                                SafeParcelReader.skipUnknownField(parcel, readHeader);
                            } else {
                                d = SafeParcelReader.readDouble(parcel, readHeader);
                            }
                        } else {
                            arrayList = SafeParcelReader.createTypedList(parcel, readHeader, WebImage.CREATOR);
                        }
                    } else {
                        arrayList2 = SafeParcelReader.createTypedList(parcel, readHeader, MediaMetadata.CREATOR);
                    }
                } else {
                    str = SafeParcelReader.createString(parcel, readHeader);
                }
            } else {
                i = SafeParcelReader.readInt(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        ?? abstractSafeParcelable = new AbstractSafeParcelable();
        abstractSafeParcelable.f3446c = i;
        abstractSafeParcelable.f = str;
        abstractSafeParcelable.g = arrayList2;
        abstractSafeParcelable.h = arrayList;
        abstractSafeParcelable.i = d;
        return abstractSafeParcelable;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new MediaQueueContainerMetadata[i];
    }
}
