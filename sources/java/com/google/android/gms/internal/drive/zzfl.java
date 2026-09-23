package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class(creator = "OnDownloadProgressResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzfl extends AbstractSafeParcelable {

    /* renamed from: c, reason: collision with root package name */
    public final long f10168c;
    public final long f;
    public final int g;
    public final List h;
    public static final List i = Collections.EMPTY_LIST;
    public static final Parcelable.Creator<zzfl> CREATOR = new Object();

    public zzfl(long j, long j2, int i2, ArrayList arrayList) {
        this.f10168c = j;
        this.f = j2;
        this.g = i2;
        this.h = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, this.f10168c);
        SafeParcelWriter.writeLong(parcel, 3, this.f);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.writeTypedList(parcel, 5, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
