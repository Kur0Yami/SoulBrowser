package com.google.android.gms.internal.mlkit_code_scanner;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "BarcodeParcelCreator")
/* loaded from: classes3.dex */
public final class zzoz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzoz> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f10649c;
    public final String f;
    public final String g;
    public final byte[] h;
    public final Point[] i;
    public final int j;
    public final zzos k;
    public final zzov l;
    public final zzow m;
    public final zzoy n;
    public final zzox o;
    public final zzot p;
    public final zzop q;
    public final zzoq r;
    public final zzor s;

    public zzoz(int i, String str, String str2, byte[] bArr, Point[] pointArr, int i2, zzos zzosVar, zzov zzovVar, zzow zzowVar, zzoy zzoyVar, zzox zzoxVar, zzot zzotVar, zzop zzopVar, zzoq zzoqVar, zzor zzorVar) {
        this.f10649c = i;
        this.f = str;
        this.g = str2;
        this.h = bArr;
        this.i = pointArr;
        this.j = i2;
        this.k = zzosVar;
        this.l = zzovVar;
        this.m = zzowVar;
        this.n = zzoyVar;
        this.o = zzoxVar;
        this.p = zzotVar;
        this.q = zzopVar;
        this.r = zzoqVar;
        this.s = zzorVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10649c);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.h, false);
        SafeParcelWriter.writeTypedArray(parcel, 5, this.i, i, false);
        SafeParcelWriter.writeInt(parcel, 6, this.j);
        SafeParcelWriter.writeParcelable(parcel, 7, this.k, i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.l, i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.m, i, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.n, i, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.o, i, false);
        SafeParcelWriter.writeParcelable(parcel, 12, this.p, i, false);
        SafeParcelWriter.writeParcelable(parcel, 13, this.q, i, false);
        SafeParcelWriter.writeParcelable(parcel, 14, this.r, i, false);
        SafeParcelWriter.writeParcelable(parcel, 15, this.s, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
