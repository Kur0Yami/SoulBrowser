package com.google.android.gms.cast.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "CastEurekaInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaa> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f3609c;
    public final boolean f;
    public final boolean g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final boolean m;
    public final boolean n;

    public zzaa(int i, boolean z, boolean z2, String str, String str2, String str3, String str4, String str5, boolean z3, boolean z4) {
        this.f3609c = i;
        this.f = z;
        this.g = z2;
        this.h = str;
        this.i = str2;
        this.j = str3;
        this.k = str4;
        this.l = str5;
        this.m = z3;
        this.n = z4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzaa)) {
            return false;
        }
        zzaa zzaaVar = (zzaa) obj;
        if (this.f3609c == zzaaVar.f3609c && this.f == zzaaVar.f && this.g == zzaaVar.g && TextUtils.equals(this.h, zzaaVar.h) && TextUtils.equals(this.i, zzaaVar.i) && TextUtils.equals(this.j, zzaaVar.j) && TextUtils.equals(this.k, zzaaVar.k) && TextUtils.equals(this.l, zzaaVar.l) && this.m == zzaaVar.m && this.n == zzaaVar.n) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f3609c), Boolean.valueOf(this.f), Boolean.valueOf(this.g), this.h, this.i, this.j, this.k, this.l, Boolean.valueOf(this.m), Boolean.valueOf(this.n));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f3609c);
        SafeParcelWriter.writeBoolean(parcel, 3, this.f);
        SafeParcelWriter.writeBoolean(parcel, 4, this.g);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        SafeParcelWriter.writeString(parcel, 6, this.i, false);
        SafeParcelWriter.writeString(parcel, 7, this.j, false);
        SafeParcelWriter.writeString(parcel, 8, this.k, false);
        SafeParcelWriter.writeString(parcel, 9, this.l, false);
        SafeParcelWriter.writeBoolean(parcel, 10, this.m);
        SafeParcelWriter.writeBoolean(parcel, 11, this.n);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
