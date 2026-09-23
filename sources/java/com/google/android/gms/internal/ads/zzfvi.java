package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "GassRequestParcelCreator")
/* loaded from: classes.dex */
public final class zzfvi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfvi> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f7682c;
    public final String f;
    public final String g;

    public zzfvi(int i, String str, String str2) {
        this.f7682c = i;
        this.f = str;
        this.g = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f7682c);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
