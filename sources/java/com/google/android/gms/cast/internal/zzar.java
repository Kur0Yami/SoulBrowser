package com.google.android.gms.cast.internal;

import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLiveSeekableRange;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.MediaStatus;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzar extends zzd {
    public static final String x;
    public long e;
    public MediaStatus f;
    public Long g;
    public zzao h;
    public int i;
    public final zzav j;
    public final zzav k;
    public final zzav l;
    public final zzav m;
    public final zzav n;
    public final zzav o;
    public final zzav p;
    public final zzav q;
    public final zzav r;
    public final zzav s;
    public final zzav t;
    public final zzav u;
    public final zzav v;
    public final zzav w;

    static {
        Pattern pattern = CastUtils.f3603a;
        x = "urn:x-cast:com.google.cast.media";
    }

    public zzar() {
        super(x);
        this.i = -1;
        zzav zzavVar = new zzav(86400000L, "load");
        this.j = zzavVar;
        zzav zzavVar2 = new zzav(86400000L, "pause");
        this.k = zzavVar2;
        zzav zzavVar3 = new zzav(86400000L, "play");
        this.l = zzavVar3;
        zzav zzavVar4 = new zzav(86400000L, "stop");
        this.m = zzavVar4;
        zzav zzavVar5 = new zzav(10000L, "seek");
        this.n = zzavVar5;
        zzav zzavVar6 = new zzav(86400000L, "volume");
        this.o = zzavVar6;
        zzav zzavVar7 = new zzav(86400000L, "mute");
        this.p = zzavVar7;
        zzav zzavVar8 = new zzav(86400000L, "status");
        this.q = zzavVar8;
        zzav zzavVar9 = new zzav(86400000L, "activeTracks");
        this.r = zzavVar9;
        zzav zzavVar10 = new zzav(86400000L, "trackStyle");
        zzav zzavVar11 = new zzav(86400000L, "queueInsert");
        zzav zzavVar12 = new zzav(86400000L, "queueUpdate");
        this.s = zzavVar12;
        zzav zzavVar13 = new zzav(86400000L, "queueRemove");
        zzav zzavVar14 = new zzav(86400000L, "queueReorder");
        zzav zzavVar15 = new zzav(86400000L, "queueFetchItemIds");
        this.t = zzavVar15;
        zzav zzavVar16 = new zzav(86400000L, "queueFetchItemRange");
        this.v = zzavVar16;
        this.u = new zzav(86400000L, "queueFetchItems");
        zzav zzavVar17 = new zzav(86400000L, "setPlaybackRate");
        zzav zzavVar18 = new zzav(86400000L, "skipAd");
        this.w = zzavVar18;
        c(zzavVar);
        c(zzavVar2);
        c(zzavVar3);
        c(zzavVar4);
        c(zzavVar5);
        c(zzavVar6);
        c(zzavVar7);
        c(zzavVar8);
        c(zzavVar9);
        c(zzavVar10);
        c(zzavVar11);
        c(zzavVar12);
        c(zzavVar13);
        c(zzavVar14);
        c(zzavVar15);
        c(zzavVar16);
        c(zzavVar16);
        c(zzavVar17);
        c(zzavVar18);
        i();
    }

    public static int[] h(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int[] iArr = new int[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            iArr[i] = jSONArray.getInt(i);
        }
        return iArr;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.cast.internal.zzaq] */
    public static zzaq j(JSONObject jSONObject) {
        MediaError.F(jSONObject);
        ?? obj = new Object();
        Pattern pattern = CastUtils.f3603a;
        if (jSONObject.has("customData")) {
            jSONObject.optJSONObject("customData");
        }
        return obj;
    }

    public final void d(zzat zzatVar, int i) {
        boolean z;
        JSONObject jSONObject = new JSONObject();
        long b = b();
        try {
            jSONObject.put("requestId", b);
            jSONObject.put("type", "QUEUE_UPDATE");
            jSONObject.put("mediaSessionId", e());
            if (i != 0) {
                jSONObject.put("jump", i);
            }
            int i2 = this.i;
            if (i2 != -1) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                jSONObject.put("sequenceNumber", i2);
            }
        } catch (JSONException unused) {
        }
        a(b, jSONObject.toString());
        this.s.a(b, new zzan(this, zzatVar));
    }

    public final long e() {
        MediaStatus mediaStatus = this.f;
        if (mediaStatus != null) {
            return mediaStatus.f;
        }
        throw new Exception();
    }

    public final long f(double d, long j, long j2) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.e;
        if (elapsedRealtime < 0) {
            elapsedRealtime = 0;
        }
        if (elapsedRealtime == 0) {
            return j;
        }
        long j3 = j + ((long) (elapsedRealtime * d));
        if (j2 > 0 && j3 > j2) {
            return j2;
        }
        if (j3 < 0) {
            return 0L;
        }
        return j3;
    }

    public final void g(JSONObject jSONObject, String str) {
        if (jSONObject.has("sequenceNumber")) {
            this.i = jSONObject.optInt("sequenceNumber", -1);
        } else {
            Logger logger = this.f3627a;
            Log.w(logger.f3604a, logger.d(str.concat(" message is missing a sequence number."), new Object[0]));
        }
    }

    public final void i() {
        this.e = 0L;
        this.f = null;
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((zzav) it.next()).e(2002);
        }
    }

    public final void k(zzat zzatVar, MediaSeekOptions mediaSeekOptions) {
        long j;
        JSONObject jSONObject = new JSONObject();
        long b = b();
        if (mediaSeekOptions.b) {
            j = 4294967296000L;
        } else {
            j = mediaSeekOptions.f3453a;
        }
        try {
            jSONObject.put("requestId", b);
            jSONObject.put("type", "SEEK");
            jSONObject.put("mediaSessionId", e());
            Pattern pattern = CastUtils.f3603a;
            jSONObject.put("currentTime", j / 1000.0d);
        } catch (JSONException unused) {
        }
        a(b, jSONObject.toString());
        this.g = Long.valueOf(j);
        this.n.a(b, new zzam(this, zzatVar));
    }

    public final long l() {
        MediaInfo mediaInfo;
        MediaInfo mediaInfo2;
        long j;
        MediaLiveSeekableRange mediaLiveSeekableRange;
        MediaStatus mediaStatus = this.f;
        MediaInfo mediaInfo3 = null;
        if (mediaStatus == null) {
            mediaInfo = null;
        } else {
            mediaInfo = mediaStatus.f3455c;
        }
        long j2 = 0;
        if (mediaInfo != null && mediaStatus != null) {
            Long l = this.g;
            if (l != null) {
                if (l.equals(4294967296000L)) {
                    MediaStatus mediaStatus2 = this.f;
                    if (mediaStatus2.y != null) {
                        long longValue = l.longValue();
                        MediaStatus mediaStatus3 = this.f;
                        if (mediaStatus3 != null && (mediaLiveSeekableRange = mediaStatus3.y) != null) {
                            long j3 = mediaLiveSeekableRange.f;
                            if (!mediaLiveSeekableRange.h) {
                                j2 = f(1.0d, j3, -1L);
                            } else {
                                j2 = j3;
                            }
                        }
                        return Math.min(longValue, j2);
                    }
                    if (mediaStatus2 == null) {
                        mediaInfo2 = null;
                    } else {
                        mediaInfo2 = mediaStatus2.f3455c;
                    }
                    if (mediaInfo2 != null) {
                        j = mediaInfo2.i;
                    } else {
                        j = 0;
                    }
                    if (j >= 0) {
                        long longValue2 = l.longValue();
                        MediaStatus mediaStatus4 = this.f;
                        if (mediaStatus4 != null) {
                            mediaInfo3 = mediaStatus4.f3455c;
                        }
                        if (mediaInfo3 != null) {
                            j2 = mediaInfo3.i;
                        }
                        return Math.min(longValue2, j2);
                    }
                }
                return l.longValue();
            }
            if (this.e != 0) {
                double d = mediaStatus.h;
                long j4 = mediaStatus.k;
                int i = mediaStatus.i;
                if (d != 0.0d && i == 2) {
                    return f(d, j4, mediaInfo.i);
                }
                return j4;
            }
        }
        return 0L;
    }
}
