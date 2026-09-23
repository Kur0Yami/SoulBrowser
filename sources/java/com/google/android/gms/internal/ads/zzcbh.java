package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "SafeBrowsingConfigParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzcbh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcbh> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f5015c;
    public final String f;
    public final boolean g;
    public final boolean h;
    public final List i;
    public final boolean j;
    public final boolean k;
    public final List l;

    public zzcbh(String str, String str2, boolean z, boolean z2, List list, boolean z3, boolean z4, List list2) {
        this.f5015c = str;
        this.f = str2;
        this.g = z;
        this.h = z2;
        this.i = list;
        this.j = z3;
        this.k = z4;
        this.l = list2 == null ? new ArrayList() : list2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f5015c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.g);
        SafeParcelWriter.writeBoolean(parcel, 5, this.h);
        SafeParcelWriter.writeStringList(parcel, 6, this.i, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.j);
        SafeParcelWriter.writeBoolean(parcel, 8, this.k);
        SafeParcelWriter.writeStringList(parcel, 9, this.l, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
