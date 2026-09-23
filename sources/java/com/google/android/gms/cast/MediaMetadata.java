package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "MediaMetadataCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class MediaMetadata extends AbstractSafeParcelable {
    public static final zzbu i;

    /* renamed from: c, reason: collision with root package name */
    public final List f3445c;
    public final Bundle f;
    public int g;
    public static final String[] h = {"none", "String", "int", "double", "ISO-8601 date String", "Time in milliseconds as long"};

    @NonNull
    public static final Parcelable.Creator<MediaMetadata> CREATOR = new Object();

    @KeepForSdk
    /* loaded from: classes.dex */
    public class Writer {
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.os.Parcelable$Creator<com.google.android.gms.cast.MediaMetadata>, java.lang.Object] */
    static {
        zzbu zzbuVar = new zzbu();
        zzbuVar.a(4, "com.google.android.gms.cast.metadata.CREATION_DATE", "creationDateTime");
        zzbuVar.a(4, "com.google.android.gms.cast.metadata.RELEASE_DATE", "releaseDate");
        zzbuVar.a(4, "com.google.android.gms.cast.metadata.BROADCAST_DATE", "originalAirdate");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.TITLE", "title");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.SUBTITLE", "subtitle");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.ARTIST", "artist");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "albumArtist");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.ALBUM_TITLE", "albumName");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.COMPOSER", "composer");
        zzbuVar.a(2, "com.google.android.gms.cast.metadata.DISC_NUMBER", "discNumber");
        zzbuVar.a(2, "com.google.android.gms.cast.metadata.TRACK_NUMBER", "trackNumber");
        zzbuVar.a(2, "com.google.android.gms.cast.metadata.SEASON_NUMBER", "season");
        zzbuVar.a(2, "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "episode");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.SERIES_TITLE", "seriesTitle");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.STUDIO", "studio");
        zzbuVar.a(2, "com.google.android.gms.cast.metadata.WIDTH", "width");
        zzbuVar.a(2, "com.google.android.gms.cast.metadata.HEIGHT", "height");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.LOCATION_NAME", "location");
        zzbuVar.a(3, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "latitude");
        zzbuVar.a(3, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "longitude");
        zzbuVar.a(5, "com.google.android.gms.cast.metadata.SECTION_DURATION", "sectionDuration");
        zzbuVar.a(5, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "sectionStartTimeInMedia");
        zzbuVar.a(5, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "sectionStartAbsoluteTime");
        zzbuVar.a(5, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "sectionStartTimeInContainer");
        zzbuVar.a(2, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID", "queueItemId");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.BOOK_TITLE", "bookTitle");
        zzbuVar.a(2, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "chapterNumber");
        zzbuVar.a(1, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "chapterTitle");
        i = zzbuVar;
    }

    public MediaMetadata(int i2) {
        this(new ArrayList(), new Bundle(), i2);
    }

    public static boolean C0(Bundle bundle, Bundle bundle2) {
        if (bundle.size() == bundle2.size()) {
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                Object obj2 = bundle2.get(str);
                if (!(obj instanceof Bundle) || !(obj2 instanceof Bundle) || C0((Bundle) obj, (Bundle) obj2)) {
                    if (obj == null) {
                        if (obj2 != null || !bundle2.containsKey(str)) {
                            return false;
                        }
                    } else if (!obj.equals(obj2)) {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static void X(int i2, String str) {
        int i3;
        if (!TextUtils.isEmpty(str)) {
            Integer num = (Integer) i.f3669c.get(str);
            if (num != null) {
                i3 = num.intValue();
            } else {
                i3 = 0;
            }
            if (i3 != i2 && i3 != 0) {
                String str2 = h[i2];
                throw new IllegalArgumentException(a.r(new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length()), "Value for ", str, " must be a ", str2));
            }
            return;
        }
        throw new IllegalArgumentException("null and empty keys are not allowed");
    }

    public final void A0(JSONObject jSONObject) {
        HashSet hashSet;
        int i2;
        Bundle bundle = this.f;
        bundle.clear();
        List list = this.f3445c;
        list.clear();
        int i3 = 0;
        this.g = 0;
        try {
            this.g = jSONObject.getInt("metadataType");
        } catch (JSONException unused) {
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        if (optJSONArray != null) {
            com.google.android.gms.cast.internal.media.zza.a(optJSONArray, list);
        }
        ArrayList arrayList = new ArrayList();
        int i4 = this.g;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            if (i4 == 5) {
                                Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.BOOK_TITLE", "com.google.android.gms.cast.metadata.SUBTITLE");
                            }
                        } else {
                            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
                        }
                    } else {
                        Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
                    }
                } else {
                    Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
                }
            } else {
                Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
            }
        } else {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        }
        Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.SECTION_DURATION", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID");
        HashSet hashSet2 = new HashSet(arrayList);
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && !"metadataType".equals(next)) {
                    zzbu zzbuVar = i;
                    String str = (String) zzbuVar.b.get(next);
                    if (str != null) {
                        if (hashSet2.contains(str)) {
                            try {
                                Object obj = jSONObject.get(next);
                                if (obj != null) {
                                    Integer num = (Integer) zzbuVar.f3669c.get(str);
                                    if (num != null) {
                                        i2 = num.intValue();
                                    } else {
                                        i2 = i3;
                                    }
                                    if (i2 != 1) {
                                        if (i2 != 2) {
                                            if (i2 != 3) {
                                                if (i2 != 4) {
                                                    if (i2 == 5) {
                                                        long optLong = jSONObject.optLong(next);
                                                        Pattern pattern = CastUtils.f3603a;
                                                        hashSet = hashSet2;
                                                        try {
                                                            bundle.putLong(str, optLong * 1000);
                                                        } catch (JSONException unused2) {
                                                        }
                                                    }
                                                } else {
                                                    hashSet = hashSet2;
                                                    if (obj instanceof String) {
                                                        String str2 = (String) obj;
                                                        if (com.google.android.gms.cast.internal.media.zza.c(str2) != null) {
                                                            bundle.putString(str, str2);
                                                        }
                                                    }
                                                }
                                            } else {
                                                hashSet = hashSet2;
                                                double optDouble = jSONObject.optDouble(next);
                                                if (!Double.isNaN(optDouble)) {
                                                    bundle.putDouble(str, optDouble);
                                                }
                                            }
                                        } else {
                                            hashSet = hashSet2;
                                            if (obj instanceof Integer) {
                                                bundle.putInt(str, ((Integer) obj).intValue());
                                            }
                                        }
                                    } else {
                                        hashSet = hashSet2;
                                        if (obj instanceof String) {
                                            bundle.putString(str, (String) obj);
                                        }
                                    }
                                }
                            } catch (JSONException unused3) {
                                hashSet = hashSet2;
                            }
                        }
                    } else {
                        hashSet = hashSet2;
                        Object obj2 = jSONObject.get(next);
                        if (obj2 instanceof String) {
                            bundle.putString(next, (String) obj2);
                        } else if (obj2 instanceof Integer) {
                            bundle.putInt(next, ((Integer) obj2).intValue());
                        } else if (obj2 instanceof Double) {
                            bundle.putDouble(next, ((Double) obj2).doubleValue());
                        }
                    }
                    hashSet2 = hashSet;
                    i3 = 0;
                }
            }
        } catch (JSONException unused4) {
        }
    }

    public final String F(String str) {
        X(1, str);
        return this.f.getString(str);
    }

    public final boolean G() {
        List list = this.f3445c;
        if (list != null && !list.isEmpty()) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MediaMetadata) {
                MediaMetadata mediaMetadata = (MediaMetadata) obj;
                if (C0(this.f, mediaMetadata.f) && this.f3445c.equals(mediaMetadata.f3445c)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i2;
        int i3 = 17;
        Bundle bundle = this.f;
        if (bundle != null) {
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                Object obj = bundle.get(it.next());
                int i4 = i3 * 31;
                if (obj != null) {
                    i2 = obj.hashCode();
                } else {
                    i2 = 0;
                }
                i3 = i4 + i2;
            }
        }
        return this.f3445c.hashCode() + (i3 * 31);
    }

    public final JSONObject k0() {
        Bundle bundle;
        int i2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("metadataType", this.g);
        } catch (JSONException unused) {
        }
        JSONArray b = com.google.android.gms.cast.internal.media.zza.b(this.f3445c);
        if (b.length() != 0) {
            try {
                jSONObject.put("images", b);
            } catch (JSONException unused2) {
            }
        }
        ArrayList arrayList = new ArrayList();
        int i3 = this.g;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i3 != 4) {
                            if (i3 == 5) {
                                Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.BOOK_TITLE", "com.google.android.gms.cast.metadata.SUBTITLE");
                            }
                        } else {
                            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
                        }
                    } else {
                        Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
                    }
                } else {
                    Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
                }
            } else {
                Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
            }
        } else {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        }
        Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.SECTION_DURATION", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID");
        try {
            int size = arrayList.size();
            int i4 = 0;
            while (true) {
                bundle = this.f;
                if (i4 >= size) {
                    break;
                }
                Object obj = arrayList.get(i4);
                i4++;
                String str = (String) obj;
                if (str != null && bundle.containsKey(str)) {
                    zzbu zzbuVar = i;
                    String str2 = (String) zzbuVar.f3668a.get(str);
                    if (str2 != null) {
                        Integer num = (Integer) zzbuVar.f3669c.get(str);
                        if (num != null) {
                            i2 = num.intValue();
                        } else {
                            i2 = 0;
                        }
                        if (i2 != 1) {
                            if (i2 != 2) {
                                if (i2 != 3) {
                                    if (i2 != 4) {
                                        if (i2 == 5) {
                                            long j = bundle.getLong(str);
                                            Pattern pattern = CastUtils.f3603a;
                                            jSONObject.put(str2, j / 1000.0d);
                                        }
                                    }
                                } else {
                                    jSONObject.put(str2, bundle.getDouble(str));
                                }
                            } else {
                                jSONObject.put(str2, bundle.getInt(str));
                            }
                        }
                        jSONObject.put(str2, bundle.getString(str));
                    }
                }
            }
            for (String str3 : bundle.keySet()) {
                if (!str3.startsWith("com.google.")) {
                    Object obj2 = bundle.get(str3);
                    if (obj2 instanceof String) {
                        jSONObject.put(str3, obj2);
                    } else if (obj2 instanceof Integer) {
                        jSONObject.put(str3, obj2);
                    } else if (obj2 instanceof Double) {
                        jSONObject.put(str3, obj2);
                    }
                }
            }
        } catch (JSONException unused3) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 2, this.f3445c, false);
        SafeParcelWriter.writeBundle(parcel, 3, this.f, false);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public MediaMetadata(ArrayList arrayList, Bundle bundle, int i2) {
        this.f3445c = arrayList;
        this.f = bundle;
        this.g = i2;
    }
}
