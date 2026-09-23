package com.mycompany.app.curl;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PointF;
import com.mycompany.app.main.MainItem;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes3.dex */
public class CurlMesh {
    public static final float[] D = {0.0f, 0.0f, 0.0f, 0.5f};
    public static final float[] E = {0.0f, 0.0f, 0.0f, 0.0f};
    public static final float[] F = {-1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f};
    public static final short[] G = {0, 1, 2, 0, 2, 3};
    public boolean A;
    public float B;
    public MainItem.ViewItem C;

    /* renamed from: a, reason: collision with root package name */
    public final Array f12884a;
    public final Array f;
    public final Array g;
    public final FloatBuffer i;
    public final FloatBuffer j;
    public final FloatBuffer k;
    public final FloatBuffer l;
    public final FloatBuffer m;
    public int n;
    public int q;
    public int[] r;
    public Bitmap s;
    public Bitmap t;
    public int v;
    public int w;
    public final FloatBuffer y;
    public final ShortBuffer z;
    public boolean x = true;
    public final Vertex[] p = new Vertex[4];
    public boolean u = false;
    public final int o = 10;
    public final Array e = new Array(12);

    /* renamed from: c, reason: collision with root package name */
    public final Array f12885c = new Array(7);
    public final Array d = new Array(4);
    public final Array b = new Array(2);
    public final Array h = new Array(11);

    /* loaded from: classes3.dex */
    public static class Array<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Object[] f12886a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public int f12887c;

        public Array(int i) {
            this.b = i;
            this.f12886a = new Object[i];
        }

        public final void a(int i, Object obj) {
            int i2;
            if (i < 0 || i > (i2 = this.f12887c) || i2 >= this.b) {
                throw new IndexOutOfBoundsException();
            }
            while (true) {
                Object[] objArr = this.f12886a;
                if (i2 > i) {
                    objArr[i2] = objArr[i2 - 1];
                    i2--;
                } else {
                    objArr[i] = obj;
                    this.f12887c++;
                    return;
                }
            }
        }

        public final void b(Object obj) {
            int i = this.f12887c;
            if (i < this.b) {
                this.f12887c = i + 1;
                this.f12886a[i] = obj;
                return;
            }
            throw new IndexOutOfBoundsException();
        }

        public final void c(Array array) {
            if (this.f12887c + array.f12887c <= this.b) {
                for (int i = 0; i < array.f12887c; i++) {
                    int i2 = this.f12887c;
                    this.f12887c = i2 + 1;
                    this.f12886a[i2] = array.d(i);
                }
                return;
            }
            throw new IndexOutOfBoundsException();
        }

        public final Object d(int i) {
            if (i >= 0 && i < this.f12887c) {
                return this.f12886a[i];
            }
            throw new IndexOutOfBoundsException();
        }

