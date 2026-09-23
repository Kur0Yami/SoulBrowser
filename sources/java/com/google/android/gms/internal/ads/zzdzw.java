package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;

/* loaded from: classes.dex */
public final class zzdzw extends zzfxo {

    /* renamed from: a, reason: collision with root package name */
    public final SensorManager f6293a;
    public final Sensor b;

    /* renamed from: c, reason: collision with root package name */
    public float f6294c = 0.0f;
    public Float d = Float.valueOf(0.0f);
    public long e = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
    public int f = 0;
    public boolean g = false;
    public boolean h = false;
    public zzeak i = null;
    public boolean j = false;

    public zzdzw(Context context) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.f6293a = sensorManager;
        if (sensorManager != null) {
            this.b = sensorManager.getDefaultSensor(4);
        } else {
            this.b = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfxo
    public final void a(SensorEvent sensorEvent) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ua)).booleanValue()) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            if (this.e + ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.wa)).intValue() < currentTimeMillis) {
                this.f = 0;
                this.e = currentTimeMillis;
                this.g = false;
                this.h = false;
                this.f6294c = this.d.floatValue();
            }
            float floatValue = this.d.floatValue() + (sensorEvent.values[1] * 4.0f);
            this.d = Float.valueOf(floatValue);
            float f = this.f6294c;
            zzbgb zzbgbVar = zzbgk.va;
            if (floatValue > ((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).floatValue() + f) {
                this.f6294c = this.d.floatValue();
                this.h = true;
            } else if (this.d.floatValue() < this.f6294c - ((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).floatValue()) {
                this.f6294c = this.d.floatValue();
                this.g = true;
            }
            if (this.d.isInfinite()) {
                this.d = Float.valueOf(0.0f);
                this.f6294c = 0.0f;
            }
            if (this.g && this.h) {
                com.google.android.gms.ads.internal.util.zze.zza("Flick detected.");
                this.e = currentTimeMillis;
                int i = this.f + 1;
                this.f = i;
                this.g = false;
                this.h = false;
                zzeak zzeakVar = this.i;
                if (zzeakVar != null) {
                    if (i == ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.xa)).intValue()) {
                        zzeakVar.f(new com.google.android.gms.ads.internal.client.zzdm(), zzeaj.g);
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
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ua)).booleanValue()) {
                    return;
                }
                if (!this.j && (sensorManager = this.f6293a) != null && (sensor = this.b) != null) {
                    sensorManager.registerListener(this, sensor, 2);
                    this.j = true;
                    com.google.android.gms.ads.internal.util.zze.zza("Listening for flick gestures.");
                }
                if (this.f6293a != null && this.b != null) {
                    return;
                }
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Flick detection failed to initialize. Failed to obtain gyroscope.");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            try {
                if (this.j && (sensorManager = this.f6293a) != null && (sensor = this.b) != null) {
                    sensorManager.unregisterListener(this, sensor);
                    this.j = false;
                    com.google.android.gms.ads.internal.util.zze.zza("Stopped listening for flick gestures.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
