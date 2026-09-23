package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;

/* loaded from: classes.dex */
public final class zzpu {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9173a;
    public final zzpt b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f9174c;
    public final zzpq d;
    public final BroadcastReceiver e;
    public final zzpr f;
    public zzpp g;
    public AudioDeviceInfo h;
    public zzd i;
    public boolean j;

    public zzpu(Context context, zzpt zzptVar, zzd zzdVar, AudioDeviceInfo audioDeviceInfo) {
        Uri uriFor;
        Context applicationContext = context.getApplicationContext();
        this.f9173a = applicationContext;
        this.b = zzptVar;
        this.i = zzdVar;
        this.h = audioDeviceInfo;
        String str = zzfj.f7405a;
        Looper myLooper = Looper.myLooper();
        Handler handler = new Handler(myLooper == null ? Looper.getMainLooper() : myLooper, null);
        this.f9174c = handler;
        this.d = new zzpq(this);
        this.e = new zzps(this);
        zzpp zzppVar = zzpp.f9167c;
        String str2 = Build.MANUFACTURER;
        if (!str2.equals("Amazon") && !str2.equals("Xiaomi")) {
            uriFor = null;
        } else {
            uriFor = Settings.Global.getUriFor("external_surround_sound_enabled");
        }
        this.f = uriFor != null ? new zzpr(this, handler, applicationContext.getContentResolver(), uriFor) : null;
    }

    public final void a(zzpp zzppVar) {
        if (this.j && !zzppVar.equals(this.g)) {
            this.g = zzppVar;
            zzse zzseVar = ((zzsb) this.b).f9237a;
            zzseVar.e();
            zzpp zzppVar2 = zzseVar.e;
            if (zzppVar2 != null && !zzppVar.equals(zzppVar2)) {
                zzseVar.e = zzppVar;
                zzed zzedVar = zzseVar.f9242c;
                if (zzedVar != null) {
                    zzedVar.c(-1, zzsa.f9236a);
                    zzedVar.d();
                }
            }
        }
    }
}
