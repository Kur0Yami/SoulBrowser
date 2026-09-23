package com.google.android.gms.internal.mlkit_vision_common;

import android.os.SystemClock;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.Closeable;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes3.dex */
public class zzlx implements Closeable {
    public static final HashMap j = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public int f11098c;
    public long f;
    public long g;
    public long h = 2147483647L;
    public long i = -2147483648L;

    public zzlx(String str) {
    }

    public static zzlx d() {
        zzmw.a();
        int i = zzmv.f11117a;
        zzmw.a();
        if (!Boolean.parseBoolean(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
            return zzlv.k;
        }
        HashMap hashMap = j;
        if (hashMap.get("detectorTaskWithResource#run") == null) {
            hashMap.put("detectorTaskWithResource#run", new zzlx("detectorTaskWithResource#run"));
        }
        return (zzlx) hashMap.get("detectorTaskWithResource#run");
    }

    public void a() {
        this.f = SystemClock.elapsedRealtimeNanos() / 1000;
    }

    public void b(long j2) {
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() / 1000;
        long j3 = this.g;
        if (j3 != 0 && elapsedRealtimeNanos - j3 >= 1000000) {
            this.f11098c = 0;
            this.f = 0L;
            this.h = 2147483647L;
            this.i = -2147483648L;
        }
        this.g = elapsedRealtimeNanos;
        this.f11098c++;
        this.h = Math.min(this.h, j2);
        this.i = Math.max(this.i, j2);
        if (this.f11098c % 50 == 0) {
            Locale locale = Locale.US;
            zzmw.a();
        }
        if (this.f11098c % 500 == 0) {
            this.f11098c = 0;
            this.f = 0L;
            this.h = 2147483647L;
            this.i = -2147483648L;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long j2 = this.f;
        if (j2 != 0) {
            h(j2);
            return;
        }
        throw new IllegalStateException("Did you forget to call start()?");
    }

    public void h(long j2) {
        b((SystemClock.elapsedRealtimeNanos() / 1000) - j2);
    }
}
