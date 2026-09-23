package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "StringListResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzgz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzgz> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final List f10186c;

    public zzgz(ArrayList arrayList) {
        this.f10186c = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 2, this.f10186c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
