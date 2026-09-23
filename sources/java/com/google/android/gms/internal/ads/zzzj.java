package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RequiresApi;
import j$.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi
/* loaded from: classes.dex */
public final class zzzj {

    /* renamed from: a, reason: collision with root package name */
    public final Spatializer f9412a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f9413c;
    public final Spatializer$OnSpatializerStateChangedListener d;

    public zzzj(Context context, zzzu zzzuVar, Boolean bool) {
        AudioManager a2;
        if (context == null) {
            a2 = null;
        } else {
            a2 = zzcj.a(context);
        }
        if (a2 != null && (bool == null || !bool.booleanValue())) {
            Spatializer spatializer = a2.getSpatializer();
            this.f9412a = spatializer;
            this.b = spatializer.getImmersiveAudioLevel() != 0;
            zzzh zzzhVar = new zzzh(this, zzzuVar);
            this.d = zzzhVar;
            Looper myLooper = Looper.myLooper();
            myLooper.getClass();
            final Handler handler = new Handler(myLooper);
            this.f9413c = handler;
            spatializer.addOnSpatializerStateChangedListener(new Executor() { // from class: com.google.android.gms.internal.ads.zzzi
                @Override // java.util.concurrent.Executor
                public final /* synthetic */ void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, zzzhVar);
            return;
        }
        this.f9412a = null;
        this.b = false;
        this.f9413c = null;
        this.d = null;
    }

    public final boolean a() {
        Spatializer spatializer = this.f9412a;
        spatializer.getClass();
        return spatializer.isAvailable();
    }

    public final boolean b() {
        Spatializer spatializer = this.f9412a;
        spatializer.getClass();
        return spatializer.isEnabled();
    }

    public final boolean c(zzd zzdVar, zzv zzvVar) {
        String str = zzvVar.m;
        int i = zzvVar.E;
        if (Objects.equals(str, "audio/eac3-joc")) {
            if (i == 16) {
                i = 12;
            }
        } else if (Objects.equals(str, "audio/iamf")) {
            if (i == -1) {
                i = 6;
            }
        } else if (Objects.equals(str, "audio/ac4") && (i == 18 || i == 21)) {
            i = 24;
        }
        int b = zzfj.b(i);
        if (b == 0) {
            return false;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(b);
        int i2 = zzvVar.F;
        if (i2 != -1) {
            channelMask.setSampleRate(i2);
        }
        Spatializer spatializer = this.f9412a;
        spatializer.getClass();
        return spatializer.canBeSpatialized(zzdVar.a(), channelMask.build());
    }

    public final void d() {
        Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
        Handler handler;
        Spatializer spatializer = this.f9412a;
        if (spatializer != null && (spatializer$OnSpatializerStateChangedListener = this.d) != null && (handler = this.f9413c) != null) {
            spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
            handler.removeCallbacksAndMessages(null);
        }
    }
}
