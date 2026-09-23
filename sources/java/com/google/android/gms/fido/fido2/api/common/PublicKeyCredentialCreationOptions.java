package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.fido.fido2.api.common.AttestationConveyancePreference;
import com.google.android.gms.internal.fido.zzbl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "PublicKeyCredentialCreationOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class PublicKeyCredentialCreationOptions extends RequestOptions {

    @NonNull
    public static final Parcelable.Creator<PublicKeyCredentialCreationOptions> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final PublicKeyCredentialRpEntity f3760c;
    public final PublicKeyCredentialUserEntity f;
    public final byte[] g;
    public final List h;
    public final Double i;
    public final List j;
    public final AuthenticatorSelectionCriteria k;
    public final Integer l;
    public final TokenBinding m;
    public final AttestationConveyancePreference n;
    public final AuthenticationExtensions o;
    public final String p;
    public final ResultReceiver q;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public PublicKeyCredentialRpEntity f3761a;
        public PublicKeyCredentialUserEntity b;

        /* renamed from: c, reason: collision with root package name */
        public byte[] f3762c;
        public List d;
        public Double e;
        public ArrayList f;
        public AuthenticatorSelectionCriteria g;
        public AttestationConveyancePreference h;
        public AuthenticationExtensions i;

        public final PublicKeyCredentialCreationOptions a() {
            String str;
            PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = this.f3761a;
            PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = this.b;
            byte[] bArr = this.f3762c;
            List list = this.d;
            Double d = this.e;
            ArrayList arrayList = this.f;
            AuthenticatorSelectionCriteria authenticatorSelectionCriteria = this.g;
            AttestationConveyancePreference attestationConveyancePreference = this.h;
            if (attestationConveyancePreference == null) {
                str = null;
            } else {
                str = attestationConveyancePreference.f3739c;
            }
            return new PublicKeyCredentialCreationOptions(publicKeyCredentialRpEntity, publicKeyCredentialUserEntity, bArr, list, d, arrayList, authenticatorSelectionCriteria, null, null, str, this.i, null, null);
        }
    }

    public PublicKeyCredentialCreationOptions() {
        try {
            PublicKeyCredentialCreationOptions F = F(new JSONObject((String) null));
            this.f3760c = F.f3760c;
            this.f = F.f;
            this.g = F.g;
            this.h = F.h;
            this.i = F.i;
            this.j = F.j;
            this.k = F.k;
            this.l = F.l;
            this.m = F.m;
            this.n = F.n;
            this.o = F.o;
            this.p = null;
        } catch (JSONException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions$Builder] */
    /* JADX WARN: Type inference failed for: r2v10, types: [com.google.android.gms.fido.fido2.api.common.AuthenticationExtensions$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v20, types: [com.google.android.gms.fido.fido2.api.common.zzu, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
    public static PublicKeyCredentialCreationOptions F(JSONObject jSONObject) {
        String str;
        String str2;
        String str3;
        String str4;
        Boolean bool;
        zzbl c2;
        ?? obj = new Object();
        JSONObject jSONObject2 = jSONObject.getJSONObject("rp");
        String string = jSONObject2.getString("id");
        String string2 = jSONObject2.getString("name");
        String str5 = null;
        if (jSONObject2.has("icon")) {
            str = jSONObject2.optString("icon");
        } else {
            str = null;
        }
        obj.f3761a = (PublicKeyCredentialRpEntity) Preconditions.checkNotNull(new PublicKeyCredentialRpEntity(string, string2, str));
        JSONObject jSONObject3 = jSONObject.getJSONObject("user");
        byte[] decodeUrlSafeNoPadding = Base64Utils.decodeUrlSafeNoPadding(jSONObject3.getString("id"));
        String string3 = jSONObject3.getString("name");
        String optString = jSONObject3.optString("displayName");
        if (jSONObject3.has("icon")) {
            str2 = jSONObject3.optString("icon");
        } else {
            str2 = null;
        }
        obj.b = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(new PublicKeyCredentialUserEntity(string3, str2, optString, decodeUrlSafeNoPadding));
        obj.f3762c = (byte[]) Preconditions.checkNotNull(Base64Utils.decodeUrlSafeNoPadding(jSONObject.getString("challenge")));
        JSONArray jSONArray = jSONObject.getJSONArray("pubKeyCredParams");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject4 = jSONArray.getJSONObject(i);
            try {
                c2 = zzbl.d(new PublicKeyCredentialParameters(jSONObject4.getString("type"), jSONObject4.getInt("alg")));
            } catch (IllegalArgumentException unused) {
                c2 = zzbl.c();
            }
            if (c2.b()) {
                arrayList.add(c2.a());
            }
        }
        obj.d = (List) Preconditions.checkNotNull(arrayList);
        if (jSONObject.has("timeout")) {
            obj.e = Double.valueOf(jSONObject.getDouble("timeout") / 1000.0d);
        }
        if (jSONObject.has("excludeCredentials")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray("excludeCredentials");
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                arrayList2.add(PublicKeyCredentialDescriptor.F(jSONArray2.getJSONObject(i2)));
            }
            obj.f = arrayList2;
        }
        if (jSONObject.has("authenticatorSelection")) {
            JSONObject jSONObject5 = jSONObject.getJSONObject("authenticatorSelection");
            if (jSONObject5.has("authenticatorAttachment")) {
                str3 = jSONObject5.optString("authenticatorAttachment");
            } else {
                str3 = null;
            }
            if (jSONObject5.has("residentKey")) {
                str4 = jSONObject5.optString("residentKey");
            } else {
                str4 = null;
            }
            if (jSONObject5.has("requireResidentKey")) {
                bool = Boolean.valueOf(jSONObject5.optBoolean("requireResidentKey"));
            } else {
                bool = null;
            }
            if (jSONObject5.has("userVerification")) {
                str5 = jSONObject5.optString("userVerification");
            }
            obj.g = new AuthenticatorSelectionCriteria(str3, bool, str5, str4);
        }
        if (jSONObject.has("extensions")) {
            JSONObject jSONObject6 = jSONObject.getJSONObject("extensions");
            ?? obj2 = new Object();
            if (jSONObject6.has("fidoAppIdExtension")) {
                obj2.f3741a = new FidoAppIdExtension(jSONObject6.getJSONObject("fidoAppIdExtension").getString("appid"));
            }
            if (jSONObject6.has("appid")) {
                obj2.f3741a = new FidoAppIdExtension(jSONObject6.getString("appid"));
            }
            if (jSONObject6.has("prf")) {
                if (!jSONObject6.has("prfAlreadyHashed")) {
                    obj2.j = zzak.F(jSONObject6.getJSONObject("prf"), false);
                } else {
                    throw new JSONException("both prf and prfAlreadyHashed extensions found");
                }
            } else if (jSONObject6.has("prfAlreadyHashed")) {
                obj2.j = zzak.F(jSONObject6.getJSONObject("prfAlreadyHashed"), true);
            }
            if (jSONObject6.has("cableAuthenticationExtension")) {
                JSONArray jSONArray3 = jSONObject6.getJSONArray("cableAuthenticationExtension");
                ArrayList arrayList3 = new ArrayList();
                for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                    JSONObject jSONObject7 = jSONArray3.getJSONObject(i3);
                    arrayList3.add(new zzq(jSONObject7.getLong("version"), Base64.decode(jSONObject7.getString("clientEid"), 11), Base64.decode(jSONObject7.getString("authenticatorEid"), 11), Base64.decode(jSONObject7.getString("sessionPreKey"), 11)));
                }
                obj2.f3742c = new zzs(arrayList3);
            }
            if (jSONObject6.has("userVerificationMethodExtension")) {
                obj2.b = new UserVerificationMethodExtension(jSONObject6.getJSONObject("userVerificationMethodExtension").getBoolean("uvm"));
            }
            if (jSONObject6.has("google_multiAssertionExtension")) {
                obj2.d = new zzz(jSONObject6.getJSONObject("google_multiAssertionExtension").getBoolean("requestForMultiAssertion"));
            }
            if (jSONObject6.has("google_sessionIdExtension")) {
                obj2.e = new zzab(jSONObject6.getJSONObject("google_sessionIdExtension").getInt("sessionId"));
            }
            if (jSONObject6.has("google_silentVerificationExtension")) {
                obj2.f = new zzad(jSONObject6.getJSONObject("google_silentVerificationExtension").getBoolean("silentVerification"));
            }
            if (jSONObject6.has("devicePublicKeyExtension")) {
                jSONObject6.getJSONObject("devicePublicKeyExtension").getBoolean("devicePublicKey");
                obj2.g = new AbstractSafeParcelable();
            }
            if (jSONObject6.has("google_tunnelServerIdExtension")) {
                obj2.h = new zzag(jSONObject6.getJSONObject("google_tunnelServerIdExtension").getString("tunnelServerId"));
            }
            if (jSONObject6.has("google_thirdPartyPaymentExtension")) {
                obj2.i = new GoogleThirdPartyPaymentExtension(jSONObject6.getJSONObject("google_thirdPartyPaymentExtension").getBoolean("thirdPartyPayment"));
            }
            if (jSONObject6.has("txAuthSimple")) {
                obj2.k = new zzaw(jSONObject6.getString("txAuthSimple"));
            }
            obj.i = obj2.a();
        }
        if (jSONObject.has("attestation")) {
            try {
                obj.h = AttestationConveyancePreference.a(jSONObject.getString("attestation"));
            } catch (AttestationConveyancePreference.UnsupportedAttestationConveyancePreferenceException e) {
                Log.w("PKCCreationOptions", "Invalid AttestationConveyancePreference", e);
                obj.h = AttestationConveyancePreference.NONE;
            }
        }
        return obj.a();
    }

    public final boolean equals(Object obj) {
        List list;
        if (!(obj instanceof PublicKeyCredentialCreationOptions)) {
            return false;
        }
        PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions = (PublicKeyCredentialCreationOptions) obj;
        List list2 = publicKeyCredentialCreationOptions.h;
        List list3 = publicKeyCredentialCreationOptions.j;
        if (Objects.equal(this.f3760c, publicKeyCredentialCreationOptions.f3760c) && Objects.equal(this.f, publicKeyCredentialCreationOptions.f) && Arrays.equals(this.g, publicKeyCredentialCreationOptions.g) && Objects.equal(this.i, publicKeyCredentialCreationOptions.i)) {
            List list4 = this.h;
            if (list4.containsAll(list2) && list2.containsAll(list4) && ((((list = this.j) == null && list3 == null) || (list != null && list3 != null && list.containsAll(list3) && list3.containsAll(list))) && Objects.equal(this.k, publicKeyCredentialCreationOptions.k) && Objects.equal(this.l, publicKeyCredentialCreationOptions.l) && Objects.equal(this.m, publicKeyCredentialCreationOptions.m) && Objects.equal(this.n, publicKeyCredentialCreationOptions.n) && Objects.equal(this.o, publicKeyCredentialCreationOptions.o) && Objects.equal(this.p, publicKeyCredentialCreationOptions.p))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3760c, this.f, Integer.valueOf(Arrays.hashCode(this.g)), this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f3760c);
        String valueOf2 = String.valueOf(this.f);
        String encodeUrlSafeNoPadding = Base64Utils.encodeUrlSafeNoPadding(this.g);
        String valueOf3 = String.valueOf(this.h);
        String valueOf4 = String.valueOf(this.j);
        String valueOf5 = String.valueOf(this.k);
        String valueOf6 = String.valueOf(this.m);
        String valueOf7 = String.valueOf(this.n);
        String valueOf8 = String.valueOf(this.o);
        StringBuilder u = a.u("PublicKeyCredentialCreationOptions{\n rp=", valueOf, ", \n user=", valueOf2, ", \n challenge=");
        android.support.v4.media.a.z(u, encodeUrlSafeNoPadding, ", \n parameters=", valueOf3, ", \n timeoutSeconds=");
        u.append(this.i);
        u.append(", \n excludeList=");
        u.append(valueOf4);
        u.append(", \n authenticatorSelection=");
        u.append(valueOf5);
        u.append(", \n requestId=");
        u.append(this.l);
        u.append(", \n tokenBinding=");
        u.append(valueOf6);
        u.append(", \n attestationConveyancePreference=");
        return android.support.v4.media.a.r(u, valueOf7, ", \n authenticationExtensions=", valueOf8, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f3760c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f, i, false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.g, false);
        SafeParcelWriter.writeTypedList(parcel, 5, this.h, false);
        SafeParcelWriter.writeDoubleObject(parcel, 6, this.i, false);
        SafeParcelWriter.writeTypedList(parcel, 7, this.j, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.k, i, false);
        SafeParcelWriter.writeIntegerObject(parcel, 9, this.l, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.m, i, false);
        AttestationConveyancePreference attestationConveyancePreference = this.n;
        if (attestationConveyancePreference == null) {
            str = null;
        } else {
            str = attestationConveyancePreference.f3739c;
        }
        SafeParcelWriter.writeString(parcel, 11, str, false);
        SafeParcelWriter.writeParcelable(parcel, 12, this.o, i, false);
        SafeParcelWriter.writeString(parcel, 13, this.p, false);
        SafeParcelWriter.writeParcelable(parcel, 14, this.q, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public PublicKeyCredentialCreationOptions(PublicKeyCredentialRpEntity publicKeyCredentialRpEntity, PublicKeyCredentialUserEntity publicKeyCredentialUserEntity, byte[] bArr, List list, Double d, ArrayList arrayList, AuthenticatorSelectionCriteria authenticatorSelectionCriteria, Integer num, TokenBinding tokenBinding, String str, AuthenticationExtensions authenticationExtensions, String str2, ResultReceiver resultReceiver) {
        this.q = resultReceiver;
        if (str2 != null) {
            try {
                PublicKeyCredentialCreationOptions F = F(new JSONObject(str2));
                this.f3760c = F.f3760c;
                this.f = F.f;
                this.g = F.g;
                this.h = F.h;
                this.i = F.i;
                this.j = F.j;
                this.k = F.k;
                this.l = F.l;
                this.m = F.m;
                this.n = F.n;
                this.o = F.o;
                this.p = str2;
                return;
            } catch (JSONException e) {
                throw new IllegalArgumentException(e);
            }
        }
        this.f3760c = (PublicKeyCredentialRpEntity) Preconditions.checkNotNull(publicKeyCredentialRpEntity);
        this.f = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(publicKeyCredentialUserEntity);
        this.g = (byte[]) Preconditions.checkNotNull(bArr);
        this.h = (List) Preconditions.checkNotNull(list);
        this.i = d;
        this.j = arrayList;
        this.k = authenticatorSelectionCriteria;
        this.l = num;
        this.m = tokenBinding;
        if (str != null) {
            try {
                this.n = AttestationConveyancePreference.a(str);
            } catch (AttestationConveyancePreference.UnsupportedAttestationConveyancePreferenceException e2) {
                throw new IllegalArgumentException(e2);
            }
        } else {
            this.n = null;
        }
        this.o = authenticationExtensions;
        this.p = null;
    }
}
