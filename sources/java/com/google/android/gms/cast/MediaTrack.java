package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.work.impl.workers.a;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "MediaTrackCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class MediaTrack extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    @KeepForSdk
    public static final Parcelable.Creator<MediaTrack> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final long f3456c;
    public final int f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final int k;
    public final List l;
    public String m;
    public final JSONObject n;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f3457a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public int f3458c = 0;

        public Builder(long j) {
        }

        public final void a(int i) {
            if (i >= -1 && i <= 5) {
                this.f3458c = i;
                return;
            }
            throw new IllegalArgumentException(a.r(i, "invalid subtype ", new StringBuilder(String.valueOf(i).length() + 16)));
        }
    }

    public MediaTrack(long j, int i, String str, String str2, String str3, String str4, int i2, List list, JSONObject jSONObject) {
        this.f3456c = j;
        this.f = i;
        this.g = str;
        this.h = str2;
        this.i = str3;
        this.j = str4;
        this.k = i2;
        this.l = list;
        this.n = jSONObject;
    }

    public final JSONObject F() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackId", this.f3456c);
            int i = this.f;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        jSONObject.put("type", "VIDEO");
                    }
                } else {
                    jSONObject.put("type", "AUDIO");
                }
            } else {
                jSONObject.put("type", "TEXT");
            }
            String str = this.g;
            if (str != null) {
                jSONObject.put("trackContentId", str);
            }
            String str2 = this.h;
            if (str2 != null) {
                jSONObject.put("trackContentType", str2);
            }
            String str3 = this.i;
            if (str3 != null) {
                jSONObject.put("name", str3);
            }
            String str4 = this.j;
            if (!TextUtils.isEmpty(str4)) {
                jSONObject.put("language", str4);
            }
            int i2 = this.k;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                jSONObject.put("subtype", "METADATA");
                            }
                        } else {
                            jSONObject.put("subtype", "CHAPTERS");
                        }
                    } else {
                        jSONObject.put("subtype", "DESCRIPTIONS");
                    }
                } else {
                    jSONObject.put("subtype", "CAPTIONS");
                }
            } else {
                jSONObject.put("subtype", "SUBTITLES");
            }
            List list = this.l;
            if (list != null) {
                jSONObject.put("roles", new JSONArray((Collection) list));
            }
            JSONObject jSONObject2 = this.n;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaTrack)) {
            return false;
        }
        MediaTrack mediaTrack = (MediaTrack) obj;
        JSONObject jSONObject = this.n;
        if (jSONObject != null) {
            z = false;
        } else {
            z = true;
        }
        JSONObject jSONObject2 = mediaTrack.n;
        if (jSONObject2 != null) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z != z2) {
            return false;
        }
        if ((jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && this.f3456c == mediaTrack.f3456c && this.f == mediaTrack.f && CastUtils.c(this.g, mediaTrack.g) && CastUtils.c(this.h, mediaTrack.h) && CastUtils.c(this.i, mediaTrack.i) && CastUtils.c(this.j, mediaTrack.j) && this.k == mediaTrack.k && CastUtils.c(this.l, mediaTrack.l)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f3456c), Integer.valueOf(this.f), this.g, this.h, this.i, this.j, Integer.valueOf(this.k), this.l, String.valueOf(this.n));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String jSONObject;
        JSONObject jSONObject2 = this.n;
        if (jSONObject2 == null) {
            jSONObject = null;
        } else {
            jSONObject = jSONObject2.toString();
        }
        this.m = jSONObject;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, this.f3456c);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        SafeParcelWriter.writeString(parcel, 6, this.i, false);
        SafeParcelWriter.writeString(parcel, 7, this.j, false);
        SafeParcelWriter.writeInt(parcel, 8, this.k);
        SafeParcelWriter.writeStringList(parcel, 9, this.l, false);
        SafeParcelWriter.writeString(parcel, 10, this.m, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
