package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;

@ShowFirstParty
@SafeParcelable.Class(creator = "UsageReportingOptInOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzgc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzgc> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f9701c;
    public final boolean f;
    public final ArrayList g;
    public final int h;
    public final String i;
    public final boolean j;

    public zzgc(int i, boolean z, ArrayList arrayList, int i2, String str, boolean z2) {
        ArrayList arrayList2 = new ArrayList();
        this.g = arrayList2;
        this.f9701c = i;
        this.f = z;
        if (arrayList != null) {
            arrayList2.addAll(arrayList);
        }
        this.h = i2;
        this.i = str;
        this.j = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f9701c);
        SafeParcelWriter.writeBoolean(parcel, 3, this.f);
        SafeParcelWriter.writeStringList(parcel, 4, this.g, false);
        SafeParcelWriter.writeInt(parcel, 5, this.h);
        SafeParcelWriter.writeString(parcel, 6, this.i, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.j);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
