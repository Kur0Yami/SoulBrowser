package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "LocationSettingsRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class LocationSettingsRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final List f11572c;
    public final boolean f;
    public final boolean g;
    public final zzbj h;

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    public LocationSettingsRequest(ArrayList arrayList, boolean z, boolean z2, zzbj zzbjVar) {
        this.f11572c = arrayList;
        this.f = z;
        this.g = z2;
        this.h = zzbjVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, DesugarCollections.unmodifiableList(this.f11572c), false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f);
        SafeParcelWriter.writeBoolean(parcel, 3, this.g);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
