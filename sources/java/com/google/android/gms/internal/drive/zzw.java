package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

@SafeParcelable.Class(creator = "CreateFileRequestCreator")
@SafeParcelable.Reserved({1, 10})
/* loaded from: classes.dex */
public final class zzw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzw> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final DriveId f10269c;
    public final MetadataBundle f;
    public final Contents g;
    public final Integer h;
    public final boolean i;
    public final String j;
    public final int k;
    public final int l;

    public zzw(DriveId driveId, MetadataBundle metadataBundle, Contents contents, int i, boolean z, String str, int i2, int i3) {
        boolean z2;
        if (contents != null && i3 != 0) {
            if (contents.f == i3) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.checkArgument(z2, "inconsistent contents reference");
        }
        if (i == 0 && contents == null && i3 == 0) {
            throw new IllegalArgumentException("Need a valid contents");
        }
        this.f10269c = (DriveId) Preconditions.checkNotNull(driveId);
        this.f = (MetadataBundle) Preconditions.checkNotNull(metadataBundle);
        this.g = contents;
        this.h = Integer.valueOf(i);
        this.j = str;
        this.k = i2;
        this.i = z;
        this.l = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10269c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.g, i, false);
        SafeParcelWriter.writeIntegerObject(parcel, 5, this.h, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.i);
        SafeParcelWriter.writeString(parcel, 7, this.j, false);
        SafeParcelWriter.writeInt(parcel, 8, this.k);
        SafeParcelWriter.writeInt(parcel, 9, this.l);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
