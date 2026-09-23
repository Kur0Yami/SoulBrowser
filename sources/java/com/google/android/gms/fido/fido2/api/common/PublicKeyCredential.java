package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzgx;
import com.google.android.gms.internal.fido.zzia;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "PublicKeyCredentialCreator")
/* loaded from: classes.dex */
public class PublicKeyCredential extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<PublicKeyCredential> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3759c;
    public final String f;
    public final zzgx g;
    public final AuthenticatorAttestationResponse h;
    public final AuthenticatorAssertionResponse i;
    public final AuthenticatorErrorResponse j;
    public final AuthenticationExtensionsClientOutputs k;
    public final String l;

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public PublicKeyCredential(String str, String str2, byte[] bArr, AuthenticatorAttestationResponse authenticatorAttestationResponse, AuthenticatorAssertionResponse authenticatorAssertionResponse, AuthenticatorErrorResponse authenticatorErrorResponse, AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs, String str3) {
        zzgx s;
        boolean z;
        if (bArr == null) {
            s = null;
        } else {
            s = zzgx.s(bArr, bArr.length);
        }
        boolean z2 = false;
        if ((authenticatorAttestationResponse != null && authenticatorAssertionResponse == null && authenticatorErrorResponse == null) || ((authenticatorAttestationResponse == null && authenticatorAssertionResponse != null && authenticatorErrorResponse == null) || (authenticatorAttestationResponse == null && authenticatorAssertionResponse == null && authenticatorErrorResponse != null))) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "Must provide a response object.");
        if (authenticatorErrorResponse != null || (str != null && s != null)) {
            z2 = true;
        }
        Preconditions.checkArgument(z2, "Must provide id and rawId if not an error response.");
        this.f3759c = str;
        this.f = str2;
        this.g = s;
        this.h = authenticatorAttestationResponse;
        this.i = authenticatorAssertionResponse;
        this.j = authenticatorErrorResponse;
        this.k = authenticationExtensionsClientOutputs;
        this.l = str3;
    }

    public final JSONObject F() {
        JSONObject jSONObject;
        try {
            JSONObject jSONObject2 = new JSONObject();
            zzgx zzgxVar = this.g;
            if (zzgxVar != null && zzgxVar.t().length > 0) {
                jSONObject2.put("rawId", Base64Utils.encodeUrlSafeNoPadding(zzgxVar.t()));
            }
            String str = this.l;
            if (str != null) {
                jSONObject2.put("authenticatorAttachment", str);
            }
            String str2 = this.f;
            AuthenticatorErrorResponse authenticatorErrorResponse = this.j;
            if (str2 != null && authenticatorErrorResponse == null) {
                jSONObject2.put("type", str2);
            }
            String str3 = this.f3759c;
            if (str3 != null) {
                jSONObject2.put("id", str3);
            }
            String str4 = "response";
            AuthenticatorAssertionResponse authenticatorAssertionResponse = this.i;
            boolean z = true;
            if (authenticatorAssertionResponse != null) {
                jSONObject = authenticatorAssertionResponse.F();
            } else {
                AuthenticatorAttestationResponse authenticatorAttestationResponse = this.h;
                if (authenticatorAttestationResponse != null) {
                    jSONObject = authenticatorAttestationResponse.F();
                } else {
                    z = false;
                    if (authenticatorErrorResponse != null) {
                        try {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("code", authenticatorErrorResponse.f3747c.f3755c);
                            String str5 = authenticatorErrorResponse.f;
                            if (str5 != null) {
                                jSONObject3.put("message", str5);
                            }
                            jSONObject = jSONObject3;
                            str4 = "error";
                        } catch (JSONException e) {
                            throw new RuntimeException("Error encoding AuthenticatorErrorResponse to JSON object", e);
                        }
                    } else {
                        jSONObject = null;
                    }
                }
            }
            if (jSONObject != null) {
                jSONObject2.put(str4, jSONObject);
            }
            AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs = this.k;
            if (authenticationExtensionsClientOutputs != null) {
                jSONObject2.put("clientExtensionResults", authenticationExtensionsClientOutputs.F());
                return jSONObject2;
            }
            if (z) {
                jSONObject2.put("clientExtensionResults", new JSONObject());
            }
            return jSONObject2;
        } catch (JSONException e2) {
            throw new RuntimeException("Error encoding PublicKeyCredential to JSON object", e2);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredential)) {
            return false;
        }
        PublicKeyCredential publicKeyCredential = (PublicKeyCredential) obj;
        if (!Objects.equal(this.f3759c, publicKeyCredential.f3759c) || !Objects.equal(this.f, publicKeyCredential.f) || !Objects.equal(this.g, publicKeyCredential.g) || !Objects.equal(this.h, publicKeyCredential.h) || !Objects.equal(this.i, publicKeyCredential.i) || !Objects.equal(this.j, publicKeyCredential.j) || !Objects.equal(this.k, publicKeyCredential.k) || !Objects.equal(this.l, publicKeyCredential.l)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3759c, this.f, this.g, this.i, this.h, this.j, this.k, this.l);
    }

    public final String toString() {
        byte[] t;
        zzgx zzgxVar = this.g;
        if (zzgxVar == null) {
            t = null;
        } else {
            t = zzgxVar.t();
        }
        String encodeUrlSafeNoPadding = Base64Utils.encodeUrlSafeNoPadding(t);
        String valueOf = String.valueOf(this.h);
        String valueOf2 = String.valueOf(this.i);
        String valueOf3 = String.valueOf(this.j);
        String valueOf4 = String.valueOf(this.k);
        StringBuilder u = a.u("PublicKeyCredential{\n id='", this.f3759c, "', \n type='", this.f, "', \n rawId=");
        android.support.v4.media.a.z(u, encodeUrlSafeNoPadding, ", \n registerResponse=", valueOf, ", \n signResponse=");
        android.support.v4.media.a.z(u, valueOf2, ", \n errorResponse=", valueOf3, ", \n extensionsClientOutputs=");
        return android.support.v4.media.a.r(u, valueOf4, ", \n authenticatorAttachment='", this.l, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzia.a();
        throw null;
    }
}
