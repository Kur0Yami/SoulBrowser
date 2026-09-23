package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fido.zzgx;

@SafeParcelable.Class(creator = "CableAuthenticationDataCreator")
/* loaded from: classes.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final long f3785c;
    public final zzgx f;
    public final zzgx g;
    public final zzgx h;

    public zzq(long j, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = (byte[]) Preconditions.checkNotNull(bArr);
        zzgx zzgxVar = zzgx.f;
        zzgx s = zzgx.s(bArr4, bArr4.length);
        byte[] bArr5 = (byte[]) Preconditions.checkNotNull(bArr2);
        zzgx s2 = zzgx.s(bArr5, bArr5.length);
        byte[] bArr6 = (byte[]) Preconditions.checkNotNull(bArr3);
        zzgx s3 = zzgx.s(bArr6, bArr6.length);
        this.f3785c = j;
        this.f = (zzgx) Preconditions.checkNotNull(s);
        this.g = (zzgx) Preconditions.checkNotNull(s2);
        this.h = (zzgx) Preconditions.checkNotNull(s3);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzq)) {
            return false;
        }
        zzq zzqVar = (zzq) obj;
        if (this.f3785c != zzqVar.f3785c || !Objects.equal(this.f, zzqVar.f) || !Objects.equal(this.g, zzqVar.g) || !Objects.equal(this.h, zzqVar.h)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f3785c), this.f, this.g, this.h);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.f3785c);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f.t(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.g.t(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.h.t(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
