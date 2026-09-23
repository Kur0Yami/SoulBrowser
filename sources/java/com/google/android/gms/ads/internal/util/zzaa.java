package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.internal.ads.zzbgk;

/* loaded from: classes.dex */
public final class zzaa {

    /* renamed from: c, reason: collision with root package name */
    public static volatile float f3093c = -1.0f;
    public static volatile long d;
    public static final Object e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public boolean f3094a = false;
    public float b = 1.0f;

    public static float zze(Context context) {
        float f = 0.0f;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.zf)).booleanValue()) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Af)).intValue();
            if (f3093c != -1.0f && currentTimeMillis - d < intValue) {
                return f3093c;
            }
            synchronized (e) {
                try {
                    long currentTimeMillis2 = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                    if (f3093c != -1.0f && currentTimeMillis2 - d < intValue) {
                        return f3093c;
                    }
                    AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                    if (audioManager == null) {
                        f3093c = 0.0f;
                        d = currentTimeMillis2;
                        return 0.0f;
                    }
                    int streamMaxVolume = audioManager.getStreamMaxVolume(3);
                    int streamVolume = audioManager.getStreamVolume(3);
                    if (streamMaxVolume != 0) {
                        f = streamVolume / streamMaxVolume;
                    }
                    f3093c = f;
                    d = currentTimeMillis2;
                    return f3093c;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        AudioManager audioManager2 = (AudioManager) context.getSystemService("audio");
        if (audioManager2 == null) {
            return 0.0f;
        }
        int streamMaxVolume2 = audioManager2.getStreamMaxVolume(3);
        int streamVolume2 = audioManager2.getStreamVolume(3);
        if (streamMaxVolume2 == 0) {
            return 0.0f;
        }
        return streamVolume2 / streamMaxVolume2;
    }

    public final synchronized boolean a() {
        return this.b >= 0.0f;
    }

    public final synchronized void zza(float f) {
        this.b = f;
    }

    public final synchronized float zzb() {
        if (!a()) {
            return 1.0f;
        }
        return this.b;
    }

    public final synchronized void zzc(boolean z) {
        this.f3094a = z;
    }

    public final synchronized boolean zzd() {
        return this.f3094a;
    }
}
