package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialType;
import com.google.android.gms.internal.fido.zzcf;
import com.google.android.gms.internal.fido.zzgx;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "PublicKeyCredentialDescriptorCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class PublicKeyCredentialDescriptor extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<PublicKeyCredentialDescriptor> CREATOR;

    /* renamed from: c, reason: collision with root package name */
    public final PublicKeyCredentialType f3763c;
    public final zzgx f;
    public final List g;

    /* loaded from: classes.dex */
    public static class UnsupportedPubKeyCredDescriptorException extends Exception {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialDescriptor>] */
    static {
        zzcf.m(2, com.google.android.gms.internal.fido.zzh.f10325a, com.google.android.gms.internal.fido.zzh.b);
        CREATOR = new Object();
    }

    public PublicKeyCredentialDescriptor(String str, byte[] bArr, ArrayList arrayList) {
        zzgx zzgxVar = zzgx.f;
        zzgx s = zzgx.s(bArr, bArr.length);
        Preconditions.checkNotNull(str);
        try {
            this.f3763c = PublicKeyCredentialType.a(str);
            this.f = (zzgx) Preconditions.checkNotNull(s);
            this.g = arrayList;
        } catch (PublicKeyCredentialType.UnsupportedPublicKeyCredTypeException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static PublicKeyCredentialDescriptor F(JSONObject jSONObject) {
        JSONArray jSONArray;
        String string = jSONObject.getString("type");
        byte[] decode = Base64.decode(jSONObject.getString("id"), 11);
        ArrayList arrayList = null;
        if (jSONObject.has("transports") && (jSONArray = jSONObject.getJSONArray("transports")) != null) {
            HashSet hashSet = new HashSet(jSONArray.length());
            for (int i = 0; i < jSONArray.length(); i++) {
                String string2 = jSONArray.getString(i);
                if (string2 != null && !string2.isEmpty()) {
                    try {
                        hashSet.add(Transport.a(string2));
                    } catch (Transport.UnsupportedTransportException unused) {
                        Log.w("Transport", "Ignoring unrecognized transport ".concat(string2));
                    }
                }
            }
            arrayList = new ArrayList(hashSet);
        }
        return new PublicKeyCredentialDescriptor(string, decode, arrayList);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialDescriptor)) {
            return false;
        }
        PublicKeyCredentialDescriptor publicKeyCredentialDescriptor = (PublicKeyCredentialDescriptor) obj;
        List list = publicKeyCredentialDescriptor.g;
        if (!this.f3763c.equals(publicKeyCredentialDescriptor.f3763c) || !Objects.equal(this.f, publicKeyCredentialDescriptor.f)) {
            return false;
        }
        List list2 = this.g;
        if (list2 == null && list == null) {
            return true;
        }
        if (list2 == null || list == null || !list2.containsAll(list) || !list.containsAll(list2)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3763c, this.f, this.g);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f3763c);
        String encodeUrlSafeNoPadding = Base64Utils.encodeUrlSafeNoPadding(this.f.t());
        return a.p(androidx.work.impl.workers.a.u("PublicKeyCredentialDescriptor{\n type=", valueOf, ", \n id=", encodeUrlSafeNoPadding, ", \n transports="), String.valueOf(this.g), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        this.f3763c.getClass();
        SafeParcelWriter.writeString(parcel, 2, "public-key", false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.f.t(), false);
        SafeParcelWriter.writeTypedList(parcel, 4, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
