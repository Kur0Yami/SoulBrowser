package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

@SafeParcelable.Class(creator = "TransferProgressDataCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzh> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f10187c;
    public final DriveId f;
    public final int g;
    public final long h;
    public final long i;

    public zzh(int i, DriveId driveId, int i2, long j, long j2) {
        this.f10187c = i;
        this.f = driveId;
        this.g = i2;
        this.h = j;
        this.i = j2;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzh.class) {
            if (obj == this) {
                return true;
            }
            zzh zzhVar = (zzh) obj;
            if (this.f10187c == zzhVar.f10187c && Objects.equal(this.f, zzhVar.f) && this.g == zzhVar.g && this.h == zzhVar.h && this.i == zzhVar.i) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10187c), this.f, Integer.valueOf(this.g), Long.valueOf(this.h), Long.valueOf(this.i));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f10187c);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f, i, false);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.writeLong(parcel, 5, this.h);
        SafeParcelWriter.writeLong(parcel, 6, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
