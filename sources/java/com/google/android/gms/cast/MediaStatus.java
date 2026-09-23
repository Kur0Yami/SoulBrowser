package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "MediaStatusCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class MediaStatus extends AbstractSafeParcelable {

    @NonNull
    @KeepForSdk
    public static final Parcelable.Creator<MediaStatus> CREATOR;
    public boolean A;

    /* renamed from: c, reason: collision with root package name */
    public MediaInfo f3455c;
    public long f;
    public int g;
    public double h;
    public int i;
    public int j;
    public long k;
    public long l;
    public double m;
    public boolean n;
    public long[] o;
    public int p;
    public int q;
    public String r;
    public JSONObject s;
    public int t;
    public boolean v;
    public AdBreakStatus w;
    public VideoInfo x;
    public MediaLiveSeekableRange y;
    public MediaQueueData z;
    public final ArrayList u = new ArrayList();
    public final SparseArray B = new SparseArray();

    @KeepForSdk
    /* loaded from: classes.dex */
    public static class Builder {
    }

    @KeepForSdk
    /* loaded from: classes.dex */
    public class Writer {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable$Creator<com.google.android.gms.cast.MediaStatus>, java.lang.Object] */
    static {
        new Logger("MediaStatus", null);
        CREATOR = new Object();
    }

    public MediaStatus(MediaInfo mediaInfo, long j, int i, double d, int i2, int i3, long j2, long j3, double d2, boolean z, long[] jArr, int i4, int i5, String str, int i6, ArrayList arrayList, boolean z2, AdBreakStatus adBreakStatus, VideoInfo videoInfo, MediaLiveSeekableRange mediaLiveSeekableRange, MediaQueueData mediaQueueData) {
        this.f3455c = mediaInfo;
        this.f = j;
        this.g = i;
        this.h = d;
        this.i = i2;
        this.j = i3;
        this.k = j2;
        this.l = j3;
        this.m = d2;
        this.n = z;
        this.o = jArr;
        this.p = i4;
        this.q = i5;
        this.r = str;
        if (str != null) {
            try {
                this.s = new JSONObject(this.r);
            } catch (JSONException unused) {
                this.s = null;
                this.r = null;
            }
        } else {
            this.s = null;
        }
        this.t = i6;
        if (arrayList != null && !arrayList.isEmpty()) {
            k0(arrayList);
        }
        this.v = z2;
        this.w = adBreakStatus;
        this.x = videoInfo;
        this.y = mediaLiveSeekableRange;
        this.z = mediaQueueData;
        boolean z3 = false;
        if (mediaQueueData != null && mediaQueueData.n) {
            z3 = true;
        }
        this.A = z3;
    }

    public final AdBreakClipInfo F() {
        MediaInfo mediaInfo;
        List<AdBreakClipInfo> unmodifiableList;
        AdBreakStatus adBreakStatus = this.w;
        if (adBreakStatus != null) {
            String str = adBreakStatus.h;
            if (!TextUtils.isEmpty(str) && (mediaInfo = this.f3455c) != null) {
                List list = mediaInfo.n;
                if (list == null) {
                    unmodifiableList = null;
                } else {
                    unmodifiableList = DesugarCollections.unmodifiableList(list);
                }
                if (unmodifiableList != null && !unmodifiableList.isEmpty()) {
                    for (AdBreakClipInfo adBreakClipInfo : unmodifiableList) {
                        if (str.equals(adBreakClipInfo.f3424c)) {
                            return adBreakClipInfo;
                        }
                    }
                }
            }
        }
        return null;
    }

    public final MediaQueueItem G(int i) {
        Integer num = (Integer) this.B.get(i);
        if (num == null) {
            return null;
        }
        return (MediaQueueItem) this.u.get(num.intValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x023f, code lost:
    
        if (r12 != 3) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x0246, code lost:
    
        if (r2 == 2) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x01af, code lost:
    
        if (r30.o != null) goto L110;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0396 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0436 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0662  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x06c0  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x03c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0375 A[Catch: JSONException -> 0x0380, TryCatch #4 {JSONException -> 0x0380, blocks: (B:302:0x034f, B:304:0x0375, B:305:0x0376), top: B:301:0x034f }] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x006c  */
    /* JADX WARN: Type inference failed for: r0v40, types: [com.google.android.gms.cast.MediaQueueData, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
    /* JADX WARN: Type inference failed for: r4v31, types: [com.google.android.gms.cast.MediaQueueContainerMetadata, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int X(org.json.JSONObject r31, int r32) {
        /*
            Method dump skipped, instructions count: 1776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaStatus.X(org.json.JSONObject, int):int");
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        if (this != obj) {
            if (obj instanceof MediaStatus) {
                MediaStatus mediaStatus = (MediaStatus) obj;
                if (this.s != null) {
                    z = false;
                } else {
                    z = true;
                }
                if (mediaStatus.s != null) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z == z2 && this.f == mediaStatus.f && this.g == mediaStatus.g && this.h == mediaStatus.h && this.i == mediaStatus.i && this.j == mediaStatus.j && this.k == mediaStatus.k && this.m == mediaStatus.m && this.n == mediaStatus.n && this.p == mediaStatus.p && this.q == mediaStatus.q && this.t == mediaStatus.t && Arrays.equals(this.o, mediaStatus.o) && CastUtils.c(Long.valueOf(this.l), Long.valueOf(mediaStatus.l)) && CastUtils.c(this.u, mediaStatus.u) && CastUtils.c(this.f3455c, mediaStatus.f3455c) && (((jSONObject = this.s) == null || (jSONObject2 = mediaStatus.s) == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && this.v == mediaStatus.v && CastUtils.c(this.w, mediaStatus.w) && CastUtils.c(this.x, mediaStatus.x) && CastUtils.c(this.y, mediaStatus.y) && Objects.equal(this.z, mediaStatus.z) && this.A == mediaStatus.A)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3455c, Long.valueOf(this.f), Integer.valueOf(this.g), Double.valueOf(this.h), Integer.valueOf(this.i), Integer.valueOf(this.j), Long.valueOf(this.k), Long.valueOf(this.l), Double.valueOf(this.m), Boolean.valueOf(this.n), Integer.valueOf(Arrays.hashCode(this.o)), Integer.valueOf(this.p), Integer.valueOf(this.q), String.valueOf(this.s), Integer.valueOf(this.t), this.u, Boolean.valueOf(this.v), this.w, this.x, this.y, this.z);
    }

    public final void k0(List list) {
        ArrayList arrayList = this.u;
        arrayList.clear();
        SparseArray sparseArray = this.B;
        sparseArray.clear();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                MediaQueueItem mediaQueueItem = (MediaQueueItem) list.get(i);
                arrayList.add(mediaQueueItem);
                sparseArray.put(mediaQueueItem.f, Integer.valueOf(i));
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String jSONObject;
        JSONObject jSONObject2 = this.s;
        if (jSONObject2 == null) {
            jSONObject = null;
        } else {
            jSONObject = jSONObject2.toString();
        }
        this.r = jSONObject;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f3455c, i, false);
        SafeParcelWriter.writeLong(parcel, 3, this.f);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.writeDouble(parcel, 5, this.h);
        SafeParcelWriter.writeInt(parcel, 6, this.i);
        SafeParcelWriter.writeInt(parcel, 7, this.j);
        SafeParcelWriter.writeLong(parcel, 8, this.k);
        SafeParcelWriter.writeLong(parcel, 9, this.l);
        SafeParcelWriter.writeDouble(parcel, 10, this.m);
        SafeParcelWriter.writeBoolean(parcel, 11, this.n);
        SafeParcelWriter.writeLongArray(parcel, 12, this.o, false);
        SafeParcelWriter.writeInt(parcel, 13, this.p);
        SafeParcelWriter.writeInt(parcel, 14, this.q);
        SafeParcelWriter.writeString(parcel, 15, this.r, false);
        SafeParcelWriter.writeInt(parcel, 16, this.t);
        SafeParcelWriter.writeTypedList(parcel, 17, this.u, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.v);
        SafeParcelWriter.writeParcelable(parcel, 19, this.w, i, false);
        SafeParcelWriter.writeParcelable(parcel, 20, this.x, i, false);
        SafeParcelWriter.writeParcelable(parcel, 21, this.y, i, false);
        SafeParcelWriter.writeParcelable(parcel, 22, this.z, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
