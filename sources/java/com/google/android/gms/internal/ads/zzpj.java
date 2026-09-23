package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.Executor;

@RequiresApi
/* loaded from: classes.dex */
public final class zzpj implements zzmx, zzpk {
    public boolean A;
    public int B;
    public int C;
    public int D;
    public boolean E;

    /* renamed from: c, reason: collision with root package name */
    public final Context f9161c;
    public final zzpc g;
    public final PlaybackSession h;
    public String n;
    public PlaybackMetrics.Builder o;
    public int p;
    public zzau s;
    public zzpi t;
    public zzpi u;
    public zzpi v;
    public zzv w;
    public zzv x;
    public zzv y;
    public boolean z;
    public final Executor f = zzdh.a();
    public final zzbe j = new zzbe();
    public final zzbd k = new zzbd();
    public final HashMap m = new HashMap();
    public final HashMap l = new HashMap();
    public final long i = SystemClock.elapsedRealtime();
    public int q = 0;
    public int r = 0;

    public zzpj(Context context, PlaybackSession playbackSession) {
        this.f9161c = context.getApplicationContext();
        this.h = playbackSession;
        zzpc zzpcVar = new zzpc();
        this.g = zzpcVar;
        zzpcVar.d = this;
    }

    public static zzpj p(Context context) {
        MediaMetricsManager mediaMetricsManager = (MediaMetricsManager) context.getSystemService("media_metrics");
        if (mediaMetricsManager == null) {
            return null;
        }
        return new zzpj(context, mediaMetricsManager.createPlaybackSession());
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void a(int i) {
        if (i == 1) {
            this.z = true;
            i = 1;
        }
        this.p = i;
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final /* synthetic */ void b(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final /* synthetic */ void c(int i) {
    }

    public final void d(int i, long j, zzv zzvVar, int i2) {
        int i3;
        String str;
        TrackChangeEvent.Builder timeSinceCreatedMillis = new TrackChangeEvent.Builder(i).setTimeSinceCreatedMillis(j - this.i);
        if (zzvVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i2 != 1) {
                i3 = 1;
            } else {
                i3 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i3);
            String str2 = zzvVar.l;
            if (str2 != null) {
                timeSinceCreatedMillis.setContainerMimeType(str2);
            }
            String str3 = zzvVar.m;
            if (str3 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str3);
            }
            String str4 = zzvVar.j;
            if (str4 != null) {
                timeSinceCreatedMillis.setCodecName(str4);
            }
            int i4 = zzvVar.i;
            if (i4 != -1) {
                timeSinceCreatedMillis.setBitrate(i4);
            }
            int i5 = zzvVar.t;
            if (i5 != -1) {
                timeSinceCreatedMillis.setWidth(i5);
            }
            int i6 = zzvVar.u;
            if (i6 != -1) {
                timeSinceCreatedMillis.setHeight(i6);
            }
            int i7 = zzvVar.E;
            if (i7 != -1) {
                timeSinceCreatedMillis.setChannelCount(i7);
            }
            int i8 = zzvVar.F;
            if (i8 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i8);
            }
            String str5 = zzvVar.d;
            if (str5 != null) {
                String str6 = zzfj.f7405a;
                String[] split2 = str5.split("-", -1);
                String str7 = split2[0];
                if (split2.length >= 2) {
                    str = split2[1];
                } else {
                    str = null;
                }
                Pair create = Pair.create(str7, str);
                timeSinceCreatedMillis.setLanguage((String) create.first);
                Object obj = create.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = zzvVar.x;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.E = true;
        final TrackChangeEvent build = timeSinceCreatedMillis.build();
        this.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpf
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzpj.this.w(build);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:184:0x026e, code lost:
    
        if (r10 != 1) goto L167;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01c3 A[PHI: r6
      0x01c3: PHI (r6v49 int) = (r6v31 int), (r6v82 int) binds: [B:209:0x02c8, B:133:0x01c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01c6 A[PHI: r6
      0x01c6: PHI (r6v48 int) = (r6v31 int), (r6v82 int) binds: [B:209:0x02c8, B:133:0x01c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01c9 A[PHI: r6
      0x01c9: PHI (r6v47 int) = (r6v31 int), (r6v82 int) binds: [B:209:0x02c8, B:133:0x01c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01cc A[PHI: r6
      0x01cc: PHI (r6v46 int) = (r6v31 int), (r6v82 int) binds: [B:209:0x02c8, B:133:0x01c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:297:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x03fc  */
    @Override // com.google.android.gms.internal.ads.zzmx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(com.google.android.gms.internal.ads.zzbb r25, com.google.android.gms.internal.ads.zzmw r26) {
        /*
            Method dump skipped, instructions count: 1298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpj.e(com.google.android.gms.internal.ads.zzbb, com.google.android.gms.internal.ads.zzmw):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007a, code lost:
    
        if (r4.equals("isml") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008f, code lost:
    
        r4 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008d, code lost:
    
        if (r4.equals("ism") != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(com.google.android.gms.internal.ads.zzbf r9, com.google.android.gms.internal.ads.zzwg r10) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpj.f(com.google.android.gms.internal.ads.zzbf, com.google.android.gms.internal.ads.zzwg):void");
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void g(zzbv zzbvVar) {
        zzpi zzpiVar = this.t;
        if (zzpiVar != null) {
            zzv zzvVar = zzpiVar.f9160a;
            if (zzvVar.u == -1) {
                zzt zztVar = new zzt(zzvVar);
                zztVar.s = zzbvVar.f4911a;
                zztVar.t = zzbvVar.b;
                this.t = new zzpi(new zzv(zztVar), zzpiVar.b);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void h(zzik zzikVar) {
        this.B += zzikVar.g;
        this.C += zzikVar.e;
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final /* synthetic */ void i(zzv zzvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void j(zzmv zzmvVar, zzwc zzwcVar) {
        zzwg zzwgVar = zzmvVar.d;
        if (zzwgVar != null) {
            zzv zzvVar = zzwcVar.b;
            zzvVar.getClass();
            zzpi zzpiVar = new zzpi(zzvVar, this.g.a(zzmvVar.b, zzwgVar));
            int i = zzwcVar.f9335a;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return;
                        }
                        this.v = zzpiVar;
                        return;
                    }
                } else {
                    this.u = zzpiVar;
                    return;
                }
            }
            this.t = zzpiVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void k(zzmv zzmvVar, int i, long j) {
        long longValue;
        zzwg zzwgVar = zzmvVar.d;
        if (zzwgVar != null) {
            String a2 = this.g.a(zzmvVar.b, zzwgVar);
            HashMap hashMap = this.m;
            Long l = (Long) hashMap.get(a2);
            HashMap hashMap2 = this.l;
            Long l2 = (Long) hashMap2.get(a2);
            long j2 = 0;
            if (l == null) {
                longValue = 0;
            } else {
                longValue = l.longValue();
            }
            hashMap.put(a2, Long.valueOf(longValue + j));
            if (l2 != null) {
                j2 = l2.longValue();
            }
            hashMap2.put(a2, Long.valueOf(j2 + i));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void l(zzau zzauVar) {
        this.s = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final /* synthetic */ void m(zzv zzvVar) {
    }

    public final void n() {
        long longValue;
        long longValue2;
        int i;
        PlaybackMetrics.Builder builder = this.o;
        if (builder != null && this.E) {
            builder.setAudioUnderrunCount(this.D);
            this.o.setVideoFramesDropped(this.B);
            this.o.setVideoFramesPlayed(this.C);
            Long l = (Long) this.l.get(this.n);
            PlaybackMetrics.Builder builder2 = this.o;
            if (l == null) {
                longValue = 0;
            } else {
                longValue = l.longValue();
            }
            builder2.setNetworkTransferDurationMillis(longValue);
            Long l2 = (Long) this.m.get(this.n);
            PlaybackMetrics.Builder builder3 = this.o;
            if (l2 == null) {
                longValue2 = 0;
            } else {
                longValue2 = l2.longValue();
            }
            builder3.setNetworkBytesRead(longValue2);
            PlaybackMetrics.Builder builder4 = this.o;
            if (l2 != null && l2.longValue() > 0) {
                i = 1;
            } else {
                i = 0;
            }
            builder4.setStreamSource(i);
            final PlaybackMetrics build = this.o.build();
            this.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpg
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzpj.this.x(build);
                }
            });
        }
        this.o = null;
        this.n = null;
        this.D = 0;
        this.B = 0;
        this.C = 0;
        this.w = null;
        this.x = null;
        this.y = null;
        this.E = false;
    }

    public final LogSessionId q() {
        return this.h.getSessionId();
    }

    public final void r(zzmv zzmvVar, String str) {
        zzwg zzwgVar = zzmvVar.d;
        if (zzwgVar != null && zzwgVar.b()) {
            return;
        }
        n();
        this.n = str;
        this.o = new PlaybackMetrics.Builder().setPlayerName("AndroidXMedia3").setPlayerVersion("1.9.0-alpha01");
        f(zzmvVar.b, zzwgVar);
    }

    public final void s(zzmv zzmvVar, String str) {
        zzwg zzwgVar = zzmvVar.d;
        if ((zzwgVar == null || !zzwgVar.b()) && str.equals(this.n)) {
            n();
        }
        this.l.remove(str);
        this.m.remove(str);
    }

    public final /* synthetic */ void t(PlaybackErrorEvent playbackErrorEvent) {
        this.h.reportPlaybackErrorEvent(playbackErrorEvent);
    }

    public final /* synthetic */ void u(NetworkEvent networkEvent) {
        this.h.reportNetworkEvent(networkEvent);
    }

    public final /* synthetic */ void v(PlaybackStateEvent playbackStateEvent) {
        this.h.reportPlaybackStateEvent(playbackStateEvent);
    }

    public final /* synthetic */ void w(TrackChangeEvent trackChangeEvent) {
        this.h.reportTrackChangeEvent(trackChangeEvent);
    }

    public final /* synthetic */ void x(PlaybackMetrics playbackMetrics) {
        this.h.reportPlaybackMetrics(playbackMetrics);
    }

    public final boolean y(zzpi zzpiVar) {
        String str;
        if (zzpiVar != null) {
            zzpc zzpcVar = this.g;
            String str2 = zzpiVar.b;
            synchronized (zzpcVar) {
                str = zzpcVar.f;
            }
            if (str2.equals(str)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final /* synthetic */ void zzo() {
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void o(IOException iOException) {
    }
}