        public final Object e() {
            if (this.f12887c > 0) {
                Object[] objArr = this.f12886a;
                int i = 0;
                Object obj = objArr[0];
                while (true) {
                    int i2 = this.f12887c - 1;
                    if (i < i2) {
                        int i3 = i + 1;
                        objArr[i] = objArr[i3];
                        i = i3;
                    } else {
                        this.f12887c = i2;
                        return obj;
                    }
                }
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ShadowVertex {

        /* renamed from: a, reason: collision with root package name */
        public double f12888a;
        public double b;

        /* renamed from: c, reason: collision with root package name */
        public double f12889c;
        public double d;
        public double e;
        public double f;
    }

    /* loaded from: classes3.dex */
    public static class Vertex {

        /* renamed from: a, reason: collision with root package name */
        public int f12890a;

        /* renamed from: c, reason: collision with root package name */
        public double f12891c;
        public double d;
        public double i = 0.0d;
        public double h = 0.0d;
        public double g = 0.0d;
        public double f = 0.0d;
        public double e = 0.0d;
        public float b = 1.0f;

        public final void a(double d) {
            double cos = Math.cos(d);
            double sin = Math.sin(d);
            double d2 = this.e;
            double d3 = this.f;
            double d4 = (d3 * sin) + (d2 * cos);
            double d5 = -sin;
            this.e = d4;
            this.f = (d3 * cos) + (d2 * d5);
            double d6 = this.f12891c;
            double d7 = this.d;
            double d8 = (sin * d7) + (d6 * cos);
            this.f12891c = d8;
            this.d = (d7 * cos) + (d6 * d5);
        }

        public final void b(Vertex vertex) {
            this.e = vertex.e;
            this.f = vertex.f;
            this.g = vertex.g;
            this.h = vertex.h;
            this.i = vertex.i;
            this.f12891c = vertex.f12891c;
            this.d = vertex.d;
            this.f12890a = vertex.f12890a;
            this.b = vertex.b;
        }
    }

    public CurlMesh() {
        for (int i = 0; i < 11; i++) {
            this.h.b(new Vertex());
        }
        this.f = new Array((this.o + 2) * 2);
        this.f12884a = new Array((this.o + 2) * 2);
        this.g = new Array((this.o + 2) * 2);
        for (int i2 = 0; i2 < (this.o + 2) * 2; i2++) {
            this.g.b(new Object());
        }
        for (int i3 = 0; i3 < 4; i3++) {
            this.p[i3] = new Vertex();
        }
        Vertex[] vertexArr = this.p;
        Vertex vertex = vertexArr[0];
        Vertex vertex2 = vertexArr[1];
        Vertex vertex3 = vertexArr[3];
        vertex3.d = -1.0d;
        vertex2.d = -1.0d;
        vertex2.f12891c = -1.0d;
        vertex.f12891c = -1.0d;
        Vertex vertex4 = vertexArr[2];
        vertex3.f12891c = 1.0d;
        vertex4.d = 1.0d;
        vertex4.f12891c = 1.0d;
        vertex.d = 1.0d;
        int i4 = (this.o * 2) + 6;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(i4 * 12).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.m = asFloatBuffer;
        asFloatBuffer.position(0);
        FloatBuffer asFloatBuffer2 = ByteBuffer.allocateDirect(i4 * 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.l = asFloatBuffer2;
        asFloatBuffer2.position(0);
        FloatBuffer asFloatBuffer3 = ByteBuffer.allocateDirect(i4 * 16).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.i = asFloatBuffer3;
        asFloatBuffer3.position(0);
        int i5 = this.o + 2;
        FloatBuffer asFloatBuffer4 = ByteBuffer.allocateDirect(i5 * 64).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.j = asFloatBuffer4;
        asFloatBuffer4.position(0);
        FloatBuffer asFloatBuffer5 = ByteBuffer.allocateDirect(i5 * 48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.k = asFloatBuffer5;
        asFloatBuffer5.position(0);
        this.q = 0;
        this.n = 0;
        this.y = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.z = ByteBuffer.allocateDirect(12).order(ByteOrder.nativeOrder()).asShortBuffer();
        for (int i6 = 0; i6 < 12; i6++) {
            this.y.put(F[i6]);
        }
        for (int i7 = 0; i7 < 6; i7++) {
            this.z.put(G[i7]);
        }
        this.y.position(0);
        this.z.position(0);
    }

    public final void a(Vertex vertex) {
        float f = (float) vertex.e;
        FloatBuffer floatBuffer = this.m;
        floatBuffer.put(f);
        floatBuffer.put((float) vertex.f);
        floatBuffer.put((float) vertex.g);
        float red = (vertex.b * Color.red(vertex.f12890a)) / 255.0f;
        FloatBuffer floatBuffer2 = this.i;
        floatBuffer2.put(red);
        floatBuffer2.put((vertex.b * Color.green(vertex.f12890a)) / 255.0f);
        floatBuffer2.put((vertex.b * Color.blue(vertex.f12890a)) / 255.0f);
        floatBuffer2.put(Color.alpha(vertex.f12890a) / 255.0f);
        float f2 = (float) vertex.h;
        FloatBuffer floatBuffer3 = this.l;
        floatBuffer3.put(f2);
        floatBuffer3.put((float) vertex.i);
    }

    public final synchronized void b(PointF pointF, PointF pointF2, double d) {
        Array array;
        double d2;
        boolean z;
        double d3;
        int[][] iArr;
        int i;
        try {
            this.m.position(0);
            this.i.position(0);
            this.l.position(0);
            double acos = Math.acos(pointF2.x);
            if (pointF2.y > 0.0f) {
                acos = -acos;
            }
            double d4 = 0.0d;
            double d5 = 3.141592653589793d;
            if (Double.compare(acos, 0.0d) == 0) {
                acos += 1.0E-7d;
            } else if (Double.compare(acos, 3.141592653589793d) == 0) {
                acos -= 1.0E-7d;
            }
            this.h.c(this.d);
            this.d.f12887c = 0;
            int i2 = 0;
            while (i2 < 4) {
                Vertex vertex = (Vertex) this.h.e();
                vertex.b(this.p[i2]);
                double d6 = -pointF.x;
                double d7 = d5;
                double d8 = -pointF.y;
                double d9 = d4;
                vertex.e += d6;
                vertex.f += d8;
                vertex.a(-acos);
                while (true) {
                    Array array2 = this.d;
                    if (i < array2.f12887c) {
                        Vertex vertex2 = (Vertex) array2.d(i);
                        double d10 = vertex.e;
                        double d11 = vertex2.e;
                        i = (d10 <= d11 && (Double.compare(d10, d11) != 0 || vertex.f <= vertex2.f)) ? i + 1 : 0;
                    }
                }
                this.d.a(i, vertex);
                i2++;
                d5 = d7;
                d4 = d9;
            }
            double d12 = d4;
            double d13 = d5;
            Vertex vertex3 = (Vertex) this.d.d(0);
            Vertex vertex4 = (Vertex) this.d.d(2);
            Vertex vertex5 = (Vertex) this.d.d(3);
            int i3 = 2;
            int[][] iArr2 = {new int[]{0, 1}, new int[]{0, 2}, new int[]{1, 3}, new int[]{2, 3}};
            double d14 = vertex3.e - vertex4.e;
            int i4 = 1;
            double d15 = vertex3.f - vertex4.f;
            double sqrt = Math.sqrt((d15 * d15) + (d14 * d14));
            double d16 = vertex3.e - vertex5.e;
            double d17 = vertex3.f - vertex5.f;
            if (sqrt > Math.sqrt((d17 * d17) + (d16 * d16))) {
                iArr2[1][1] = 3;
                iArr2[2][1] = 2;
            }
            this.v = 0;
            this.w = 0;
            this.g.c(this.f12884a);
            this.g.c(this.f);
            this.f12884a.f12887c = 0;
            this.f.f12887c = 0;
            double d18 = d * d13;
            Array array3 = this.e;
            array3.f12887c = 0;
            if (this.o > 0) {
                array3.b(Double.valueOf(d12));
            }
            int i5 = 1;
            while (true) {
                if (i5 >= this.o) {
                    break;
                }
                this.e.b(Double.valueOf(((-d18) * i5) / (r4 - 1)));
                i5++;
            }
            double d19 = 1.0d;
            this.e.b(Double.valueOf(((Vertex) this.d.d(3)).e - 1.0d));
            double d20 = ((Vertex) this.d.d(0)).e + 1.0d;
            int i6 = 0;
            while (true) {
                Array array4 = this.e;
                if (i6 >= array4.f12887c) {
                    break;
                }
                double doubleValue = ((Double) array4.d(i6)).doubleValue();
                double d21 = d19;
                int i7 = 0;
                while (true) {
                    array = this.d;
                    if (i7 >= array.f12887c) {
                        break;
                    }
                    Vertex vertex6 = (Vertex) array.d(i7);
                    double d22 = d20;
                    double d23 = vertex6.e;
                    if (d23 < doubleValue || d23 > d22) {
                        d3 = acos;
                        iArr = iArr2;
                    } else {
                        Vertex vertex7 = (Vertex) this.h.e();
                        vertex7.b(vertex6);
                        d3 = acos;
                        iArr = iArr2;
                        Array d24 = d(this.d, iArr, vertex7.e);
                        if (d24.f12887c == i4 && ((Vertex) d24.d(0)).f > vertex6.f) {
                            this.f12885c.c(d24);
                            this.f12885c.b(vertex7);
                        } else if (d24.f12887c <= 1) {
                            this.f12885c.b(vertex7);
                            this.f12885c.c(d24);
                        } else {
                            this.h.b(vertex7);
                            this.h.c(d24);
                        }
                    }
                    i7++;
                    iArr2 = iArr;
                    d20 = d22;
                    acos = d3;
                    i4 = 1;
                }
                double d25 = acos;
                int[][] iArr3 = iArr2;
                Array d26 = d(array, iArr3, doubleValue);
                int i8 = d26.f12887c;
                if (i8 == i3) {
                    Vertex vertex8 = (Vertex) d26.d(0);
                    Vertex vertex9 = (Vertex) d26.d(1);
                    if (vertex8.f < vertex9.f) {
                        this.f12885c.b(vertex9);
                        this.f12885c.b(vertex8);
                    } else {
                        this.f12885c.c(d26);
                    }
                } else if (i8 != 0) {
                    this.h.c(d26);
                }
                while (true) {
                    Array array5 = this.f12885c;
                    if (array5.f12887c > 0) {
                        Vertex vertex10 = (Vertex) array5.e();
                        this.h.b(vertex10);
                        if (i6 == 0) {
                            this.w++;
                            z = true;
                            d2 = 2.0d;
                        } else {
                            if (i6 != this.e.f12887c - 1 && Double.compare(d18, d12) != 0) {
                                double d27 = (vertex10.e / d18) * d13;
                                d2 = 2.0d;
                                vertex10.e = d * Math.sin(d27);
                                vertex10.g = d - (Math.cos(d27) * d);
                                vertex10.f12891c *= Math.cos(d27);
                                vertex10.b = (float) ((Math.sqrt(Math.sin(d27) + d21) * 0.8999999761581421d) + 0.10000000149011612d);
                                if (vertex10.g >= d) {
                                    this.v++;
                                } else {
                                    this.w++;
                                    z = true;
                                }
                            } else {
                                d2 = 2.0d;
                                vertex10.e = -(vertex10.e + d18);
                                vertex10.g = d * 2.0d;
                                vertex10.f12891c = -vertex10.f12891c;
                                this.v++;
                            }
                            z = false;
                        }
                        if (!z) {
                            vertex10.f12890a = -7829368;
                        } else {
                            vertex10.f12890a = -1;
                        }
                        double d28 = d25;
                        vertex10.a(d28);
                        double d29 = pointF.x;
                        d25 = d28;
                        double d30 = pointF.y;
                        vertex10.e += d29;
                        vertex10.f += d30;
                        a(vertex10);
                        double d31 = vertex10.g;
                        d12 = 0.0d;
                        if (d31 > 0.0d && d31 <= d) {
                            ShadowVertex shadowVertex = (ShadowVertex) this.g.e();
                            shadowVertex.d = vertex10.e;
                            shadowVertex.e = vertex10.f;
                            double d32 = vertex10.g;
                            shadowVertex.f = d32;
                            double d33 = d32 / d2;
                            shadowVertex.b = (-pointF2.x) * d33;
                            shadowVertex.f12889c = d33 * (-pointF2.y);
                            shadowVertex.f12888a = d32 / d;
                            Array array6 = this.f12884a;
                            array6.a((array6.f12887c + 1) / 2, shadowVertex);
                        }
                        if (vertex10.g > d) {
                            ShadowVertex shadowVertex2 = (ShadowVertex) this.g.e();
                            shadowVertex2.d = vertex10.e;
                            shadowVertex2.e = vertex10.f;
                            double d34 = vertex10.g;
                            shadowVertex2.f = d34;
                            double d35 = d34 - d;
                            double d36 = d35 / 3.0d;
                            shadowVertex2.b = vertex10.f12891c * d36;
                            shadowVertex2.f12889c = d36 * vertex10.d;
                            shadowVertex2.f12888a = d35 / (d * d2);
                            Array array7 = this.f;
                            array7.a((array7.f12887c + 1) / 2, shadowVertex2);
                        }
                        d13 = 3.141592653589793d;
                    }
                }
                i4 = 1;
                i6++;
                iArr2 = iArr3;
                d20 = doubleValue;
                d19 = d21;
                acos = d25;
                d13 = 3.141592653589793d;
                i3 = 2;
            }
            this.m.position(0);
            this.i.position(0);
            this.l.position(0);
            this.j.position(0);
            this.k.position(0);
            this.n = 0;
            int i9 = 0;
            while (true) {
                Array array8 = this.f12884a;
                if (i9 >= array8.f12887c) {
                    break;
                }
                ShadowVertex shadowVertex3 = (ShadowVertex) array8.d(i9);
                this.k.put((float) shadowVertex3.d);
                this.k.put((float) shadowVertex3.e);
                this.k.put((float) shadowVertex3.f);
                this.k.put((float) (shadowVertex3.d + shadowVertex3.b));
                this.k.put((float) (shadowVertex3.e + shadowVertex3.f12889c));
                this.k.put((float) shadowVertex3.f);
                for (int i10 = 0; i10 < 4; i10++) {
                    this.j.put((float) (((D[i10] - r4) * shadowVertex3.f12888a) + E[i10]));
                }
                this.j.put(E);
                this.n += 2;
                i9++;
            }
            this.q = 0;
            int i11 = 0;
            while (true) {
                Array array9 = this.f;
                if (i11 < array9.f12887c) {
                    ShadowVertex shadowVertex4 = (ShadowVertex) array9.d(i11);
                    this.k.put((float) shadowVertex4.d);
                    this.k.put((float) shadowVertex4.e);
                    this.k.put((float) shadowVertex4.f);
                    this.k.put((float) (shadowVertex4.d + shadowVertex4.b));
                    this.k.put((float) (shadowVertex4.e + shadowVertex4.f12889c));
                    this.k.put((float) shadowVertex4.f);
                    for (int i12 = 0; i12 < 4; i12++) {
                        this.j.put((float) (((D[i12] - r4) * shadowVertex4.f12888a) + E[i12]));
                    }
                    this.j.put(E);
                    this.q += 2;
                    i11++;
                } else {
                    this.j.position(0);
                    this.k.position(0);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean c(GL10 gl10) {
        if (!this.A) {
            return false;
        }
        float f = this.B;
        if (f > 0.0f) {
            this.B = f - 0.1f;
            gl10.glEnable(3042);
            gl10.glBlendFunc(770, 771);
            gl10.glColor4f(0.13f, 0.13f, 0.13f, this.B);
            gl10.glEnableClientState(32884);
            gl10.glVertexPointer(3, 5126, 0, this.y);
            gl10.glDrawElements(4, 6, 5123, this.z);
            gl10.glDisableClientState(32884);
            gl10.glDisable(3042);
            return true;
        }
        this.A = false;
        return true;
    }

    public final Array d(Array array, int[][] iArr, double d) {
        int i;
        Array array2 = this.b;
        char c2 = 0;
        array2.f12887c = 0;
        int i2 = 0;
        while (i2 < iArr.length) {
            Vertex vertex = (Vertex) array.d(iArr[i2][c2]);
            Vertex vertex2 = (Vertex) array.d(iArr[i2][1]);
            double d2 = vertex.e;
            if (d2 > d) {
                double d3 = vertex2.e;
                if (d3 < d) {
                    double d4 = (d - d3) / (d2 - d3);
                    Vertex vertex3 = (Vertex) this.h.e();
                    vertex3.b(vertex2);
                    vertex3.e = d;
                    i = i2;
                    vertex3.f = ((vertex.f - vertex2.f) * d4) + vertex3.f;
                    vertex3.h = ((vertex.h - vertex2.h) * d4) + vertex3.h;
                    vertex3.i = ((vertex.i - vertex2.i) * d4) + vertex3.i;
                    vertex3.f12891c = ((vertex.f12891c - vertex2.f12891c) * d4) + vertex3.f12891c;
                    vertex3.d = ((vertex.d - vertex2.d) * d4) + vertex3.d;
                    array2.b(vertex3);
                    i2 = i + 1;
                    c2 = 0;
                }
            }
            i = i2;
            i2 = i + 1;
            c2 = 0;
        }
        return array2;
    }

    public final void e() {
        FloatBuffer floatBuffer = this.m;
        floatBuffer.position(0);
        FloatBuffer floatBuffer2 = this.i;
        floatBuffer2.position(0);
        FloatBuffer floatBuffer3 = this.l;
        floatBuffer3.position(0);
        for (int i = 0; i < 4; i++) {
            Vertex vertex = (Vertex) this.h.d(0);
            vertex.b(this.p[i]);
            vertex.f12890a = -1;
            a(vertex);
        }
        this.w = 4;
        this.v = 0;
        floatBuffer.position(0);
        floatBuffer2.position(0);
        floatBuffer3.position(0);
        this.q = 0;
        this.n = 0;
    }

    public final synchronized void f(Bitmap bitmap, Bitmap bitmap2) {
        try {
            Bitmap bitmap3 = this.t;
            if (bitmap3 != null) {
                bitmap3.recycle();
            }
            this.s = bitmap;
            this.t = bitmap2;
            this.u = true;
            this.A = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void g(float f, float f2) {
        Vertex[] vertexArr = this.p;
        Vertex vertex = vertexArr[0];
        double d = f;
        vertex.h = d;
        double d2 = 0.0f;
        vertex.i = d2;
        Vertex vertex2 = vertexArr[1];
        vertex2.h = d;
        double d3 = 1.0f;
        vertex2.i = d3;
        Vertex vertex3 = vertexArr[2];
        double d4 = f2;
        vertex3.h = d4;
        vertex3.i = d2;
        Vertex vertex4 = vertexArr[3];
        vertex4.h = d4;
        vertex4.i = d3;
    }
}
