package com.google.android.gms.internal.mlkit_code_scanner;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "CalendarEventParcelCreator")
/* loaded from: classes3.dex */
public final class zzop extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzop> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f10639c;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final zzoo j;
    public final zzoo k;

    public zzop(String str, String str2, String str3, String str4, String str5, zzoo zzooVar, zzoo zzooVar2) {
        this.f10639c = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = str5;
        this.j = zzooVar;
        this.k = zzooVar2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f10639c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.writeString(parcel, 5, this.i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.j, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.k, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
