package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "OnListEntriesResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzft extends com.google.android.gms.drive.zzu {
    public static final Parcelable.Creator<zzft> CREATOR = new Object();
    public final DataHolder f;
    public final boolean g;

    public zzft(DataHolder dataHolder, boolean z) {
        this.f = dataHolder;
        this.g = z;
    }

    @Override // com.google.android.gms.drive.zzu
    public final void F(int i, Parcel parcel) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
