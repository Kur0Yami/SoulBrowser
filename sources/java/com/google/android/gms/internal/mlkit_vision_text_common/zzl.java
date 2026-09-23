package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "LineBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzr[] f11331c;
    public final zzf f;
    public final zzf g;
    public final zzf h;
    public final String i;
    public final float j;
    public final String k;
    public final int l;
    public final boolean m;
    public final int n;
    public final int o;

    public zzl(zzr[] zzrVarArr, zzf zzfVar, zzf zzfVar2, zzf zzfVar3, String str, float f, String str2, int i, boolean z, int i2, int i3) {
        this.f11331c = zzrVarArr;
        this.f = zzfVar;
        this.g = zzfVar2;
        this.h = zzfVar3;
        this.i = str;
        this.j = f;
        this.k = str2;
        this.l = i;
        this.m = z;
        this.n = i2;
        this.o = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.f11331c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i, false);
        SafeParcelWriter.writeString(parcel, 6, this.i, false);
        SafeParcelWriter.writeFloat(parcel, 7, this.j);
        SafeParcelWriter.writeString(parcel, 8, this.k, false);
        SafeParcelWriter.writeInt(parcel, 9, this.l);
        SafeParcelWriter.writeBoolean(parcel, 10, this.m);
        SafeParcelWriter.writeInt(parcel, 11, this.n);
        SafeParcelWriter.writeInt(parcel, 12, this.o);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
