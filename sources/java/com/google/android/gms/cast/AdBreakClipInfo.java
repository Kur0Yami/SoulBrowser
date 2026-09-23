package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "AdBreakClipInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class AdBreakClipInfo extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AdBreakClipInfo> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3424c;
    public final String f;
    public final long g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final long n;
    public final String o;
    public final VastAdsRequest p;
    public final JSONObject q;

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public AdBreakClipInfo(String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, String str8, long j2, String str9, VastAdsRequest vastAdsRequest) {
        this.f3424c = str;
        this.f = str2;
        this.g = j;
        this.h = str3;
        this.i = str4;
        this.j = str5;
        this.k = str6;
        this.l = str7;
        this.m = str8;
        this.n = j2;
        this.o = str9;
        this.p = vastAdsRequest;
        if (!TextUtils.isEmpty(str6)) {
            try {
                this.q = new JSONObject(str6);
                return;
            } catch (JSONException e) {
                Locale locale = Locale.ROOT;
                Log.w("AdBreakClipInfo", "Error creating AdBreakClipInfo: " + e.getMessage());
                this.k = null;
                this.q = new JSONObject();
                return;
            }
        }
        this.q = new JSONObject();
    }

    public final JSONObject F() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f3424c);
            long j = this.g;
            Pattern pattern = CastUtils.f3603a;
            jSONObject.put("duration", j / 1000.0d);
            long j2 = this.n;
            if (j2 != -1) {
                jSONObject.put("whenSkippable", j2 / 1000.0d);
            }
            String str = this.l;
            if (str != null) {
                jSONObject.put("contentId", str);
            }
            String str2 = this.i;
            if (str2 != null) {
                jSONObject.put("contentType", str2);
            }
            String str3 = this.f;
            if (str3 != null) {
                jSONObject.put("title", str3);
            }
            String str4 = this.h;
            if (str4 != null) {
                jSONObject.put("contentUrl", str4);
            }
            String str5 = this.j;
            if (str5 != null) {
                jSONObject.put("clickThroughUrl", str5);
            }
            JSONObject jSONObject2 = this.q;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
            String str6 = this.m;
            if (str6 != null) {
                jSONObject.put("posterUrl", str6);
            }
            String str7 = this.o;
            if (str7 != null) {
                jSONObject.put("hlsSegmentFormat", str7);
            }
            VastAdsRequest vastAdsRequest = this.p;
            if (vastAdsRequest != null) {
                jSONObject.put("vastAdsRequest", vastAdsRequest.F());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakClipInfo)) {
            return false;
        }
        AdBreakClipInfo adBreakClipInfo = (AdBreakClipInfo) obj;
        if (CastUtils.c(this.f3424c, adBreakClipInfo.f3424c) && CastUtils.c(this.f, adBreakClipInfo.f) && this.g == adBreakClipInfo.g && CastUtils.c(this.h, adBreakClipInfo.h) && CastUtils.c(this.i, adBreakClipInfo.i) && CastUtils.c(this.j, adBreakClipInfo.j) && CastUtils.c(this.k, adBreakClipInfo.k) && CastUtils.c(this.l, adBreakClipInfo.l) && CastUtils.c(this.m, adBreakClipInfo.m) && this.n == adBreakClipInfo.n && CastUtils.c(this.o, adBreakClipInfo.o) && CastUtils.c(this.p, adBreakClipInfo.p)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3424c, this.f, Long.valueOf(this.g), this.h, this.i, this.j, this.k, this.l, this.m, Long.valueOf(this.n), this.o, this.p);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3424c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeLong(parcel, 4, this.g);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        SafeParcelWriter.writeString(parcel, 6, this.i, false);
        SafeParcelWriter.writeString(parcel, 7, this.j, false);
        SafeParcelWriter.writeString(parcel, 8, this.k, false);
        SafeParcelWriter.writeString(parcel, 9, this.l, false);
        SafeParcelWriter.writeString(parcel, 10, this.m, false);
        SafeParcelWriter.writeLong(parcel, 11, this.n);
        SafeParcelWriter.writeString(parcel, 12, this.o, false);
        SafeParcelWriter.writeParcelable(parcel, 13, this.p, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
