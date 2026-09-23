package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "AuthenticationExtensionsClientOutputsCreator")
/* loaded from: classes.dex */
public class AuthenticationExtensionsClientOutputs extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AuthenticationExtensionsClientOutputs> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final UvmEntries f3743c;
    public final zzf f;
    public final AuthenticationExtensionsCredPropsOutputs g;
    public final zzh h;
    public final String i;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public AuthenticationExtensionsClientOutputs(UvmEntries uvmEntries, zzf zzfVar, AuthenticationExtensionsCredPropsOutputs authenticationExtensionsCredPropsOutputs, zzh zzhVar, String str) {
        this.f3743c = uvmEntries;
        this.f = zzfVar;
        this.g = authenticationExtensionsCredPropsOutputs;
        this.h = zzhVar;
        this.i = str;
    }

    public final JSONObject F() {
        try {
            JSONObject jSONObject = new JSONObject();
            AuthenticationExtensionsCredPropsOutputs authenticationExtensionsCredPropsOutputs = this.g;
            if (authenticationExtensionsCredPropsOutputs != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("rk", authenticationExtensionsCredPropsOutputs.f3744c);
                    jSONObject.put("credProps", jSONObject2);
                } catch (JSONException e) {
                    throw new RuntimeException("Error encoding AuthenticationExtensionsCredPropsOutputs to JSON object", e);
                }
            }
            UvmEntries uvmEntries = this.f3743c;
            if (uvmEntries != null) {
                jSONObject.put("uvm", uvmEntries.F());
            }
            zzh zzhVar = this.h;
            if (zzhVar != null) {
                jSONObject.put("prf", zzhVar.F());
            }
            String str = this.i;
            if (str != null) {
                jSONObject.put("txAuthSimple", str);
            }
            return jSONObject;
        } catch (JSONException e2) {
            throw new RuntimeException("Error encoding AuthenticationExtensionsClientOutputs to JSON object", e2);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticationExtensionsClientOutputs)) {
            return false;
        }
        AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs = (AuthenticationExtensionsClientOutputs) obj;
        if (!Objects.equal(this.f3743c, authenticationExtensionsClientOutputs.f3743c) || !Objects.equal(this.f, authenticationExtensionsClientOutputs.f) || !Objects.equal(this.g, authenticationExtensionsClientOutputs.g) || !Objects.equal(this.h, authenticationExtensionsClientOutputs.h) || !Objects.equal(this.i, authenticationExtensionsClientOutputs.i)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3743c, this.f, this.g, this.h, this.i);
    }

    public final String toString() {
        return a.l("AuthenticationExtensionsClientOutputs{", F().toString(), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3743c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.h, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
