package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* loaded from: classes.dex */
public final class zzcfi extends Thread implements SurfaceTexture.OnFrameAvailableListener, zzcfg {
    public static final float[] F = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    public EGLDisplay A;
    public EGLContext B;
    public EGLSurface C;
    public volatile boolean D;
    public volatile boolean E;

    /* renamed from: c, reason: collision with root package name */
    public final zzcfh f5104c;
    public final float[] f;
    public final float[] g;
    public final float[] h;
    public final float[] i;
    public final float[] j;
    public final float[] k;
    public final float[] l;
    public float m;
    public float n;
    public float o;
    public int p;
    public int q;
    public SurfaceTexture r;
    public SurfaceTexture s;
    public int t;
    public int u;
    public int v;
    public final FloatBuffer w;
    public final CountDownLatch x;
    public final Object y;
    public EGL10 z;

    public zzcfi(Context context) {
        super("SphericalVideoProcessor");
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.w = asFloatBuffer;
        asFloatBuffer.put(F).position(0);
        this.f = new float[9];
        this.g = new float[9];
        this.h = new float[9];
        this.i = new float[9];
        this.j = new float[9];
        this.k = new float[9];
        this.l = new float[9];
        this.m = Float.NaN;
        zzcfh zzcfhVar = new zzcfh(context);
        this.f5104c = zzcfhVar;
        zzcfhVar.h = this;
        this.x = new CountDownLatch(1);
        this.y = new Object();
    }

    public static final void f(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder sb = new StringBuilder(str.length() + 10 + String.valueOf(glGetError).length());
            sb.append(str);
            sb.append(": glError ");
            sb.append(glGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }

    public static final void g(float[] fArr, float[] fArr2, float[] fArr3) {
        float f = fArr2[0] * fArr3[0];
        float f2 = fArr2[1];
        float f3 = fArr3[3];
        float f4 = fArr2[2];
        float f5 = fArr3[6];
        fArr[0] = f + (f2 * f3) + (f4 * f5);
        float f6 = fArr2[0];
        float f7 = fArr3[1] * f6;
        float f8 = fArr3[4];
        float f9 = fArr3[7];
        fArr[1] = f7 + (f2 * f8) + (f4 * f9);
        float f10 = f6 * fArr3[2];
        float f11 = fArr2[1];
        float f12 = fArr3[5];
        float f13 = fArr3[8];
        fArr[2] = f10 + (f11 * f12) + (f4 * f13);
        float f14 = fArr2[3];
        float f15 = fArr3[0];
        float f16 = fArr2[4];
        float f17 = fArr2[5];
        fArr[3] = (f14 * f15) + (f3 * f16) + (f17 * f5);
        float f18 = fArr2[3];
        float f19 = fArr3[1];
        fArr[4] = (f18 * f19) + (f16 * f8) + (f17 * f9);
        float f20 = fArr3[2];
        fArr[5] = (f18 * f20) + (fArr2[4] * f12) + (f17 * f13);
        float f21 = fArr2[6] * f15;
        float f22 = fArr2[7];
        float f23 = fArr3[3] * f22;
        float f24 = fArr2[8];
        fArr[6] = f21 + f23 + (f5 * f24);
        float f25 = fArr2[6];
        float f26 = f9 * f24;
        fArr[7] = f26 + (f22 * fArr3[4]) + (f19 * f25);
        fArr[8] = (f25 * f20) + (fArr2[7] * fArr3[5]) + (f24 * f13);
    }

    public static final void h(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d = f;
        fArr[4] = (float) Math.cos(d);
        fArr[5] = (float) (-Math.sin(d));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d);
        fArr[8] = (float) Math.cos(d);
    }

    public static final void i(float[] fArr, float f) {
        double d = f;
        fArr[0] = (float) Math.cos(d);
        fArr[1] = (float) (-Math.sin(d));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d);
        fArr[4] = (float) Math.cos(d);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    public static final int j(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        f("createShader");
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            f("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            f("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            f("getShaderiv");
            if (iArr[0] == 0) {
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 26);
                sb.append("Could not compile shader ");
                sb.append(i);
                sb.append(":");
                Log.e("SphericalVideoRenderer", sb.toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                f("deleteShader");
                return 0;
            }
        }
        return glCreateShader;
    }

    public final void a() {
        Object obj = this.y;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    public final void b(int i, int i2) {
        Object obj = this.y;
        synchronized (obj) {
            this.q = i;
            this.p = i2;
            this.D = true;
            obj.notifyAll();
        }
    }

    public final void c() {
        Object obj = this.y;
        synchronized (obj) {
            this.E = true;
            this.s = null;
            obj.notifyAll();
        }
    }

    public final void d(float f, float f2) {
        int i = this.q;
        int i2 = this.p;
        if (i <= i2) {
            i = i2;
        }
        float f3 = i;
        this.n -= (f * 1.7453293f) / f3;
        float f4 = this.o - ((f2 * 1.7453293f) / f3);
        this.o = f4;
        if (f4 < -1.5707964f) {
            this.o = -1.5707964f;
            f4 = -1.5707964f;
        }
        if (f4 > 1.5707964f) {
            this.o = 1.5707964f;
        }
    }

    public final void e() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.C;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            this.z.eglMakeCurrent(this.A, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            this.z.eglDestroySurface(this.A, this.C);
            this.C = null;
        }
        EGLContext eGLContext = this.B;
        if (eGLContext != null) {
            this.z.eglDestroyContext(this.A, eGLContext);
            this.B = null;
        }
        EGLDisplay eGLDisplay = this.A;
        if (eGLDisplay != null) {
            this.z.eglTerminate(eGLDisplay);
            this.A = null;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.v++;
        Object obj = this.y;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x01be A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00a8  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1000
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfi.run():void");
    }
}
