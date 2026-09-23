package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzfv;
import com.google.android.gms.internal.fido.zzfx;
import com.google.android.gms.internal.fido.zzgj;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "PrfExtensionCreator")
/* loaded from: classes.dex */
public final class zzak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzak> CREATOR = new Object();
    public static final byte[] f = "WebAuthn PRF\u0000".getBytes(StandardCharsets.UTF_8);

    /* renamed from: c, reason: collision with root package name */
    public final byte[][] f3781c;

    public zzak(byte[][] bArr) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (bArr != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        if (1 != ((bArr.length & 1) ^ 1)) {
            z2 = false;
        } else {
            z2 = true;
        }
        Preconditions.checkArgument(z2);
        for (int i = 0; i < bArr.length; i += 2) {
            if (i == 0 || bArr[i] != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            Preconditions.checkArgument(z3);
            int i2 = i + 1;
            if (bArr[i2] != null) {
                z4 = true;
            } else {
                z4 = false;
            }
            Preconditions.checkArgument(z4);
            int length = bArr[i2].length;
            if (length == 32 || length == 64) {
                z5 = true;
            } else {
                z5 = false;
            }
            Preconditions.checkArgument(z5);
        }
        this.f3781c = bArr;
    }

    public static zzak F(JSONObject jSONObject, boolean z) {
        ArrayList arrayList = new ArrayList();
        try {
            if (jSONObject.has("eval")) {
                arrayList.add(null);
                if (z) {
                    arrayList.add(X(jSONObject.getJSONObject("eval")));
                } else {
                    arrayList.add(k0(jSONObject.getJSONObject("eval")));
                }
            }
            if (jSONObject.has("evalByCredential")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("evalByCredential");
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    arrayList.add(Base64Utils.decodeUrlSafeNoPadding(next));
                    if (z) {
                        arrayList.add(X(jSONObject2.getJSONObject(next)));
                    } else {
                        arrayList.add(k0(jSONObject2.getJSONObject(next)));
                    }
                }
            }
            return new zzak((byte[][]) arrayList.toArray(new byte[0]));
        } catch (IllegalArgumentException unused) {
            throw new JSONException("invalid base64url value");
        }
    }

    public static JSONObject G(byte[] bArr) {
        JSONObject jSONObject = new JSONObject();
        if (bArr.length == 32) {
            jSONObject.put("first", Base64Utils.encodeUrlSafeNoPadding(bArr));
            return jSONObject;
        }
        jSONObject.put("first", Base64.encodeToString(bArr, 0, 32, 11));
        jSONObject.put("second", Base64.encodeToString(bArr, 32, 32, 11));
        return jSONObject;
    }

    public static byte[] X(JSONObject jSONObject) {
        byte[] decodeUrlSafeNoPadding = Base64Utils.decodeUrlSafeNoPadding(jSONObject.getString("first"));
        if (decodeUrlSafeNoPadding.length == 32) {
            if (!jSONObject.has("second")) {
                return decodeUrlSafeNoPadding;
            }
            byte[] decodeUrlSafeNoPadding2 = Base64Utils.decodeUrlSafeNoPadding(jSONObject.getString("second"));
            if (decodeUrlSafeNoPadding2.length == 32) {
                return zzgj.a(decodeUrlSafeNoPadding, decodeUrlSafeNoPadding2);
            }
            throw new JSONException("hashed PRF value with wrong length");
        }
        throw new JSONException("hashed PRF value with wrong length");
    }

    public static byte[] k0(JSONObject jSONObject) {
        byte[] decodeUrlSafeNoPadding = Base64Utils.decodeUrlSafeNoPadding(jSONObject.getString("first"));
        zzfv zza = zzfx.a().zza();
        byte[] bArr = f;
        zza.a(bArr);
        zza.a(decodeUrlSafeNoPadding);
        byte[] d = zza.zzc().d();
        if (!jSONObject.has("second")) {
            return d;
        }
        byte[] decodeUrlSafeNoPadding2 = Base64Utils.decodeUrlSafeNoPadding(jSONObject.getString("second"));
        zzfv zza2 = zzfx.a().zza();
        zza2.a(bArr);
        zza2.a(decodeUrlSafeNoPadding2);
        return zzgj.a(d, zza2.zzc().d());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzak)) {
            return false;
        }
        return Arrays.deepEquals(this.f3781c, ((zzak) obj).f3781c);
    }

    public final int hashCode() {
        int i = 0;
        for (byte[] bArr : this.f3781c) {
            if (bArr != null) {
                i ^= Objects.hashCode(bArr);
            }
        }
        return i;
    }

    public final String toString() {
        byte[][] bArr = this.f3781c;
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = null;
            for (int i = 0; i < bArr.length; i += 2) {
                if (bArr[i] == null) {
                    jSONObject.put("eval", G(bArr[i + 1]));
                } else {
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject();
                        jSONObject.put("evalByCredential", jSONObject2);
                    }
                    jSONObject2.put(Base64Utils.encodeUrlSafeNoPadding(bArr[i]), G(bArr[i + 1]));
                }
            }
            return "PrfExtension{" + jSONObject.toString() + "}";
        } catch (JSONException e) {
            return a.l("PrfExtension{Exception:", e.getMessage(), "}");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArrayArray(parcel, 1, this.f3781c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
