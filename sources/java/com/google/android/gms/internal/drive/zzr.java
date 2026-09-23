package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "CreateContentsRequestCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f10267c;

    public zzr(int i) {
        boolean z;
        if (i != 536870912 && i != 805306368) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.checkArgument(z, "Cannot create a new read-only contents!");
        this.f10267c = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f10267c);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
