package com.mycompany.app.curl;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.opengl.GLSurfaceView;
import android.opengl.GLU;
import android.opengl.GLUtils;
import com.mycompany.app.curl.CurlMesh;
import com.mycompany.app.curl.CurlView;
import com.mycompany.app.pref.PrefImage;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes3.dex */
public class CurlRenderer implements GLSurfaceView.Renderer {

    /* renamed from: c, reason: collision with root package name */
    public boolean f12892c;
    public final CurlView f;
    public final ArrayList g = new ArrayList();
    public final CurlMesh[] h = new CurlMesh[3];
    public int i;
    public boolean j;
    public boolean k;

    /* loaded from: classes3.dex */
    public interface RendererListener {
    }

    public CurlRenderer(boolean z, CurlView curlView) {
        this.f12892c = z;
        this.f = curlView;
        for (int i = 0; i < 3; i++) {
            this.h[i] = new CurlMesh();
            CurlMesh curlMesh = this.h[i];
            synchronized (curlMesh) {
                curlMesh.g(0.0f, 1.0f);
            }
            this.g.add(this.h[i]);
        }
    }

    public static void c(CurlMesh curlMesh, RectF rectF) {
        if (curlMesh == null) {
            return;
        }
        curlMesh.f(null, null);
        synchronized (curlMesh) {
            curlMesh.g(0.0f, 1.0f);
        }
        CurlMesh.Vertex[] vertexArr = curlMesh.p;
        CurlMesh.Vertex vertex = vertexArr[0];
        double d = rectF.left;
        vertex.e = d;
        double d2 = rectF.top;
        vertex.f = d2;
        CurlMesh.Vertex vertex2 = vertexArr[1];
        vertex2.e = d;
        double d3 = rectF.bottom;
        vertex2.f = d3;
        CurlMesh.Vertex vertex3 = vertexArr[2];
        double d4 = rectF.right;
        vertex3.e = d4;
        vertex3.f = d2;
        CurlMesh.Vertex vertex4 = vertexArr[3];
        vertex4.e = d4;
        vertex4.f = d3;
        curlMesh.e();
        curlMesh.C = null;
    }

