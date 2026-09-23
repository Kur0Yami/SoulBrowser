package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fido.zzgx;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "AuthenticationExtensionsPrfOutputsCreator")
/* loaded from: classes.dex */
public final class zzh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzh> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3784c;
    public final zzgx f;

    public zzh(boolean z, zzgx zzgxVar) {
        this.f3784c = z;
        this.f = zzgxVar;
    }

    public final JSONObject F() {
        byte[] t;
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.f3784c) {
                jSONObject.put("enabled", true);
            }
            zzgx zzgxVar = this.f;
            if (zzgxVar == null) {
                t = null;
            } else {
                t = zzgxVar.t();
            }
            if (t != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("first", Base64.encodeToString(Arrays.copyOf(t, 32), 11));
                if (t.length == 64) {
                    jSONObject2.put("second", Base64.encodeToString(Arrays.copyOfRange(t, 32, 64), 11));
                }
                jSONObject.put("results", jSONObject2);
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException("Error encoding AuthenticationExtensionsPrfOutputs to JSON object", e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzh)) {
            return false;
        }
        zzh zzhVar = (zzh) obj;
        if (this.f3784c != zzhVar.f3784c || !Objects.equal(this.f, zzhVar.f)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f3784c), this.f);
    }

    public final String toString() {
        return a.l("AuthenticationExtensionsPrfOutputs{", F().toString(), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        byte[] t;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f3784c);
        zzgx zzgxVar = this.f;
        if (zzgxVar == null) {
            t = null;
        } else {
            t = zzgxVar.t();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, t, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
