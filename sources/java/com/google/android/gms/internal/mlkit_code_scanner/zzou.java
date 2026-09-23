package com.google.android.gms.internal.mlkit_code_scanner;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "PersonNameParcelCreator")
/* loaded from: classes3.dex */
public final class zzou extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzou> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f10644c;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;

    public zzou(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f10644c = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = str5;
        this.j = str6;
        this.k = str7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f10644c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.writeString(parcel, 5, this.i, false);
        SafeParcelWriter.writeString(parcel, 6, this.j, false);
        SafeParcelWriter.writeString(parcel, 7, this.k, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
