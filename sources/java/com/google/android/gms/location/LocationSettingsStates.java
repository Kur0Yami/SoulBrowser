package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "LocationSettingsStatesCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class LocationSettingsStates extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11574c;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final boolean j;

    public LocationSettingsStates(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f11574c = z;
        this.f = z2;
        this.g = z3;
        this.h = z4;
        this.i = z5;
        this.j = z6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f11574c);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f);
        SafeParcelWriter.writeBoolean(parcel, 3, this.g);
        SafeParcelWriter.writeBoolean(parcel, 4, this.h);
        SafeParcelWriter.writeBoolean(parcel, 5, this.i);
        SafeParcelWriter.writeBoolean(parcel, 6, this.j);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
