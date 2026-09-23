package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.view.Display;
import android.view.WindowManager;

/* loaded from: classes.dex */
final class zzcfh extends zzfxo {

    /* renamed from: a, reason: collision with root package name */
    public final SensorManager f5102a;

    /* renamed from: c, reason: collision with root package name */
    public final Display f5103c;
    public float[] f;
    public zzfxl g;
    public zzcfi h;
    public final float[] d = new float[9];
    public final float[] e = new float[9];
    public final Object b = new Object();

    public zzcfh(Context context) {
        this.f5102a = (SensorManager) context.getSystemService("sensor");
        this.f5103c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    @Override // com.google.android.gms.internal.ads.zzfxo
    public final void a(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] != 0.0f || fArr[1] != 0.0f || fArr[2] != 0.0f) {
            synchronized (this.b) {
                try {
                    if (this.f == null) {
                        this.f = new float[9];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            float[] fArr2 = this.d;
            SensorManager.getRotationMatrixFromVector(fArr2, fArr);
            int rotation = this.f5103c.getRotation();
            if (rotation != 1) {
                if (rotation != 2) {
                    if (rotation != 3) {
                        System.arraycopy(fArr2, 0, this.e, 0, 9);
                    } else {
                        SensorManager.remapCoordinateSystem(fArr2, 130, 1, this.e);
                    }
                } else {
                    SensorManager.remapCoordinateSystem(fArr2, 129, 130, this.e);
                }
            } else {
                SensorManager.remapCoordinateSystem(fArr2, 2, 129, this.e);
            }
            float[] fArr3 = this.e;
            float f = fArr3[1];
            fArr3[1] = fArr3[3];
            fArr3[3] = f;
            float f2 = fArr3[2];
            fArr3[2] = fArr3[6];
            fArr3[6] = f2;
            float f3 = fArr3[5];
            fArr3[5] = fArr3[7];
            fArr3[7] = f3;
            synchronized (this.b) {
                System.arraycopy(fArr3, 0, this.f, 0, 9);
            }
            zzcfi zzcfiVar = this.h;
            if (zzcfiVar != null) {
                zzcfiVar.a();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.lang.Runnable] */
    public final void b() {
        if (this.g == null) {
            return;
        }
        this.f5102a.unregisterListener(this);
        this.g.post(new Object());
        this.g = null;
    }

    public final boolean c(float[] fArr) {
        synchronized (this.b) {
            try {
                float[] fArr2 = this.f;
                if (fArr2 == null) {
                    return false;
                }
                System.arraycopy(fArr2, 0, fArr, 0, 9);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
