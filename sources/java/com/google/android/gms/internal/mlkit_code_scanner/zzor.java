package com.google.android.gms.internal.mlkit_code_scanner;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "DriverLicenseParcelCreator")
/* loaded from: classes3.dex */
public final class zzor extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzor> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f10641c;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;

    public zzor(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14) {
        this.f10641c = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = str5;
        this.j = str6;
        this.k = str7;
        this.l = str8;
        this.m = str9;
        this.n = str10;
        this.o = str11;
        this.p = str12;
        this.q = str13;
        this.r = str14;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f10641c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.writeString(parcel, 5, this.i, false);
        SafeParcelWriter.writeString(parcel, 6, this.j, false);
        SafeParcelWriter.writeString(parcel, 7, this.k, false);
        SafeParcelWriter.writeString(parcel, 8, this.l, false);
        SafeParcelWriter.writeString(parcel, 9, this.m, false);
        SafeParcelWriter.writeString(parcel, 10, this.n, false);
        SafeParcelWriter.writeString(parcel, 11, this.o, false);
        SafeParcelWriter.writeString(parcel, 12, this.p, false);
        SafeParcelWriter.writeString(parcel, 13, this.q, false);
        SafeParcelWriter.writeString(parcel, 14, this.r, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
