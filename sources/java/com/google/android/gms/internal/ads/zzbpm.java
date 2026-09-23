package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AdapterStatusParcelCreator")
/* loaded from: classes.dex */
public final class zzbpm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbpm> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f4820c;
    public final boolean f;
    public final int g;
    public final String h;

    public zzbpm(String str, int i, String str2, boolean z) {
        this.f4820c = str;
        this.f = z;
        this.g = i;
        this.h = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f4820c, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
