package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "TransferProgressEventCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzr extends AbstractSafeParcelable implements DriveEvent {
    public static final Parcelable.Creator<zzr> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.internal.drive.zzh f3694c;

    public zzr(com.google.android.gms.internal.drive.zzh zzhVar) {
        this.f3694c = zzhVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzr.class) {
            if (obj == this) {
                return true;
            }
            return Objects.equal(this.f3694c, ((zzr) obj).f3694c);
        }
        return false;
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public final int getType() {
        return 8;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3694c);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f3694c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
