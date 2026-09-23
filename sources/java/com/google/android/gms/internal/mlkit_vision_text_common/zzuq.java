package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ImageMetadataParcelCreator")
/* loaded from: classes3.dex */
public final class zzuq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzuq> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f11433c;
    public final int f;
    public final int g;
    public final int h;
    public final long i;

    public zzuq(int i, int i2, int i3, int i4, long j) {
        this.f11433c = i;
        this.f = i2;
        this.g = i3;
        this.h = i4;
        this.i = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11433c);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.writeInt(parcel, 4, this.h);
        SafeParcelWriter.writeLong(parcel, 5, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
