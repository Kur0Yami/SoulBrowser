package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.os.Build;

/* loaded from: classes.dex */
public final class zzsi {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9245a;
    public Boolean b;

    public zzsi(Context context) {
        Context applicationContext;
        if (context == null) {
            applicationContext = null;
        } else {
            applicationContext = context.getApplicationContext();
        }
        this.f9245a = applicationContext;
    }

    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object, com.google.android.gms.internal.ads.zzpv] */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.Object, com.google.android.gms.internal.ads.zzpv] */
    public final zzpw a(zzd zzdVar, zzv zzvVar) {
        int i;
        boolean booleanValue;
        boolean z;
        zzvVar.getClass();
        zzdVar.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29 && (i = zzvVar.F) != -1) {
            Boolean bool = this.b;
            boolean z2 = false;
            if (bool != null) {
                booleanValue = bool.booleanValue();
            } else {
                Context context = this.f9245a;
                if (context != null) {
                    String parameters = zzcj.a(context).getParameters("offloadVariableRateSupported");
                    if (parameters != null && parameters.equals("offloadVariableRateSupported=1")) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.b = Boolean.valueOf(z);
                } else {
                    this.b = Boolean.FALSE;
                }
                booleanValue = this.b.booleanValue();
            }
            String str = zzvVar.m;
            str.getClass();
            int g = zzas.g(str, zzvVar.j);
            if (g != 0 && i2 >= zzfj.c(g)) {
                int b = zzfj.b(zzvVar.E);
                if (b != 0) {
                    try {
                        AudioFormat build = new AudioFormat.Builder().setSampleRate(i).setChannelMask(b).setEncoding(g).build();
                        if (i2 >= 31) {
                            int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(build, zzdVar.a());
                            if (playbackOffloadSupport == 0) {
                                return zzpw.d;
                            }
                            ?? obj = new Object();
                            if (i2 > 32 && playbackOffloadSupport == 2) {
                                z2 = true;
                            }
                            obj.f9175a = true;
                            obj.b = z2;
                            obj.f9176c = booleanValue;
                            return obj.a();
                        }
                        if (!AudioManager.isOffloadedPlaybackSupported(build, zzdVar.a())) {
                            return zzpw.d;
                        }
                        ?? obj2 = new Object();
                        obj2.f9175a = true;
                        obj2.f9176c = booleanValue;
                        return obj2.a();
                    } catch (IllegalArgumentException unused) {
                        return zzpw.d;
                    }
                }
                return zzpw.d;
            }
            return zzpw.d;
        }
        return zzpw.d;
    }
}
