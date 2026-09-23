package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "GassEventParcelCreator")
/* loaded from: classes.dex */
public final class zzfvf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfvf> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f7680c;
    public final byte[] f;

    public zzfvf(byte[] bArr, int i) {
        this.f7680c = i;
        this.f = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f7680c);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
