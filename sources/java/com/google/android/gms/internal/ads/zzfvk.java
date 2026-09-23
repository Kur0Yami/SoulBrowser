package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "GassResponseParcelCreator")
/* loaded from: classes.dex */
public final class zzfvk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfvk> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f7683c;
    public zzawp f = null;
    public byte[] g;

    public zzfvk(byte[] bArr, int i) {
        this.f7683c = i;
        this.g = bArr;
        F();
    }

    public final void F() {
        zzawp zzawpVar = this.f;
        if (zzawpVar != null || this.g == null) {
            if (zzawpVar != null && this.g == null) {
                return;
            }
            if (zzawpVar != null && this.g != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (zzawpVar == null && this.g == null) {
                throw new IllegalStateException("Invalid internal representation - empty");
            }
            throw new IllegalStateException("Impossible");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f7683c);
        byte[] bArr = this.g;
        if (bArr == null) {
            bArr = this.f.h();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, bArr, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
