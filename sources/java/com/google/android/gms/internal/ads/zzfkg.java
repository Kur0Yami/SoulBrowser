package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "PoolConfigurationCreator")
/* loaded from: classes.dex */
public final class zzfkg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfkg> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Context f7432c;
    public final int f;
    public final zzfkd g;
    public final int h;
    public final int i;
    public final int j;
    public final String k;
    public final int l;
    public final int m;
    public final int n;

    public zzfkg(int i, int i2, int i3, int i4, String str, int i5, int i6) {
        zzfkd[] values = zzfkd.values();
        this.f7432c = null;
        this.f = i;
        this.g = values[i];
        this.h = i2;
        this.i = i3;
        this.j = i4;
        this.k = str;
        this.l = i5;
        this.n = new int[]{1, 2, 3}[i5];
        this.m = i6;
        int i7 = new int[]{1}[i6];
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f);
        SafeParcelWriter.writeInt(parcel, 2, this.h);
        SafeParcelWriter.writeInt(parcel, 3, this.i);
        SafeParcelWriter.writeInt(parcel, 4, this.j);
        SafeParcelWriter.writeString(parcel, 5, this.k, false);
        SafeParcelWriter.writeInt(parcel, 6, this.l);
        SafeParcelWriter.writeInt(parcel, 7, this.m);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzfkg(Context context, zzfkd zzfkdVar, int i, int i2, int i3, String str, String str2) {
        zzfkd.values();
        this.f7432c = context;
        this.f = zzfkdVar.ordinal();
        this.g = zzfkdVar;
        this.h = i;
        this.i = i2;
        this.j = i3;
        this.k = str;
        int i4 = "oldest".equals(str2) ? 1 : (!"lru".equals(str2) && "lfu".equals(str2)) ? 3 : 2;
        this.n = i4;
        this.l = i4 - 1;
        this.m = 0;
    }
}