    public final boolean a(GL10 gl10, int i, boolean z) {
        CurlMesh curlMesh;
        boolean c2;
        ArrayList arrayList = this.g;
        if (arrayList == null || arrayList.size() < 3 || (curlMesh = (CurlMesh) this.g.get(i)) == null) {
            return false;
        }
        synchronized (curlMesh) {
            try {
                if (curlMesh.r == null) {
                    int[] iArr = new int[1];
                    curlMesh.r = iArr;
                    gl10.glGenTextures(1, iArr, 0);
                    gl10.glBindTexture(3553, curlMesh.r[0]);
                    gl10.glTexParameterf(3553, 10241, 9728.0f);
                    gl10.glTexParameterf(3553, 10240, 9728.0f);
                    gl10.glTexParameterf(3553, 10242, 33071.0f);
                    gl10.glTexParameterf(3553, 10243, 33071.0f);
                }
                if (curlMesh.u) {
                    gl10.glBindTexture(3553, curlMesh.r[0]);
                    Bitmap bitmap = curlMesh.t;
                    if (bitmap != null && !bitmap.isRecycled()) {
                        GLUtils.texImage2D(3553, 0, curlMesh.t, 0);
                        curlMesh.A = z;
                        curlMesh.B = 1.0f;
                    } else {
                        Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
                        createBitmap.setPixel(0, 0, PrefImage.B);
                        GLUtils.texImage2D(3553, 0, createBitmap, 0);
                        createBitmap.recycle();
                    }
                    Bitmap bitmap2 = curlMesh.t;
                    if (bitmap2 != null) {
                        bitmap2.recycle();
                    }
                    curlMesh.t = null;
                    curlMesh.u = false;
                }
                if (curlMesh.x) {
                    curlMesh.x = false;
                    curlMesh.e();
                }
                gl10.glEnableClientState(32884);
                gl10.glEnable(3042);
                gl10.glBlendFunc(770, 771);
                gl10.glEnableClientState(32886);
                gl10.glColorPointer(4, 5126, 0, curlMesh.j);
                gl10.glVertexPointer(3, 5126, 0, curlMesh.k);
                gl10.glDrawArrays(5, 0, curlMesh.n);
                gl10.glDisableClientState(32886);
                gl10.glDisable(3042);
                gl10.glEnableClientState(32888);
                gl10.glTexCoordPointer(2, 5126, 0, curlMesh.l);
                gl10.glVertexPointer(3, 5126, 0, curlMesh.m);
                gl10.glEnableClientState(32886);
                gl10.glColorPointer(4, 5126, 0, curlMesh.i);
                gl10.glDrawArrays(5, 0, curlMesh.w);
                gl10.glEnable(3042);
                gl10.glEnable(3553);
                gl10.glBindTexture(3553, curlMesh.r[0]);
                gl10.glBlendFunc(770, 771);
                gl10.glDrawArrays(5, 0, curlMesh.w);
                gl10.glDisable(3553);
                gl10.glDisable(3042);
                int max = Math.max(0, curlMesh.w - 2);
                int i2 = (curlMesh.w + curlMesh.v) - max;
                gl10.glDrawArrays(5, max, i2);
                gl10.glEnable(3042);
                gl10.glEnable(3553);
                gl10.glBindTexture(3553, curlMesh.r[0]);
                gl10.glBlendFunc(770, 771);
                gl10.glDrawArrays(5, max, i2);
                gl10.glDisable(3553);
                gl10.glDisable(3042);
                gl10.glDisableClientState(32886);
                gl10.glDisableClientState(32888);
                gl10.glEnable(3042);
                gl10.glBlendFunc(770, 771);
                gl10.glEnableClientState(32886);
                gl10.glColorPointer(4, 5126, 0, curlMesh.j);
                gl10.glVertexPointer(3, 5126, 0, curlMesh.k);
                gl10.glDrawArrays(5, curlMesh.n, curlMesh.q);
                gl10.glDisableClientState(32886);
                gl10.glDisable(3042);
                gl10.glDisableClientState(32884);
                c2 = curlMesh.c(gl10);
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2;
    }

    public final CurlMesh b(int i) {
        ArrayList arrayList = this.g;
        if (arrayList != null && arrayList.size() >= 3 && i >= 0 && i < 3) {
            return (CurlMesh) arrayList.get(i);
        }
        return null;
    }

    public final synchronized void d(RectF rectF) {
        ArrayList arrayList = this.g;
        if (arrayList != null && arrayList.size() >= 3) {
            CurlMesh curlMesh = (CurlMesh) this.g.get(0);
            c(curlMesh, rectF);
            this.g.remove(0);
            this.g.add(curlMesh);
        }
    }

    public final synchronized void e(RectF rectF) {
        ArrayList arrayList = this.g;
        if (arrayList != null && arrayList.size() >= 3) {
            CurlMesh curlMesh = (CurlMesh) this.g.get(2);
            c(curlMesh, rectF);
            this.g.remove(2);
            this.g.add(0, curlMesh);
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final synchronized void onDrawFrame(GL10 gl10) {
        boolean z;
        CurlView.OnPageChangeListener onPageChangeListener;
        try {
            CurlView curlView = this.f;
            if (gl10 == null) {
                return;
            }
            curlView.a();
            gl10.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            gl10.glClear(16384);
            gl10.glLoadIdentity();
            int i = this.i;
            if (i == 1) {
                if (this.f12892c) {
                    z = a(gl10, 0, this.k);
                    a(gl10, 1, false);
                } else {
                    z = a(gl10, 1, this.k);
                    a(gl10, 0, false);
                }
            } else if (i == 2) {
                if (this.f12892c) {
                    z = a(gl10, 1, this.k);
                    a(gl10, 2, false);
                } else {
                    z = a(gl10, 2, this.k);
                    a(gl10, 1, false);
                }
            } else {
                this.k = false;
                if (this.f12892c) {
                    a(gl10, 2, false);
                    a(gl10, 0, false);
                    a(gl10, 1, false);
                } else {
                    a(gl10, 0, false);
                    a(gl10, 2, false);
                    a(gl10, 1, false);
                }
                z = false;
            }
            if (z) {
                final CurlView curlView2 = this.f;
                curlView2.post(new Runnable() { // from class: com.mycompany.app.curl.CurlView.1
                    public AnonymousClass1() {
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        CurlView.this.requestRender();
                    }
                });
            }
            if (this.j && this.i != 0) {
                this.j = false;
                this.k = true;
                CurlView curlView3 = this.f;
                int i2 = curlView3.n;
                if (i2 != 0 && (onPageChangeListener = curlView3.f) != null) {
                    onPageChangeListener.f(i2);
                }
            }
        } finally {
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i, int i2) {
        if (gl10 == null) {
            return;
        }
        gl10.glViewport(0, 0, i, i2);
        gl10.glMatrixMode(5889);
        gl10.glLoadIdentity();
        float f = i / i2;
        GLU.gluOrtho2D(gl10, -f, f, -1.0f, 1.0f);
        gl10.glMatrixMode(5888);
        gl10.glLoadIdentity();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        if (gl10 != null) {
            gl10.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            gl10.glShadeModel(7425);
            gl10.glHint(3152, 4354);
            gl10.glHint(3154, 4354);
            gl10.glHint(3155, 4354);
            gl10.glEnable(2848);
            gl10.glDisable(2929);
            gl10.glEnable(2884);
            gl10.glCullFace(1029);
            ArrayList arrayList = this.g;
            if (arrayList != null && arrayList.size() >= 3) {
                for (int i = 0; i < 3; i++) {
                    CurlMesh curlMesh = (CurlMesh) this.g.get(i);
                    if (curlMesh != null) {
                        synchronized (curlMesh) {
                            curlMesh.r = null;
                        }
                    }
                }
                CurlView curlView = this.f;
                curlView.c(curlView.getWidth(), curlView.getHeight());
            }
        }
    }
}
