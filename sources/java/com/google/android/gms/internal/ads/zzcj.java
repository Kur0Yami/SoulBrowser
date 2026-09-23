package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Looper;

/* loaded from: classes.dex */
public final class zzcj {

    /* renamed from: a, reason: collision with root package name */
    public static AudioManager f5191a;

    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.ads.zzdq, java.lang.Object] */
    public static synchronized AudioManager a(Context context) {
        synchronized (zzcj.class) {
            try {
                final Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    f5191a = null;
                }
                AudioManager audioManager = f5191a;
                if (audioManager != null) {
                    return audioManager;
                }
                Looper myLooper = Looper.myLooper();
                if (myLooper != null && myLooper != Looper.getMainLooper()) {
                    final ?? obj = new Object();
                    zzdh.a().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzci
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzcj.f5191a = (AudioManager) applicationContext.getSystemService("audio");
                            obj.a();
                        }
                    });
                    obj.d();
                    AudioManager audioManager2 = f5191a;
                    if (audioManager2 != null) {
                        return audioManager2;
                    }
                    throw null;
                }
                AudioManager audioManager3 = (AudioManager) applicationContext.getSystemService("audio");
                f5191a = audioManager3;
                if (audioManager3 != null) {
                    return audioManager3;
                }
                throw null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
