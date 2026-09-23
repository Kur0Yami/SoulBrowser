package com.google.android.gms.fido.fido2.api.common;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fido.zzgx;

@SafeParcelable.Class(creator = "FidoCredentialDetailsCreator")
/* loaded from: classes.dex */
public class FidoCredentialDetails extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<FidoCredentialDetails> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3757c;
    public final String f;
    public final zzgx g;
    public final zzgx h;
    public final boolean i;
    public final boolean j;
    public final long k;
    public final Account l;
    public final boolean m;

    public FidoCredentialDetails(String str, String str2, byte[] bArr, byte[] bArr2, boolean z, boolean z2, long j, Account account, boolean z3) {
        zzgx s;
        if (bArr == null) {
            s = null;
        } else {
            s = zzgx.s(bArr, bArr.length);
        }
        zzgx zzgxVar = zzgx.f;
        zzgx s2 = zzgx.s(bArr2, bArr2.length);
        this.f3757c = str;
        this.f = str2;
        this.g = s;
        this.h = s2;
        this.i = z;
        this.j = z2;
        this.k = j;
        this.l = account;
        this.m = z3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FidoCredentialDetails)) {
            return false;
        }
        FidoCredentialDetails fidoCredentialDetails = (FidoCredentialDetails) obj;
        if (!Objects.equal(this.f3757c, fidoCredentialDetails.f3757c) || !Objects.equal(this.f, fidoCredentialDetails.f) || !Objects.equal(this.g, fidoCredentialDetails.g) || !Objects.equal(this.h, fidoCredentialDetails.h) || this.i != fidoCredentialDetails.i || this.j != fidoCredentialDetails.j || this.m != fidoCredentialDetails.m || this.k != fidoCredentialDetails.k || !Objects.equal(this.l, fidoCredentialDetails.l)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3757c, this.f, this.g, this.h, Boolean.valueOf(this.i), Boolean.valueOf(this.j), Boolean.valueOf(this.m), Long.valueOf(this.k), this.l);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        byte[] t;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3757c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        zzgx zzgxVar = this.g;
        if (zzgxVar == null) {
            t = null;
        } else {
            t = zzgxVar.t();
        }
        SafeParcelWriter.writeByteArray(parcel, 3, t, false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.h.t(), false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.i);
        SafeParcelWriter.writeBoolean(parcel, 6, this.j);
        SafeParcelWriter.writeLong(parcel, 7, this.k);
        SafeParcelWriter.writeParcelable(parcel, 8, this.l, i, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.m);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
