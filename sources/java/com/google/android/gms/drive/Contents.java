package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@KeepForSdk
@SafeParcelable.Class(creator = "ContentsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class Contents extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Contents> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ParcelFileDescriptor f3676c;
    public final int f;
    public final int g;
    public final DriveId h;
    public final boolean i;
    public final String j;

    public Contents(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, DriveId driveId, boolean z, String str) {
        this.f3676c = parcelFileDescriptor;
        this.f = i;
        this.g = i2;
        this.h = driveId;
        this.i = z;
        this.j = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f3676c, i, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.i);
        SafeParcelWriter.writeString(parcel, 8, this.j, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
