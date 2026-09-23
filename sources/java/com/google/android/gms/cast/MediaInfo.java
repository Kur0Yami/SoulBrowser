package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.internal.cast.zzhs;
import com.google.android.gms.internal.cast.zzhv;
import com.google.android.gms.internal.cast.zzim;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "MediaInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class MediaInfo extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<MediaInfo> CREATOR;
    public static final long w;

    /* renamed from: c, reason: collision with root package name */
    public final String f3438c;
    public final int f;
    public final String g;
    public final MediaMetadata h;
    public final long i;
    public final List j;
    public final TextTrackStyle k;
    public String l;
    public List m;
    public List n;
    public final String o;
    public final VastAdsRequest p;
    public final long q;
    public final String r;
    public final String s;
    public final String t;
    public final String u;
    public final JSONObject v;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final String f3439a;

        /* renamed from: c, reason: collision with root package name */
        public String f3440c;
        public MediaMetadata d;
        public List f;
        public int b = -1;
        public long e = -1;

        public Builder(String str) {
            this.f3439a = str;
        }

        public final MediaInfo a() {
            return new MediaInfo(this.f3439a, this.b, this.f3440c, this.d, this.e, this.f, null, null, null, null, null, null, -1L, null, null, null, null);
        }
    }

    @KeepForSdk
    /* loaded from: classes.dex */
    public class Writer {
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.os.Parcelable$Creator<com.google.android.gms.cast.MediaInfo>, java.lang.Object] */
    static {
        Pattern pattern = CastUtils.f3603a;
        w = -1000L;
        CREATOR = new Object();
    }

    public MediaInfo(String str, int i, String str2, MediaMetadata mediaMetadata, long j, List list, TextTrackStyle textTrackStyle, String str3, ArrayList arrayList, ArrayList arrayList2, String str4, VastAdsRequest vastAdsRequest, long j2, String str5, String str6, String str7, String str8) {
        this.f3438c = str;
        this.f = i;
        this.g = str2;
        this.h = mediaMetadata;
        this.i = j;
        this.j = list;
        this.k = textTrackStyle;
        this.l = str3;
        if (str3 != null) {
            try {
                this.v = new JSONObject(this.l);
            } catch (JSONException unused) {
                this.v = null;
                this.l = null;
            }
        } else {
            this.v = null;
        }
        this.m = arrayList;
        this.n = arrayList2;
        this.o = str4;
        this.p = vastAdsRequest;
        this.q = j2;
        this.r = str5;
        this.s = str6;
        this.t = str7;
        this.u = str8;
        if (this.f3438c == null && str6 == null && str4 == null) {
            throw new IllegalArgumentException("Either contentID or contentUrl or entity should be set");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00b9 A[LOOP:0: B:4:0x0024->B:11:0x00b9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01b2 A[LOOP:1: B:18:0x00e7->B:24:0x01b2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01b9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void F(org.json.JSONObject r43) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaInfo.F(org.json.JSONObject):void");
    }

    public final JSONObject G() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("contentId", this.f3438c);
            jSONObject.putOpt("contentUrl", this.s);
            int i = this.f;
            if (i != 1) {
                if (i != 2) {
                    str = "NONE";
                } else {
                    str = "LIVE";
                }
            } else {
                str = "BUFFERED";
            }
            jSONObject.put("streamType", str);
            String str2 = this.g;
            if (str2 != null) {
                jSONObject.put("contentType", str2);
            }
            MediaMetadata mediaMetadata = this.h;
            if (mediaMetadata != null) {
                jSONObject.put("metadata", mediaMetadata.k0());
            }
            long j = this.i;
            if (j <= -1) {
                jSONObject.put("duration", JSONObject.NULL);
            } else {
                Pattern pattern = CastUtils.f3603a;
                jSONObject.put("duration", j / 1000.0d);
            }
            List list = this.j;
            if (list != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((MediaTrack) it.next()).F());
                }
                jSONObject.put("tracks", jSONArray);
            }
            TextTrackStyle textTrackStyle = this.k;
            if (textTrackStyle != null) {
                jSONObject.put("textTrackStyle", textTrackStyle.F());
            }
            JSONObject jSONObject2 = this.v;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
            String str3 = this.o;
            if (str3 != null) {
                jSONObject.put("entity", str3);
            }
            if (this.m != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator it2 = this.m.iterator();
                while (it2.hasNext()) {
                    jSONArray2.put(((AdBreakInfo) it2.next()).F());
                }
                jSONObject.put("breaks", jSONArray2);
            }
            if (this.n != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator it3 = this.n.iterator();
                while (it3.hasNext()) {
                    jSONArray3.put(((AdBreakClipInfo) it3.next()).F());
                }
                jSONObject.put("breakClips", jSONArray3);
            }
            VastAdsRequest vastAdsRequest = this.p;
            if (vastAdsRequest != null) {
                jSONObject.put("vmapAdsRequest", vastAdsRequest.F());
            }
            long j2 = this.q;
            if (j2 != -1) {
                Pattern pattern2 = CastUtils.f3603a;
                jSONObject.put("startAbsoluteTime", j2 / 1000.0d);
            }
            jSONObject.putOpt("atvEntity", this.r);
            String str4 = this.t;
            if (str4 != null) {
                jSONObject.put("hlsSegmentFormat", str4);
            }
            String str5 = this.u;
            if (str5 != null) {
                jSONObject.put("hlsVideoSegmentFormat", str5);
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
        if (!(obj instanceof MediaInfo)) {
            return false;
        }
        MediaInfo mediaInfo = (MediaInfo) obj;
        JSONObject jSONObject = this.v;
        if (jSONObject != null) {
            z = false;
        } else {
            z = true;
        }
        JSONObject jSONObject2 = mediaInfo.v;
        if (jSONObject2 != null) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z != z2) {
            return false;
        }
        if ((jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && CastUtils.c(this.f3438c, mediaInfo.f3438c) && this.f == mediaInfo.f && CastUtils.c(this.g, mediaInfo.g) && CastUtils.c(this.h, mediaInfo.h) && this.i == mediaInfo.i && CastUtils.c(this.j, mediaInfo.j) && CastUtils.c(this.k, mediaInfo.k) && CastUtils.c(this.m, mediaInfo.m) && CastUtils.c(this.n, mediaInfo.n) && CastUtils.c(this.o, mediaInfo.o) && CastUtils.c(this.p, mediaInfo.p) && this.q == mediaInfo.q && CastUtils.c(this.r, mediaInfo.r) && CastUtils.c(this.s, mediaInfo.s) && CastUtils.c(this.t, mediaInfo.t) && CastUtils.c(this.u, mediaInfo.u)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3438c, Integer.valueOf(this.f), this.g, this.h, Long.valueOf(this.i), String.valueOf(this.v), this.j, this.k, this.m, this.n, this.o, this.p, Long.valueOf(this.q), this.r, this.t, this.u);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String jSONObject;
        List unmodifiableList;
        List list = null;
        JSONObject jSONObject2 = this.v;
        if (jSONObject2 == null) {
            jSONObject = null;
        } else {
            jSONObject = jSONObject2.toString();
        }
        this.l = jSONObject;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        String str = this.f3438c;
        if (str == null) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        SafeParcelWriter.writeString(parcel, 2, str, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i, false);
        SafeParcelWriter.writeLong(parcel, 6, this.i);
        SafeParcelWriter.writeTypedList(parcel, 7, this.j, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.k, i, false);
        SafeParcelWriter.writeString(parcel, 9, this.l, false);
        List list2 = this.m;
        if (list2 == null) {
            unmodifiableList = null;
        } else {
            unmodifiableList = DesugarCollections.unmodifiableList(list2);
        }
        SafeParcelWriter.writeTypedList(parcel, 10, unmodifiableList, false);
        List list3 = this.n;
        if (list3 != null) {
            list = DesugarCollections.unmodifiableList(list3);
        }
        SafeParcelWriter.writeTypedList(parcel, 11, list, false);
        SafeParcelWriter.writeString(parcel, 12, this.o, false);
        SafeParcelWriter.writeParcelable(parcel, 13, this.p, i, false);
        SafeParcelWriter.writeLong(parcel, 14, this.q);
        SafeParcelWriter.writeString(parcel, 15, this.r, false);
        SafeParcelWriter.writeString(parcel, 16, this.s, false);
        SafeParcelWriter.writeString(parcel, 17, this.t, false);
        SafeParcelWriter.writeString(parcel, 18, this.u, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public MediaInfo(JSONObject jSONObject) {
        this(jSONObject.optString("contentId"), -1, null, null, -1L, null, null, null, null, null, null, null, -1L, null, null, null, null);
        double d;
        int i;
        int i2;
        int i3;
        zzhv zzhvVar;
        String optString = jSONObject.optString("streamType", "NONE");
        if ("NONE".equals(optString)) {
            this.f = 0;
        } else if ("BUFFERED".equals(optString)) {
            this.f = 1;
        } else if ("LIVE".equals(optString)) {
            this.f = 2;
        } else {
            this.f = -1;
        }
        this.g = CastUtils.a(jSONObject, "contentType");
        if (jSONObject.has("metadata")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("metadata");
            MediaMetadata mediaMetadata = new MediaMetadata(jSONObject2.getInt("metadataType"));
            this.h = mediaMetadata;
            mediaMetadata.A0(jSONObject2);
        }
        this.i = -1L;
        if (this.f != 2 && jSONObject.has("duration") && !jSONObject.isNull("duration")) {
            double optDouble = jSONObject.optDouble("duration", 0.0d);
            if (!Double.isNaN(optDouble) && !Double.isInfinite(optDouble) && optDouble >= 0.0d) {
                this.i = (long) (optDouble * 1000.0d);
            }
        }
        if (jSONObject.has("tracks")) {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("tracks");
            d = 0.0d;
            for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i4);
                long j = jSONObject3.getLong("trackId");
                String optString2 = jSONObject3.optString("type");
                if ("TEXT".equals(optString2)) {
                    i2 = 1;
                } else {
                    i2 = "AUDIO".equals(optString2) ? 2 : "VIDEO".equals(optString2) ? 3 : 0;
                }
                String a2 = CastUtils.a(jSONObject3, "trackContentId");
                String a3 = CastUtils.a(jSONObject3, "trackContentType");
                String a4 = CastUtils.a(jSONObject3, "name");
                String a5 = CastUtils.a(jSONObject3, "language");
                if (jSONObject3.has("subtype")) {
                    String string = jSONObject3.getString("subtype");
                    if ("SUBTITLES".equals(string)) {
                        i3 = 1;
                    } else {
                        i3 = "CAPTIONS".equals(string) ? 2 : "DESCRIPTIONS".equals(string) ? 3 : "CHAPTERS".equals(string) ? 4 : "METADATA".equals(string) ? 5 : -1;
                    }
                } else {
                    i3 = 0;
                }
                if (jSONObject3.has("roles")) {
                    zzim zzimVar = zzhv.f;
                    zzhs zzhsVar = new zzhs();
                    JSONArray jSONArray2 = jSONObject3.getJSONArray("roles");
                    for (int i5 = 0; i5 < jSONArray2.length(); i5++) {
                        zzhsVar.b(jSONArray2.optString(i5));
                    }
                    zzhvVar = zzhsVar.c();
                } else {
                    zzhvVar = null;
                }
                arrayList.add(new MediaTrack(j, i2, a2, a3, a4, a5, i3, zzhvVar, jSONObject3.optJSONObject("customData")));
            }
            this.j = new ArrayList(arrayList);
        } else {
            d = 0.0d;
            this.j = null;
        }
        if (jSONObject.has("textTrackStyle")) {
            JSONObject jSONObject4 = jSONObject.getJSONObject("textTrackStyle");
            TextTrackStyle textTrackStyle = new TextTrackStyle(1.0f, 0, 0, -1, 0, -1, 0, 0, null, -1, -1, null);
            textTrackStyle.f3460c = (float) jSONObject4.optDouble("fontScale", 1.0d);
            textTrackStyle.f = TextTrackStyle.G(jSONObject4.optString("foregroundColor"));
            textTrackStyle.g = TextTrackStyle.G(jSONObject4.optString("backgroundColor"));
            if (jSONObject4.has("edgeType")) {
                String string2 = jSONObject4.getString("edgeType");
                if ("NONE".equals(string2)) {
                    textTrackStyle.h = 0;
                } else if ("OUTLINE".equals(string2)) {
                    textTrackStyle.h = 1;
                } else if ("DROP_SHADOW".equals(string2)) {
                    textTrackStyle.h = 2;
                } else if ("RAISED".equals(string2)) {
                    textTrackStyle.h = 3;
                } else if ("DEPRESSED".equals(string2)) {
                    textTrackStyle.h = 4;
                }
            }
            textTrackStyle.i = TextTrackStyle.G(jSONObject4.optString("edgeColor"));
            if (jSONObject4.has("windowType")) {
                String string3 = jSONObject4.getString("windowType");
                if ("NONE".equals(string3)) {
                    textTrackStyle.j = 0;
                } else if ("NORMAL".equals(string3)) {
                    textTrackStyle.j = 1;
                } else if ("ROUNDED_CORNERS".equals(string3)) {
                    textTrackStyle.j = 2;
                }
            }
            textTrackStyle.k = TextTrackStyle.G(jSONObject4.optString("windowColor"));
            if (textTrackStyle.j == 2) {
                textTrackStyle.l = jSONObject4.optInt("windowRoundedCornerRadius", 0);
            }
            textTrackStyle.m = CastUtils.a(jSONObject4, "fontFamily");
            if (jSONObject4.has("fontGenericFamily")) {
                String string4 = jSONObject4.getString("fontGenericFamily");
                if ("SANS_SERIF".equals(string4)) {
                    textTrackStyle.n = 0;
                } else if ("MONOSPACED_SANS_SERIF".equals(string4)) {
                    textTrackStyle.n = 1;
                } else if ("SERIF".equals(string4)) {
                    textTrackStyle.n = 2;
                } else if ("MONOSPACED_SERIF".equals(string4)) {
                    textTrackStyle.n = 3;
                } else {
                    if ("CASUAL".equals(string4)) {
                        i = 4;
                    } else if ("CURSIVE".equals(string4)) {
                        i = 5;
                    } else if ("SMALL_CAPITALS".equals(string4)) {
                        textTrackStyle.n = 6;
                    }
                    textTrackStyle.n = i;
                }
            }
            if (jSONObject4.has("fontStyle")) {
                String string5 = jSONObject4.getString("fontStyle");
                if ("NORMAL".equals(string5)) {
                    textTrackStyle.o = 0;
                } else if ("BOLD".equals(string5)) {
                    textTrackStyle.o = 1;
                } else if ("ITALIC".equals(string5)) {
                    textTrackStyle.o = 2;
                } else if ("BOLD_ITALIC".equals(string5)) {
                    textTrackStyle.o = 3;
                }
            }
            textTrackStyle.q = jSONObject4.optJSONObject("customData");
            this.k = textTrackStyle;
        } else {
            this.k = null;
        }
        F(jSONObject);
        this.v = jSONObject.optJSONObject("customData");
        this.o = CastUtils.a(jSONObject, "entity");
        this.r = CastUtils.a(jSONObject, "atvEntity");
        JSONObject optJSONObject = jSONObject.optJSONObject("vmapAdsRequest");
        this.p = optJSONObject != null ? new VastAdsRequest(CastUtils.a(optJSONObject, "adTagUrl"), CastUtils.a(optJSONObject, "adsResponse")) : null;
        if (jSONObject.has("startAbsoluteTime") && !jSONObject.isNull("startAbsoluteTime")) {
            double optDouble2 = jSONObject.optDouble("startAbsoluteTime");
            if (!Double.isNaN(optDouble2) && !Double.isInfinite(optDouble2) && optDouble2 >= d) {
                this.q = (long) (optDouble2 * 1000.0d);
            }
        }
        if (jSONObject.has("contentUrl")) {
            this.s = jSONObject.optString("contentUrl");
        }
        this.t = CastUtils.a(jSONObject, "hlsSegmentFormat");
        this.u = CastUtils.a(jSONObject, "hlsVideoSegmentFormat");
    }
}
