package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "PartialDriveIdCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3706c;
    public final long f;
    public final int g;

    public zzq(int i, String str, long j) {
        this.f3706c = str;
        this.f = j;
        this.g = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3706c, false);
        SafeParcelWriter.writeLong(parcel, 3, this.f);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
