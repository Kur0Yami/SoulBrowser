package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzbx implements Parcelable.Creator {
    /* JADX WARN: Type inference failed for: r15v1, types: [com.google.android.gms.cast.MediaQueueData, java.lang.Object, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i = 0;
        long j = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        MediaQueueContainerMetadata mediaQueueContainerMetadata = null;
        ArrayList arrayList = null;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 3:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 4:
                    i = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 5:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 6:
                    mediaQueueContainerMetadata = (MediaQueueContainerMetadata) SafeParcelReader.createParcelable(parcel, readHeader, MediaQueueContainerMetadata.CREATOR);
                    break;
                case 7:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 8:
                    arrayList = SafeParcelReader.createTypedList(parcel, readHeader, MediaQueueItem.CREATOR);
                    break;
                case 9:
                    i3 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 10:
                    j = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 11:
                    z = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        ?? abstractSafeParcelable = new AbstractSafeParcelable();
        abstractSafeParcelable.f3448c = str;
        abstractSafeParcelable.f = str2;
        abstractSafeParcelable.g = i;
        abstractSafeParcelable.h = str3;
        abstractSafeParcelable.i = mediaQueueContainerMetadata;
        abstractSafeParcelable.j = i2;
        abstractSafeParcelable.k = arrayList;
        abstractSafeParcelable.l = i3;
        abstractSafeParcelable.m = j;
        abstractSafeParcelable.n = z;
        return abstractSafeParcelable;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new MediaQueueData[i];
    }
}
