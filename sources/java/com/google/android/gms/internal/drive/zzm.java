package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

@SafeParcelable.Class(creator = "CloseContentsAndUpdateMetadataRequestCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final DriveId f10240c;
    public final MetadataBundle f;
    public final Contents g;
    public final boolean h;
    public final String i;
    public final int j;
    public final int k;
    public final boolean l;
    public final boolean m;

    public zzm(DriveId driveId, MetadataBundle metadataBundle, Contents contents, boolean z, String str, int i, int i2, boolean z2, boolean z3) {
        this.f10240c = driveId;
        this.f = metadataBundle;
        this.g = contents;
        this.h = z;
        this.i = str;
        this.j = i;
        this.k = i2;
        this.l = z2;
        this.m = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10240c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.g, i, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.h);
        SafeParcelWriter.writeString(parcel, 6, this.i, false);
        SafeParcelWriter.writeInt(parcel, 7, this.j);
        SafeParcelWriter.writeInt(parcel, 8, this.k);
        SafeParcelWriter.writeBoolean(parcel, 9, this.l);
        SafeParcelWriter.writeBoolean(parcel, 10, this.m);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
