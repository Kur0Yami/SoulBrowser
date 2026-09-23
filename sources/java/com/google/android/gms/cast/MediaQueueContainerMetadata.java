package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import j$.util.DesugarCollections;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "MediaQueueContainerMetadataCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class MediaQueueContainerMetadata extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<MediaQueueContainerMetadata> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public int f3446c;
    public String f;
    public ArrayList g;
    public ArrayList h;
    public double i;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final MediaQueueContainerMetadata f3447a;

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.cast.MediaQueueContainerMetadata, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
        public Builder() {
            ?? abstractSafeParcelable = new AbstractSafeParcelable();
            abstractSafeParcelable.f3446c = 0;
            abstractSafeParcelable.f = null;
            abstractSafeParcelable.g = null;
            abstractSafeParcelable.h = null;
            abstractSafeParcelable.i = 0.0d;
            this.f3447a = abstractSafeParcelable;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface MediaQueueContainerType {
    }

    public final JSONObject F() {
        JSONObject jSONObject = new JSONObject();
        try {
            int i = this.f3446c;
            if (i != 0) {
                if (i == 1) {
                    jSONObject.put("containerType", "AUDIOBOOK_CONTAINER");
                }
            } else {
                jSONObject.put("containerType", "GENERIC_CONTAINER");
            }
            if (!TextUtils.isEmpty(this.f)) {
                jSONObject.put("title", this.f);
            }
            ArrayList arrayList = this.g;
            if (arrayList != null && !arrayList.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                ArrayList arrayList2 = this.g;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    jSONArray.put(((MediaMetadata) obj).k0());
                }
                jSONObject.put("sections", jSONArray);
            }
            ArrayList arrayList3 = this.h;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                jSONObject.put("containerImages", com.google.android.gms.cast.internal.media.zza.b(this.h));
            }
            jSONObject.put("containerDuration", this.i);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MediaQueueContainerMetadata) {
                MediaQueueContainerMetadata mediaQueueContainerMetadata = (MediaQueueContainerMetadata) obj;
                if (this.f3446c == mediaQueueContainerMetadata.f3446c && TextUtils.equals(this.f, mediaQueueContainerMetadata.f) && Objects.equal(this.g, mediaQueueContainerMetadata.g) && Objects.equal(this.h, mediaQueueContainerMetadata.h) && this.i == mediaQueueContainerMetadata.i) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f3446c), this.f, this.g, this.h, Double.valueOf(this.i));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        List unmodifiableList;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f3446c);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        ArrayList arrayList = this.g;
        List list = null;
        if (arrayList == null) {
            unmodifiableList = null;
        } else {
            unmodifiableList = DesugarCollections.unmodifiableList(arrayList);
        }
        SafeParcelWriter.writeTypedList(parcel, 4, unmodifiableList, false);
        ArrayList arrayList2 = this.h;
        if (arrayList2 != null) {
            list = DesugarCollections.unmodifiableList(arrayList2);
        }
        SafeParcelWriter.writeTypedList(parcel, 5, list, false);
        SafeParcelWriter.writeDouble(parcel, 6, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
