package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fido.zzgx;

@SafeParcelable.Class(creator = "AuthenticationExtensionsDevicePublicKeyOutputsCreator")
/* loaded from: classes.dex */
public final class zzf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzgx f3783c;
    public final zzgx f;

    public zzf(zzgx zzgxVar, zzgx zzgxVar2) {
        this.f3783c = zzgxVar;
        this.f = zzgxVar2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzf)) {
            return false;
        }
        zzf zzfVar = (zzf) obj;
        if (!Objects.equal(this.f3783c, zzfVar.f3783c) || !Objects.equal(this.f, zzfVar.f)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3783c, this.f);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        byte[] t;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        byte[] bArr = null;
        zzgx zzgxVar = this.f3783c;
        if (zzgxVar == null) {
            t = null;
        } else {
            t = zzgxVar.t();
        }
        SafeParcelWriter.writeByteArray(parcel, 1, t, false);
        zzgx zzgxVar2 = this.f;
        if (zzgxVar2 != null) {
            bArr = zzgxVar2.t();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, bArr, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
