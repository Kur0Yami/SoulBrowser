package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ProgramRequestCreator")
/* loaded from: classes.dex */
public final class zzfvr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfvr> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f7690c;
    public final int f;
    public final String g;
    public final String h;
    public final int i;

    public zzfvr(String str, int i, int i2, String str2, int i3) {
        this.f7690c = i;
        this.f = i2;
        this.g = str;
        this.h = str2;
        this.i = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f7690c);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.writeInt(parcel, 5, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
