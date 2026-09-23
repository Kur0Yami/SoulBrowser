package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "AdBreakInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class AdBreakInfo extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AdBreakInfo> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final long f3425c;
    public final String f;
    public final long g;
    public final boolean h;
    public final String[] i;
    public final boolean j;
    public final boolean k;

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public AdBreakInfo(long j, String str, long j2, boolean z, String[] strArr, boolean z2, boolean z3) {
        this.f3425c = j;
        this.f = str;
        this.g = j2;
        this.h = z;
        this.i = strArr;
        this.j = z2;
        this.k = z3;
    }

    public final JSONObject F() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f);
            long j = this.f3425c;
            Pattern pattern = CastUtils.f3603a;
            jSONObject.put("position", j / 1000.0d);
            jSONObject.put("isWatched", this.h);
            jSONObject.put("isEmbedded", this.j);
            jSONObject.put("duration", this.g / 1000.0d);
            jSONObject.put("expanded", this.k);
            String[] strArr = this.i;
            if (strArr != null) {
                JSONArray jSONArray = new JSONArray();
                for (String str : strArr) {
                    jSONArray.put(str);
                }
                jSONObject.put("breakClipIds", jSONArray);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakInfo)) {
            return false;
        }
        AdBreakInfo adBreakInfo = (AdBreakInfo) obj;
        if (CastUtils.c(this.f, adBreakInfo.f) && this.f3425c == adBreakInfo.f3425c && this.g == adBreakInfo.g && this.h == adBreakInfo.h && Arrays.equals(this.i, adBreakInfo.i) && this.j == adBreakInfo.j && this.k == adBreakInfo.k) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, this.f3425c);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeLong(parcel, 4, this.g);
        SafeParcelWriter.writeBoolean(parcel, 5, this.h);
        SafeParcelWriter.writeStringArray(parcel, 6, this.i, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.j);
        SafeParcelWriter.writeBoolean(parcel, 8, this.k);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
