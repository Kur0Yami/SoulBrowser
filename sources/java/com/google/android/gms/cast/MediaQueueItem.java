package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "MediaQueueItemCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class MediaQueueItem extends AbstractSafeParcelable {

    @NonNull
    @KeepForSdk
    public static final Parcelable.Creator<MediaQueueItem> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public MediaInfo f3450c;
    public int f;
    public boolean g;
    public double h;
    public double i;
    public double j;
    public long[] k;
    public String l;
    public JSONObject m;
    public final Writer n;

    @KeepForSdk
    /* loaded from: classes.dex */
    public class Writer {
        public Writer() {
        }
    }

    public MediaQueueItem(MediaInfo mediaInfo, int i, boolean z, double d, double d2, double d3, long[] jArr, String str) {
        this.n = new Writer();
        this.f3450c = mediaInfo;
        this.f = i;
        this.g = z;
        this.h = d;
        this.i = d2;
        this.j = d3;
        this.k = jArr;
        this.l = str;
        if (str == null) {
            this.m = null;
            return;
        }
        try {
            this.m = new JSONObject(this.l);
        } catch (JSONException unused) {
            this.m = null;
            this.l = null;
        }
    }

    public final boolean F(JSONObject jSONObject) {
        boolean z;
        long[] jArr;
        boolean z2;
        int i;
        boolean z3 = false;
        if (jSONObject.has("media")) {
            this.f3450c = new MediaInfo(jSONObject.getJSONObject("media"));
            z = true;
        } else {
            z = false;
        }
        if (jSONObject.has("itemId") && this.f != (i = jSONObject.getInt("itemId"))) {
            this.f = i;
            z = true;
        }
        if (jSONObject.has("autoplay") && this.g != (z2 = jSONObject.getBoolean("autoplay"))) {
            this.g = z2;
            z = true;
        }
        double optDouble = jSONObject.optDouble("startTime");
        if (Double.isNaN(optDouble) != Double.isNaN(this.h) || (!Double.isNaN(optDouble) && Math.abs(optDouble - this.h) > 1.0E-7d)) {
            this.h = optDouble;
            z = true;
        }
        if (jSONObject.has("playbackDuration")) {
            double d = jSONObject.getDouble("playbackDuration");
            if (Math.abs(d - this.i) > 1.0E-7d) {
                this.i = d;
                z = true;
            }
        }
        if (jSONObject.has("preloadTime")) {
            double d2 = jSONObject.getDouble("preloadTime");
            if (Math.abs(d2 - this.j) > 1.0E-7d) {
                this.j = d2;
                z = true;
            }
        }
        if (jSONObject.has("activeTrackIds")) {
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            jArr = new long[length];
            for (int i2 = 0; i2 < length; i2++) {
                jArr[i2] = jSONArray.getLong(i2);
            }
            long[] jArr2 = this.k;
            if (jArr2 != null && jArr2.length == length) {
                for (int i3 = 0; i3 < length; i3++) {
                    if (this.k[i3] == jArr[i3]) {
                    }
                }
            }
            z3 = true;
            break;
        } else {
            jArr = null;
        }
        if (z3) {
            this.k = jArr;
            z = true;
        }
        if (jSONObject.has("customData")) {
            this.m = jSONObject.getJSONObject("customData");
            return true;
        }
        return z;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueItem)) {
            return false;
        }
        MediaQueueItem mediaQueueItem = (MediaQueueItem) obj;
        JSONObject jSONObject = this.m;
        if (jSONObject != null) {
            z = false;
        } else {
            z = true;
        }
        JSONObject jSONObject2 = mediaQueueItem.m;
        if (jSONObject2 != null) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z != z2) {
            return false;
        }
        if ((jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && CastUtils.c(this.f3450c, mediaQueueItem.f3450c) && this.f == mediaQueueItem.f && this.g == mediaQueueItem.g && (((Double.isNaN(this.h) && Double.isNaN(mediaQueueItem.h)) || this.h == mediaQueueItem.h) && this.i == mediaQueueItem.i && this.j == mediaQueueItem.j && Arrays.equals(this.k, mediaQueueItem.k))) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3450c, Integer.valueOf(this.f), Boolean.valueOf(this.g), Double.valueOf(this.h), Double.valueOf(this.i), Double.valueOf(this.j), Integer.valueOf(Arrays.hashCode(this.k)), String.valueOf(this.m));
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            MediaInfo mediaInfo = this.f3450c;
            if (mediaInfo != null) {
                jSONObject.put("media", mediaInfo.G());
            }
            int i = this.f;
            if (i != 0) {
                jSONObject.put("itemId", i);
            }
            jSONObject.put("autoplay", this.g);
            if (!Double.isNaN(this.h)) {
                jSONObject.put("startTime", this.h);
            }
            double d = this.i;
            if (d != Double.POSITIVE_INFINITY) {
                jSONObject.put("playbackDuration", d);
            }
            jSONObject.put("preloadTime", this.j);
            if (this.k != null) {
                JSONArray jSONArray = new JSONArray();
                for (long j : this.k) {
                    jSONArray.put(j);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            JSONObject jSONObject2 = this.m;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String jSONObject;
        JSONObject jSONObject2 = this.m;
        if (jSONObject2 == null) {
            jSONObject = null;
        } else {
            jSONObject = jSONObject2.toString();
        }
        this.l = jSONObject;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f3450c, i, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.writeBoolean(parcel, 4, this.g);
        SafeParcelWriter.writeDouble(parcel, 5, this.h);
        SafeParcelWriter.writeDouble(parcel, 6, this.i);
        SafeParcelWriter.writeDouble(parcel, 7, this.j);
        SafeParcelWriter.writeLongArray(parcel, 8, this.k, false);
        SafeParcelWriter.writeString(parcel, 9, this.l, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public MediaQueueItem(JSONObject jSONObject) {
        this(null, 0, true, Double.NaN, Double.POSITIVE_INFINITY, 0.0d, null, null);
        F(jSONObject);
    }

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final MediaQueueItem f3451a;

        public Builder(MediaInfo mediaInfo) {
            MediaQueueItem mediaQueueItem = new MediaQueueItem(mediaInfo, 0, true, Double.NaN, Double.POSITIVE_INFINITY, 0.0d, null, null);
            if (mediaInfo != null) {
                this.f3451a = mediaQueueItem;
                return;
            }
            throw new IllegalArgumentException("media cannot be null.");
        }

        public final MediaQueueItem a() {
            MediaQueueItem mediaQueueItem = this.f3451a;
            if (mediaQueueItem.f3450c != null) {
                if (!Double.isNaN(mediaQueueItem.h) && mediaQueueItem.h < 0.0d) {
                    throw new IllegalArgumentException("startTime cannot be negative or NaN.");
                }
                if (!Double.isNaN(mediaQueueItem.i)) {
                    if (!Double.isNaN(mediaQueueItem.j) && mediaQueueItem.j >= 0.0d) {
                        return mediaQueueItem;
                    }
                    throw new IllegalArgumentException("preloadTime cannot be negative or Nan.");
                }
                throw new IllegalArgumentException("playbackDuration cannot be NaN.");
            }
            throw new IllegalArgumentException("media cannot be null.");
        }

        public Builder(JSONObject jSONObject) {
            this.f3451a = new MediaQueueItem(jSONObject);
        }
    }
}
