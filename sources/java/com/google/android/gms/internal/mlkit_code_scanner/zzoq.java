package com.google.android.gms.internal.mlkit_code_scanner;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ContactInfoParcelCreator")
/* loaded from: classes3.dex */
public final class zzoq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzoq> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzou f10640c;
    public final String f;
    public final String g;
    public final zzov[] h;
    public final zzos[] i;
    public final String[] j;
    public final zzon[] k;

    public zzoq(zzou zzouVar, String str, String str2, zzov[] zzovVarArr, zzos[] zzosVarArr, String[] strArr, zzon[] zzonVarArr) {
        this.f10640c = zzouVar;
        this.f = str;
        this.g = str2;
        this.h = zzovVarArr;
        this.i = zzosVarArr;
        this.j = strArr;
        this.k = zzonVarArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f10640c, i, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeTypedArray(parcel, 4, this.h, i, false);
        SafeParcelWriter.writeTypedArray(parcel, 5, this.i, i, false);
        SafeParcelWriter.writeStringArray(parcel, 6, this.j, false);
        SafeParcelWriter.writeTypedArray(parcel, 7, this.k, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
