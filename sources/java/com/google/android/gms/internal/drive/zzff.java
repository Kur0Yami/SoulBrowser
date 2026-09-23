package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "OnChangesResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzff extends com.google.android.gms.drive.zzu {
    public static final Parcelable.Creator<zzff> CREATOR = new Object();
    public final DataHolder f;
    public final List g;
    public final com.google.android.gms.drive.zza h;
    public final boolean i;

    public zzff(DataHolder dataHolder, ArrayList arrayList, com.google.android.gms.drive.zza zzaVar, boolean z) {
        this.f = dataHolder;
        this.g = arrayList;
        this.h = zzaVar;
        this.i = z;
    }

    @Override // com.google.android.gms.drive.zzu
    public final void F(int i, Parcel parcel) {
        int i2 = i | 1;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i2, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.g, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.h, i2, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
