package com.mycompany.app.crop;

/* loaded from: classes3.dex */
public class HandleUtil {

    /* renamed from: com.mycompany.app.crop.HandleUtil$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12883a;

        static {
            int[] iArr = new int[Handle.values().length];
            f12883a = iArr;
            try {
                iArr[Handle.f.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12883a[Handle.g.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12883a[Handle.h.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12883a[Handle.i.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12883a[Handle.j.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12883a[Handle.k.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12883a[Handle.l.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f12883a[Handle.m.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f12883a[Handle.n.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static float a(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (float) Math.sqrt((f6 * f6) + (f5 * f5));
    }
}
