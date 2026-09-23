package com.mycompany.app.editor.core;

import java.nio.FloatBuffer;

/* loaded from: classes3.dex */
public class TextureRenderer {
    public static final float[] k = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    public static final float[] l = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public int f15687a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f15688c;
    public int d;
    public FloatBuffer e;
    public FloatBuffer f;
    public int g;
    public int h;
    public int i;
    public int j;

    public final void a() {
        float f;
        FloatBuffer floatBuffer = this.f;
        if (floatBuffer == null) {
            return;
        }
        float f2 = (this.g / this.h) / (this.i / this.j);
        float f3 = 1.0f;
        float f4 = -1.0f;
        if (f2 > 1.0f) {
            float f5 = (-1.0f) / f2;
            float f6 = 1.0f / f2;
            f2 = 1.0f;
            f3 = f6;
            f4 = f5;
            f = -1.0f;
        } else {
            f = -f2;
        }
        floatBuffer.put(new float[]{f4, f, f3, f, f4, f2, f3, f2}).position(0);
    }
}
