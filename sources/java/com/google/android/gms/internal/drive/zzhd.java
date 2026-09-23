package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

@SafeParcelable.Class(creator = "UntrashResourceRequestCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzhd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzhd> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final DriveId f10189c;

    public zzhd(DriveId driveId) {
        this.f10189c = driveId;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10189c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
