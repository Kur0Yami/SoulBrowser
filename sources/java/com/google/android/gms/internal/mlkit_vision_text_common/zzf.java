package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "BoundingBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f11167c;
    public final int f;
    public final int g;
    public final int h;
    public final float i;

    public zzf(int i, int i2, int i3, int i4, float f) {
        this.f11167c = i;
        this.f = i2;
        this.g = i3;
        this.h = i4;
        this.i = f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f11167c);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.writeInt(parcel, 5, this.h);
        SafeParcelWriter.writeFloat(parcel, 6, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
