package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "HttpResponseParcelCreator")
/* loaded from: classes.dex */
public final class zzbpb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbpb> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4813c;
    public final String f;
    public final int g;
    public final byte[] h;
    public final String[] i;
    public final String[] j;
    public final boolean k;
    public final long l;

    public zzbpb(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.f4813c = z;
        this.f = str;
        this.g = i;
        this.h = bArr;
        this.i = strArr;
        this.j = strArr2;
        this.k = z2;
        this.l = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f4813c);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.writeByteArray(parcel, 4, this.h, false);
        SafeParcelWriter.writeStringArray(parcel, 5, this.i, false);
        SafeParcelWriter.writeStringArray(parcel, 6, this.j, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.k);
        SafeParcelWriter.writeLong(parcel, 8, this.l);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
