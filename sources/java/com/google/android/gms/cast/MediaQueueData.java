package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.media.MediaCommon;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import j$.util.DesugarCollections;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "MediaQueueDataCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class MediaQueueData extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<MediaQueueData> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public String f3448c;
    public String f;
    public int g;
    public String h;
    public MediaQueueContainerMetadata i;
    public int j;
    public ArrayList k;
    public int l;
    public long m;
    public boolean n;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final MediaQueueData f3449a;

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.cast.MediaQueueData, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
        public Builder() {
            ?? abstractSafeParcelable = new AbstractSafeParcelable();
            abstractSafeParcelable.f3448c = null;
            abstractSafeParcelable.f = null;
            abstractSafeParcelable.g = 0;
            abstractSafeParcelable.h = null;
            abstractSafeParcelable.j = 0;
            abstractSafeParcelable.k = null;
            abstractSafeParcelable.l = 0;
            abstractSafeParcelable.m = -1L;
            abstractSafeParcelable.n = false;
            this.f3449a = abstractSafeParcelable;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface MediaQueueType {
    }

    public final JSONObject F() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.f3448c)) {
                jSONObject.put("id", this.f3448c);
            }
            if (!TextUtils.isEmpty(this.f)) {
                jSONObject.put("entity", this.f);
            }
            switch (this.g) {
                case 1:
                    jSONObject.put("queueType", "ALBUM");
                    break;
                case 2:
                    jSONObject.put("queueType", "PLAYLIST");
                    break;
                case 3:
                    jSONObject.put("queueType", "AUDIOBOOK");
                    break;
                case 4:
                    jSONObject.put("queueType", "RADIO_STATION");
                    break;
                case 5:
                    jSONObject.put("queueType", "PODCAST_SERIES");
                    break;
                case 6:
                    jSONObject.put("queueType", "TV_SERIES");
                    break;
                case 7:
                    jSONObject.put("queueType", "VIDEO_PLAYLIST");
                    break;
                case 8:
                    jSONObject.put("queueType", "LIVE_TV");
                    break;
                case 9:
                    jSONObject.put("queueType", "MOVIE");
                    break;
            }
            if (!TextUtils.isEmpty(this.h)) {
                jSONObject.put("name", this.h);
            }
            MediaQueueContainerMetadata mediaQueueContainerMetadata = this.i;
            if (mediaQueueContainerMetadata != null) {
                jSONObject.put("containerMetadata", mediaQueueContainerMetadata.F());
            }
            String b = MediaCommon.b(Integer.valueOf(this.j));
            if (b != null) {
                jSONObject.put("repeatMode", b);
            }
            ArrayList arrayList = this.k;
            if (arrayList != null && !arrayList.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                ArrayList arrayList2 = this.k;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    jSONArray.put(((MediaQueueItem) obj).toJson());
                }
                jSONObject.put("items", jSONArray);
            }
            jSONObject.put("startIndex", this.l);
            long j = this.m;
            if (j != -1) {
                Pattern pattern = CastUtils.f3603a;
                jSONObject.put("startTime", j / 1000.0d);
            }
            jSONObject.put("shuffle", this.n);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MediaQueueData) {
                MediaQueueData mediaQueueData = (MediaQueueData) obj;
                if (TextUtils.equals(this.f3448c, mediaQueueData.f3448c) && TextUtils.equals(this.f, mediaQueueData.f) && this.g == mediaQueueData.g && TextUtils.equals(this.h, mediaQueueData.h) && Objects.equal(this.i, mediaQueueData.i) && this.j == mediaQueueData.j && Objects.equal(this.k, mediaQueueData.k) && this.l == mediaQueueData.l && this.m == mediaQueueData.m && this.n == mediaQueueData.n) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3448c, this.f, Integer.valueOf(this.g), this.h, this.i, Integer.valueOf(this.j), this.k, Integer.valueOf(this.l), Long.valueOf(this.m), Boolean.valueOf(this.n));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        List unmodifiableList;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3448c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.i, i, false);
        SafeParcelWriter.writeInt(parcel, 7, this.j);
        ArrayList arrayList = this.k;
        if (arrayList == null) {
            unmodifiableList = null;
        } else {
            unmodifiableList = DesugarCollections.unmodifiableList(arrayList);
        }
        SafeParcelWriter.writeTypedList(parcel, 8, unmodifiableList, false);
        SafeParcelWriter.writeInt(parcel, 9, this.l);
        SafeParcelWriter.writeLong(parcel, 10, this.m);
        SafeParcelWriter.writeBoolean(parcel, 11, this.n);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
