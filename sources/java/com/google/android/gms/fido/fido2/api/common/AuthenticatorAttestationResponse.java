package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import com.google.android.gms.internal.fido.zzgf;
import com.google.android.gms.internal.fido.zzgx;
import java.util.Arrays;

@SafeParcelable.Class(creator = "AuthenticatorAttestationResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class AuthenticatorAttestationResponse extends AuthenticatorResponse {

    @NonNull
    public static final Parcelable.Creator<AuthenticatorAttestationResponse> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzgx f3746c;
    public final zzgx f;
    public final zzgx g;
    public final String[] h;

    public AuthenticatorAttestationResponse(byte[] bArr, byte[] bArr2, byte[] bArr3, String[] strArr) {
        byte[] bArr4 = (byte[]) Preconditions.checkNotNull(bArr);
        zzgx zzgxVar = zzgx.f;
        zzgx s = zzgx.s(bArr4, bArr4.length);
        byte[] bArr5 = (byte[]) Preconditions.checkNotNull(bArr2);
        zzgx s2 = zzgx.s(bArr5, bArr5.length);
        byte[] bArr6 = (byte[]) Preconditions.checkNotNull(bArr3);
        zzgx s3 = zzgx.s(bArr6, bArr6.length);
        this.f3746c = (zzgx) Preconditions.checkNotNull(s);
        this.f = (zzgx) Preconditions.checkNotNull(s2);
        this.g = (zzgx) Preconditions.checkNotNull(s3);
        this.h = (String[]) Preconditions.checkNotNull(strArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x01fe A[Catch: JSONException -> 0x0021, TRY_LEAVE, TryCatch #1 {JSONException -> 0x0021, blocks: (B:3:0x000a, B:5:0x0013, B:8:0x0028, B:9:0x0035, B:10:0x003b, B:12:0x003e, B:14:0x0048, B:16:0x0053, B:17:0x004e, B:20:0x0056, B:22:0x005f, B:24:0x0069, B:26:0x007a, B:27:0x0082, B:29:0x0086, B:31:0x0098, B:33:0x00b6, B:34:0x00d0, B:39:0x00f2, B:44:0x01ea, B:46:0x01fe, B:49:0x0110, B:51:0x0121, B:56:0x0139, B:59:0x0155, B:61:0x016d, B:63:0x0173, B:64:0x0193, B:65:0x0198, B:66:0x0199, B:67:0x019e, B:72:0x01a9, B:74:0x01b6, B:76:0x01c6, B:77:0x01de, B:78:0x01e3, B:79:0x01e4, B:80:0x01e9, B:81:0x0208, B:82:0x020d, B:85:0x020e, B:86:0x0215, B:87:0x0216, B:88:0x021b, B:92:0x021f, B:93:0x0226, B:95:0x0229, B:96:0x0230, B:98:0x0231, B:99:0x0238, B:100:0x023b, B:101:0x0242, B:103:0x0243, B:104:0x024a, B:108:0x024e, B:109:0x0255), top: B:2:0x000a, inners: #2, #6, #7 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject F() {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fido.fido2.api.common.AuthenticatorAttestationResponse.F():org.json.JSONObject");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorAttestationResponse)) {
            return false;
        }
        AuthenticatorAttestationResponse authenticatorAttestationResponse = (AuthenticatorAttestationResponse) obj;
        if (!Objects.equal(this.f3746c, authenticatorAttestationResponse.f3746c) || !Objects.equal(this.f, authenticatorAttestationResponse.f) || !Objects.equal(this.g, authenticatorAttestationResponse.g)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(Objects.hashCode(this.f3746c)), Integer.valueOf(Objects.hashCode(this.f)), Integer.valueOf(Objects.hashCode(this.g)));
    }

    public final String toString() {
        zzbi a2 = zzbj.a(this);
        zzgf zzgfVar = zzgf.f10317a;
        byte[] t = this.f3746c.t();
        a2.b(zzgfVar.c(t, t.length), "keyHandle");
        byte[] t2 = this.f.t();
        a2.b(zzgfVar.c(t2, t2.length), "clientDataJSON");
        byte[] t3 = this.g.t();
        a2.b(zzgfVar.c(t3, t3.length), "attestationObject");
        a2.b(Arrays.toString(this.h), "transports");
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f3746c.t(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.f.t(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.g.t(), false);
        SafeParcelWriter.writeStringArray(parcel, 5, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
