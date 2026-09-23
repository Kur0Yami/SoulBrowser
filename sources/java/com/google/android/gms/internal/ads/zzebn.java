package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;

/* loaded from: classes.dex */
public final class zzebn extends zzfxo {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6339a;
    public SensorManager b;

    /* renamed from: c, reason: collision with root package name */
    public Sensor f6340c;
    public long d;
    public int e;
    public zzeak f;
    public boolean g;

    public zzebn(Context context) {
        this.f6339a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzfxo
    public final void a(SensorEvent sensorEvent) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.pa)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0] / 9.80665f;
            float f2 = fArr[1] / 9.80665f;
            float f3 = fArr[2] / 9.80665f;
            float f4 = f3 * f3;
            if (((float) Math.sqrt(f4 + (f2 * f2) + (f * f))) >= ((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.qa)).floatValue()) {
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                if (this.d + ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ra)).intValue() <= currentTimeMillis) {
                    if (this.d + ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.sa)).intValue() < currentTimeMillis) {
                        this.e = 0;
                    }
                    com.google.android.gms.ads.internal.util.zze.zza("Shake detected.");
                    this.d = currentTimeMillis;
                    int i = this.e + 1;
                    this.e = i;
                    zzeak zzeakVar = this.f;
                    if (zzeakVar != null) {
                        if (i == ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ta)).intValue()) {
                            zzeakVar.f(new com.google.android.gms.ads.internal.client.zzdm(), zzeaj.g);
                        }
                    }
                }
            }
        }
    }

    public final void b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            try {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.pa)).booleanValue()) {
                    return;
                }
                if (this.b == null) {
                    SensorManager sensorManager2 = (SensorManager) this.f6339a.getSystemService("sensor");
                    this.b = sensorManager2;
                    if (sensorManager2 == null) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Shake detection failed to initialize. Failed to obtain accelerometer.");
                        return;
                    }
                    this.f6340c = sensorManager2.getDefaultSensor(1);
                }
                if (!this.g && (sensorManager = this.b) != null && (sensor = this.f6340c) != null) {
                    sensorManager.registerListener(this, sensor, 2);
                    this.d = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ra)).intValue();
                    this.g = true;
                    com.google.android.gms.ads.internal.util.zze.zza("Listening for shake gestures.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        synchronized (this) {
            try {
                if (this.g) {
                    SensorManager sensorManager = this.b;
                    if (sensorManager != null) {
                        sensorManager.unregisterListener(this, this.f6340c);
                        com.google.android.gms.ads.internal.util.zze.zza("Stopped listening for shake gestures.");
                    }
                    this.g = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
