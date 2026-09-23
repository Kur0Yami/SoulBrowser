package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzgx;

@SafeParcelable.Class(creator = "HmacSecretExtensionCreator")
/* loaded from: classes.dex */
public final class zzai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzai> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzgx f3780c;
    public final zzgx f;
    public final zzgx g;
    public final int h;

    public zzai(zzgx zzgxVar, zzgx zzgxVar2, zzgx zzgxVar3, int i) {
        this.f3780c = zzgxVar;
        this.f = zzgxVar2;
        this.g = zzgxVar3;
        this.h = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzai)) {
            return false;
        }
        zzai zzaiVar = (zzai) obj;
        if (!Objects.equal(this.f3780c, zzaiVar.f3780c) || !Objects.equal(this.f, zzaiVar.f) || !Objects.equal(this.g, zzaiVar.g) || this.h != zzaiVar.h) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3780c, this.f, this.g, Integer.valueOf(this.h));
    }

    public final String toString() {
        byte[] t;
        byte[] t2;
        byte[] bArr = null;
        zzgx zzgxVar = this.f3780c;
        if (zzgxVar == null) {
            t = null;
        } else {
            t = zzgxVar.t();
        }
        String encodeUrlSafeNoPadding = Base64Utils.encodeUrlSafeNoPadding(t);
        zzgx zzgxVar2 = this.f;
        if (zzgxVar2 == null) {
            t2 = null;
        } else {
            t2 = zzgxVar2.t();
        }
        String encodeUrlSafeNoPadding2 = Base64Utils.encodeUrlSafeNoPadding(t2);
        zzgx zzgxVar3 = this.g;
        if (zzgxVar3 != null) {
            bArr = zzgxVar3.t();
        }
        String encodeUrlSafeNoPadding3 = Base64Utils.encodeUrlSafeNoPadding(bArr);
        StringBuilder u = a.u("HmacSecretExtension{coseKeyAgreement=", encodeUrlSafeNoPadding, ", saltEnc=", encodeUrlSafeNoPadding2, ", saltAuth=");
        u.append(encodeUrlSafeNoPadding3);
        u.append(", getPinUvAuthProtocol=");
        return android.support.v4.media.a.g(this.h, "}", u);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        byte[] t;
        byte[] t2;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        byte[] bArr = null;
        zzgx zzgxVar = this.f3780c;
        if (zzgxVar == null) {
            t = null;
        } else {
            t = zzgxVar.t();
        }
        SafeParcelWriter.writeByteArray(parcel, 1, t, false);
        zzgx zzgxVar2 = this.f;
        if (zzgxVar2 == null) {
            t2 = null;
        } else {
            t2 = zzgxVar2.t();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, t2, false);
        zzgx zzgxVar3 = this.g;
        if (zzgxVar3 != null) {
            bArr = zzgxVar3.t();
        }
        SafeParcelWriter.writeByteArray(parcel, 3, bArr, false);
        SafeParcelWriter.writeInt(parcel, 4, this.h);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
