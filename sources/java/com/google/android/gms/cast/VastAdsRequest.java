package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "VastAdsRequestCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class VastAdsRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<VastAdsRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3461c;
    public final String f;

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public VastAdsRequest(String str, String str2) {
        this.f3461c = str;
        this.f = str2;
    }

    public final JSONObject F() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.f3461c;
            if (str != null) {
                jSONObject.put("adTagUrl", str);
            }
            String str2 = this.f;
            if (str2 != null) {
                jSONObject.put("adsResponse", str2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VastAdsRequest)) {
            return false;
        }
        VastAdsRequest vastAdsRequest = (VastAdsRequest) obj;
        if (CastUtils.c(this.f3461c, vastAdsRequest.f3461c) && CastUtils.c(this.f, vastAdsRequest.f)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3461c, this.f);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3461c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
