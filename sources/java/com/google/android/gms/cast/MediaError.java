package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "MediaErrorCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class MediaError extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    @KeepForSdk
    public static final Parcelable.Creator<MediaError> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3437c;
    public final long f;
    public final Integer g;
    public final String h;
    public String i;
    public final JSONObject j;

    /* loaded from: classes.dex */
    public static class Builder {
    }

    /* loaded from: classes.dex */
    public @interface DetailedErrorCode {
    }

    public MediaError(String str, long j, Integer num, String str2, JSONObject jSONObject) {
        this.f3437c = str;
        this.f = j;
        this.g = num;
        this.h = str2;
        this.j = jSONObject;
    }

    public static MediaError F(JSONObject jSONObject) {
        Integer num;
        String optString = jSONObject.optString("type", "ERROR");
        long optLong = jSONObject.optLong("requestId");
        JSONObject jSONObject2 = null;
        if (jSONObject.has("detailedErrorCode")) {
            num = Integer.valueOf(jSONObject.optInt("detailedErrorCode"));
        } else {
            num = null;
        }
        String a2 = CastUtils.a(jSONObject, "reason");
        if (jSONObject.has("customData")) {
            jSONObject2 = jSONObject.optJSONObject("customData");
        }
        return new MediaError(optString, optLong, num, a2, jSONObject2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String jSONObject;
        JSONObject jSONObject2 = this.j;
        if (jSONObject2 == null) {
            jSONObject = null;
        } else {
            jSONObject = jSONObject2.toString();
        }
        this.i = jSONObject;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3437c, false);
        SafeParcelWriter.writeLong(parcel, 3, this.f);
        SafeParcelWriter.writeIntegerObject(parcel, 4, this.g, false);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        SafeParcelWriter.writeString(parcel, 6, this.i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
