package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import java.util.Arrays;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "MediaLoadRequestDataCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class MediaLoadRequestData extends AbstractSafeParcelable implements RequestData {

    /* renamed from: c, reason: collision with root package name */
    public final MediaInfo f3442c;
    public final MediaQueueData f;
    public final Boolean g;
    public final long h;
    public final double i;
    public final long[] j;
    public String k;
    public final JSONObject l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final long q;
    public static final Logger r = new Logger("MediaLoadRequestData", null);

    @NonNull
    @KeepForSdk
    public static final Parcelable.Creator<MediaLoadRequestData> CREATOR = new Object();

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public MediaInfo f3443a;
        public long b;

        /* renamed from: c, reason: collision with root package name */
        public double f3444c;
    }

    public MediaLoadRequestData(MediaInfo mediaInfo, MediaQueueData mediaQueueData, Boolean bool, long j, double d, long[] jArr, JSONObject jSONObject, String str, String str2, String str3, String str4, long j2) {
        this.f3442c = mediaInfo;
        this.f = mediaQueueData;
        this.g = bool;
        this.h = j;
        this.i = d;
        this.j = jArr;
        this.l = jSONObject;
        this.m = str;
        this.n = str2;
        this.o = str3;
        this.p = str4;
        this.q = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaLoadRequestData)) {
            return false;
        }
        MediaLoadRequestData mediaLoadRequestData = (MediaLoadRequestData) obj;
        if (JsonUtils.areJsonValuesEquivalent(this.l, mediaLoadRequestData.l) && Objects.equal(this.f3442c, mediaLoadRequestData.f3442c) && Objects.equal(this.f, mediaLoadRequestData.f) && Objects.equal(this.g, mediaLoadRequestData.g) && this.h == mediaLoadRequestData.h && this.i == mediaLoadRequestData.i && Arrays.equals(this.j, mediaLoadRequestData.j) && Objects.equal(this.m, mediaLoadRequestData.m) && Objects.equal(this.n, mediaLoadRequestData.n) && Objects.equal(this.o, mediaLoadRequestData.o) && Objects.equal(this.p, mediaLoadRequestData.p) && this.q == mediaLoadRequestData.q) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3442c, this.f, this.g, Long.valueOf(this.h), Double.valueOf(this.i), this.j, String.valueOf(this.l), this.m, this.n, this.o, this.p, Long.valueOf(this.q));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String jSONObject;
        JSONObject jSONObject2 = this.l;
        if (jSONObject2 == null) {
            jSONObject = null;
        } else {
            jSONObject = jSONObject2.toString();
        }
        this.k = jSONObject;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f3442c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f, i, false);
        SafeParcelWriter.writeBooleanObject(parcel, 4, this.g, false);
        SafeParcelWriter.writeLong(parcel, 5, this.h);
        SafeParcelWriter.writeDouble(parcel, 6, this.i);
        SafeParcelWriter.writeLongArray(parcel, 7, this.j, false);
        SafeParcelWriter.writeString(parcel, 8, this.k, false);
        SafeParcelWriter.writeString(parcel, 9, this.m, false);
        SafeParcelWriter.writeString(parcel, 10, this.n, false);
        SafeParcelWriter.writeString(parcel, 11, this.o, false);
        SafeParcelWriter.writeString(parcel, 12, this.p, false);
        SafeParcelWriter.writeLong(parcel, 13, this.q);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
