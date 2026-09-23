package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import com.google.android.gms.internal.fido.zzgf;
import com.google.android.gms.internal.fido.zzgx;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "AuthenticatorAssertionResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class AuthenticatorAssertionResponse extends AuthenticatorResponse {

    @NonNull
    public static final Parcelable.Creator<AuthenticatorAssertionResponse> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzgx f3745c;
    public final zzgx f;
    public final zzgx g;
    public final zzgx h;
    public final zzgx i;

    public AuthenticatorAssertionResponse(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        zzgx s;
        byte[] bArr6 = (byte[]) Preconditions.checkNotNull(bArr);
        zzgx zzgxVar = zzgx.f;
        zzgx s2 = zzgx.s(bArr6, bArr6.length);
        byte[] bArr7 = (byte[]) Preconditions.checkNotNull(bArr2);
        zzgx s3 = zzgx.s(bArr7, bArr7.length);
        byte[] bArr8 = (byte[]) Preconditions.checkNotNull(bArr3);
        zzgx s4 = zzgx.s(bArr8, bArr8.length);
        byte[] bArr9 = (byte[]) Preconditions.checkNotNull(bArr4);
        zzgx s5 = zzgx.s(bArr9, bArr9.length);
        if (bArr5 == null) {
            s = null;
        } else {
            s = zzgx.s(bArr5, bArr5.length);
        }
        this.f3745c = (zzgx) Preconditions.checkNotNull(s2);
        this.f = (zzgx) Preconditions.checkNotNull(s3);
        this.g = (zzgx) Preconditions.checkNotNull(s4);
        this.h = (zzgx) Preconditions.checkNotNull(s5);
        this.i = s;
    }

    public final JSONObject F() {
        byte[] t;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("clientDataJSON", Base64Utils.encodeUrlSafeNoPadding(this.f.t()));
            jSONObject.put("authenticatorData", Base64Utils.encodeUrlSafeNoPadding(this.g.t()));
            jSONObject.put("signature", Base64Utils.encodeUrlSafeNoPadding(this.h.t()));
            zzgx zzgxVar = this.i;
            if (zzgxVar != null) {
                if (zzgxVar == null) {
                    t = null;
                } else {
                    t = zzgxVar.t();
                }
                jSONObject.put("userHandle", Base64Utils.encodeUrlSafeNoPadding(t));
                return jSONObject;
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException("Error encoding AuthenticatorAssertionResponse to JSON object", e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorAssertionResponse)) {
            return false;
        }
        AuthenticatorAssertionResponse authenticatorAssertionResponse = (AuthenticatorAssertionResponse) obj;
        if (!Objects.equal(this.f3745c, authenticatorAssertionResponse.f3745c) || !Objects.equal(this.f, authenticatorAssertionResponse.f) || !Objects.equal(this.g, authenticatorAssertionResponse.g) || !Objects.equal(this.h, authenticatorAssertionResponse.h) || !Objects.equal(this.i, authenticatorAssertionResponse.i)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(Objects.hashCode(this.f3745c)), Integer.valueOf(Objects.hashCode(this.f)), Integer.valueOf(Objects.hashCode(this.g)), Integer.valueOf(Objects.hashCode(this.h)), Integer.valueOf(Objects.hashCode(this.i)));
    }

    public final String toString() {
        byte[] t;
        zzbi a2 = zzbj.a(this);
        zzgf zzgfVar = zzgf.f10317a;
        byte[] t2 = this.f3745c.t();
        a2.b(zzgfVar.c(t2, t2.length), "keyHandle");
        byte[] t3 = this.f.t();
        a2.b(zzgfVar.c(t3, t3.length), "clientDataJSON");
        byte[] t4 = this.g.t();
        a2.b(zzgfVar.c(t4, t4.length), "authenticatorData");
        byte[] t5 = this.h.t();
        a2.b(zzgfVar.c(t5, t5.length), "signature");
        zzgx zzgxVar = this.i;
        if (zzgxVar == null) {
            t = null;
        } else {
            t = zzgxVar.t();
        }
        if (t != null) {
            a2.b(zzgfVar.c(t, t.length), "userHandle");
        }
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        byte[] t;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f3745c.t(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.f.t(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.g.t(), false);
        SafeParcelWriter.writeByteArray(parcel, 5, this.h.t(), false);
        zzgx zzgxVar = this.i;
        if (zzgxVar == null) {
            t = null;
        } else {
            t = zzgxVar.t();
        }
        SafeParcelWriter.writeByteArray(parcel, 6, t, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
