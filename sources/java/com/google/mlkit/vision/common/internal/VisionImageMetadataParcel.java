package com.google.mlkit.vision.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@KeepForSdk
@SafeParcelable.Class(creator = "VisionImageMetadataParcelCreator")
/* loaded from: classes3.dex */
public class VisionImageMetadataParcel extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<VisionImageMetadataParcel> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f12813c;
    public final int f;
    public final long g;
    public final int h;
    public final int i;

    public VisionImageMetadataParcel(int i, int i2, int i3, int i4, long j) {
        this.f12813c = i;
        this.f = i2;
        this.i = i3;
        this.g = j;
        this.h = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f12813c);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.writeInt(parcel, 3, this.i);
        SafeParcelWriter.writeLong(parcel, 4, this.g);
        SafeParcelWriter.writeInt(parcel, 5, this.h);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
