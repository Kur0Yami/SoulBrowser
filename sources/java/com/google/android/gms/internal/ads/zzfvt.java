package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

@SafeParcelable.Class(creator = "ProgramResponseCreator")
/* loaded from: classes.dex */
public final class zzfvt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfvt> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f7691c;
    public final byte[] f;
    public final int g;

    public zzfvt(byte[] bArr, int i, int i2) {
        this.f7691c = i;
        this.f = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.g = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f7691c);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f, false);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzfvt() {
        this(null, 1, 1);
    }
}
