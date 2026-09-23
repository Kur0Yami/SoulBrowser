package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "InitializationParamsCreator")
/* loaded from: classes3.dex */
public final class zzcl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcl> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final long f10369c;
    public final long f;
    public final boolean g;
    public final String h;
    public final String i;
    public final String j;
    public final Bundle k;
    public final String l;

    public zzcl(long j, long j2, boolean z, String str, String str2, String str3, Bundle bundle, String str4) {
        this.f10369c = j;
        this.f = j2;
        this.g = z;
        this.h = str;
        this.i = str2;
        this.j = str3;
        this.k = bundle;
        this.l = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.f10369c);
        SafeParcelWriter.writeLong(parcel, 2, this.f);
        SafeParcelWriter.writeBoolean(parcel, 3, this.g);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.writeString(parcel, 5, this.i, false);
        SafeParcelWriter.writeString(parcel, 6, this.j, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.k, false);
        SafeParcelWriter.writeString(parcel, 8, this.l, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
