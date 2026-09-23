package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

@SafeParcelable.Class(creator = "AddEventListenerRequestCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final DriveId f10201c;
    public final int f;
    public final com.google.android.gms.drive.events.zze g;
    public final com.google.android.gms.drive.events.zzx h;
    public final com.google.android.gms.drive.events.zzt i;

    public zzj(DriveId driveId, int i, com.google.android.gms.drive.events.zze zzeVar, com.google.android.gms.drive.events.zzx zzxVar, com.google.android.gms.drive.events.zzt zztVar) {
        this.f10201c = driveId;
        this.f = i;
        this.g = zzeVar;
        this.h = zzxVar;
        this.i = zztVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10201c, i, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.writeParcelable(parcel, 4, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.i, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
