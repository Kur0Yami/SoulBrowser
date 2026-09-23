package com.google.android.gms.internal.mlkit_code_scanner;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "GeoPointParcelCreator")
/* loaded from: classes3.dex */
public final class zzot extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzot> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final double f10643c;
    public final double f;

    public zzot(double d, double d2) {
        this.f10643c = d;
        this.f = d2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeDouble(parcel, 1, this.f10643c);
        SafeParcelWriter.writeDouble(parcel, 2, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
