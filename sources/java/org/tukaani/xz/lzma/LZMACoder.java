package org.tukaani.xz.lzma;

import java.lang.reflect.Array;
import org.tukaani.xz.rangecoder.RangeCoder;

/* loaded from: classes4.dex */
abstract class LZMACoder {

    /* renamed from: a, reason: collision with root package name */
    public final int f22712a;
    public final int[] b = new int[4];

    /* renamed from: c, reason: collision with root package name */
    public final State f22713c = new Object();
    public final short[][] d;
    public final short[] e;
    public final short[] f;
    public final short[] g;
    public final short[] h;
    public final short[][] i;
    public final short[][] j;
    public final short[][] k;
    public final short[] l;

    /* loaded from: classes4.dex */
    public static abstract class LengthCoder {

        /* renamed from: a, reason: collision with root package name */
        public final short[] f22714a = new short[2];
        public final short[][] b;

        /* renamed from: c, reason: collision with root package name */
        public final short[][] f22715c;
        public final short[] d;

        public LengthCoder() {
            Class cls = Short.TYPE;
            this.b = (short[][]) Array.newInstance((Class<?>) cls, 16, 8);
            this.f22715c = (short[][]) Array.newInstance((Class<?>) cls, 16, 8);
            this.d = new short[256];
        }

        public void a() {
            short[][] sArr;
            RangeCoder.a(this.f22714a);
            int i = 0;
            while (true) {
                sArr = this.b;
                if (i >= sArr.length) {
                    break;
                }
                RangeCoder.a(sArr[i]);
                i++;
            }
            for (int i2 = 0; i2 < sArr.length; i2++) {
                RangeCoder.a(this.f22715c[i2]);
            }
            RangeCoder.a(this.d);
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class LiteralCoder {

        /* renamed from: a, reason: collision with root package name */
        public final int f22716a;
        public final int b;

        /* loaded from: classes4.dex */
        public static abstract class LiteralSubcoder {

            /* renamed from: a, reason: collision with root package name */
            public final short[] f22717a = new short[768];
        }

        public LiteralCoder(int i, int i2) {
            this.f22716a = i;
            this.b = (1 << i2) - 1;
        }

        public final int a(int i, int i2) {
            int i3 = this.f22716a;
            return (i >> (8 - i3)) + ((i2 & this.b) << i3);
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [org.tukaani.xz.lzma.State, java.lang.Object] */
    public LZMACoder(int i) {
        Class cls = Short.TYPE;
        this.d = (short[][]) Array.newInstance((Class<?>) cls, 12, 16);
        this.e = new short[12];
        this.f = new short[12];
        this.g = new short[12];
        this.h = new short[12];
        this.i = (short[][]) Array.newInstance((Class<?>) cls, 12, 16);
        this.j = (short[][]) Array.newInstance((Class<?>) cls, 4, 64);
        this.k = new short[][]{new short[2], new short[2], new short[4], new short[4], new short[8], new short[8], new short[16], new short[16], new short[32], new short[32]};
        this.l = new short[16];
        this.f22712a = (1 << i) - 1;
    }

    public void a() {
        int[] iArr = this.b;
        int i = 0;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        this.f22713c.f22719a = 0;
        int i2 = 0;
        while (true) {
            short[][] sArr = this.d;
            if (i2 >= sArr.length) {
                break;
            }
            RangeCoder.a(sArr[i2]);
            i2++;
        }
        RangeCoder.a(this.e);
        RangeCoder.a(this.f);
        RangeCoder.a(this.g);
        RangeCoder.a(this.h);
        int i3 = 0;
        while (true) {
            short[][] sArr2 = this.i;
            if (i3 >= sArr2.length) {
                break;
            }
            RangeCoder.a(sArr2[i3]);
            i3++;
        }
        int i4 = 0;
        while (true) {
            short[][] sArr3 = this.j;
            if (i4 >= sArr3.length) {
                break;
            }
            RangeCoder.a(sArr3[i4]);
            i4++;
        }
        while (true) {
            short[][] sArr4 = this.k;
            if (i < sArr4.length) {
                RangeCoder.a(sArr4[i]);
                i++;
            } else {
                RangeCoder.a(this.l);
                return;
            }
        }
    }
}
