package androidx.palette.graphics;

import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import androidx.palette.graphics.Palette;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ColorCutQuantizer {
    public static final Comparator f = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f1425a;
    public final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1426c;
    public final Palette.Filter[] d;
    public final float[] e = new float[3];

    /* renamed from: androidx.palette.graphics.ColorCutQuantizer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements Comparator<Vbox> {
        @Override // java.util.Comparator
        public final int compare(Vbox vbox, Vbox vbox2) {
            return vbox2.b() - vbox.b();
        }
    }

    /* loaded from: classes.dex */
    public class Vbox {

        /* renamed from: a, reason: collision with root package name */
        public final int f1427a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1428c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;

        public Vbox(int i, int i2) {
            this.f1427a = i;
            this.b = i2;
            a();
        }

        public final void a() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.f1425a;
            int[] iArr2 = colorCutQuantizer.b;
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE;
            int i4 = 0;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MIN_VALUE;
            for (int i8 = this.f1427a; i8 <= this.b; i8++) {
                int i9 = iArr[i8];
                i4 += iArr2[i9];
                int i10 = (i9 >> 10) & 31;
                int i11 = (i9 >> 5) & 31;
                int i12 = i9 & 31;
                if (i10 > i7) {
                    i7 = i10;
                }
                if (i10 < i) {
                    i = i10;
                }
                if (i11 > i2) {
                    i2 = i11;
                }
                if (i11 < i5) {
                    i5 = i11;
                }
                if (i12 > i3) {
                    i3 = i12;
                }
                if (i12 < i6) {
                    i6 = i12;
                }
            }
            this.d = i;
            this.e = i7;
            this.f = i5;
            this.g = i2;
            this.h = i6;
            this.i = i3;
            this.f1428c = i4;
        }

        public final int b() {
            return ((this.i - this.h) + 1) * ((this.g - this.f) + 1) * ((this.e - this.d) + 1);
        }
    }

    public ColorCutQuantizer(int[] iArr, int i, Palette.Filter[] filterArr) {
        Vbox vbox;
        int i2;
        this.d = filterArr;
        int[] iArr2 = new int[32768];
        this.b = iArr2;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            int i4 = iArr[i3];
            int b = b(Color.blue(i4), 8, 5) | (b(Color.red(i4), 8, 5) << 10) | (b(Color.green(i4), 8, 5) << 5);
            iArr[i3] = b;
            iArr2[b] = iArr2[b] + 1;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < 32768; i6++) {
            if (iArr2[i6] > 0) {
                int rgb = Color.rgb(b((i6 >> 10) & 31, 5, 8), b((i6 >> 5) & 31, 5, 8), b(i6 & 31, 5, 8));
                float[] fArr = this.e;
                ThreadLocal threadLocal = ColorUtils.f680a;
                ColorUtils.b(Color.red(rgb), Color.green(rgb), Color.blue(rgb), fArr);
                Palette.Filter[] filterArr2 = this.d;
                if (filterArr2 != null && filterArr2.length > 0) {
                    int length = filterArr2.length;
                    int i7 = 0;
                    while (true) {
                        if (i7 >= length) {
                            break;
                        }
                        if (!filterArr2[i7].a(fArr)) {
                            iArr2[i6] = 0;
                            break;
                        }
                        i7++;
                    }
                }
            }
            if (iArr2[i6] > 0) {
                i5++;
            }
        }
        int[] iArr3 = new int[i5];
        this.f1425a = iArr3;
        int i8 = 0;
        for (int i9 = 0; i9 < 32768; i9++) {
            if (iArr2[i9] > 0) {
                iArr3[i8] = i9;
                i8++;
            }
        }
        if (i5 <= i) {
            this.f1426c = new ArrayList();
            for (int i10 = 0; i10 < i5; i10++) {
                int i11 = iArr3[i10];
                this.f1426c.add(new Palette.Swatch(Color.rgb(b((i11 >> 10) & 31, 5, 8), b((i11 >> 5) & 31, 5, 8), b(i11 & 31, 5, 8)), iArr2[i11]));
            }
            return;
        }
        PriorityQueue priorityQueue = new PriorityQueue(i, f);
        priorityQueue.offer(new Vbox(0, this.f1425a.length - 1));
        while (priorityQueue.size() < i && (vbox = (Vbox) priorityQueue.poll()) != null) {
            int i12 = vbox.b;
            int i13 = vbox.f1427a;
            if ((i12 + 1) - i13 <= 1) {
                break;
            }
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            if ((i12 + 1) - i13 > 1) {
                int i14 = vbox.e - vbox.d;
                int i15 = vbox.g - vbox.f;
                int i16 = vbox.i - vbox.h;
                if (i14 >= i15 && i14 >= i16) {
                    i2 = -3;
                } else if (i15 >= i14 && i15 >= i16) {
                    i2 = -2;
                } else {
                    i2 = -1;
                }
                int[] iArr4 = colorCutQuantizer.f1425a;
                int[] iArr5 = colorCutQuantizer.b;
                a(iArr4, i2, i13, i12);
                Arrays.sort(iArr4, i13, vbox.b + 1);
                a(iArr4, i2, i13, vbox.b);
                int i17 = vbox.f1428c / 2;
                int i18 = 0;
                int i19 = i13;
                while (true) {
                    int i20 = vbox.b;
                    if (i19 > i20) {
                        break;
                    }
                    i18 += iArr5[iArr4[i19]];
                    if (i18 >= i17) {
                        i13 = Math.min(i20 - 1, i19);
                        break;
                    }
                    i19++;
                }
                Vbox vbox2 = new Vbox(i13 + 1, vbox.b);
                vbox.b = i13;
                vbox.a();
                priorityQueue.offer(vbox2);
                priorityQueue.offer(vbox);
            } else {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
        }
        ArrayList arrayList = new ArrayList(priorityQueue.size());
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            Vbox vbox3 = (Vbox) it.next();
            ColorCutQuantizer colorCutQuantizer2 = ColorCutQuantizer.this;
            int[] iArr6 = colorCutQuantizer2.f1425a;
            int[] iArr7 = colorCutQuantizer2.b;
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            for (int i25 = vbox3.f1427a; i25 <= vbox3.b; i25++) {
                int i26 = iArr6[i25];
                int i27 = iArr7[i26];
                i22 += i27;
                i21 = (((i26 >> 10) & 31) * i27) + i21;
                i23 = (((i26 >> 5) & 31) * i27) + i23;
                i24 += i27 * (i26 & 31);
            }
            float f2 = i22;
            Palette.Swatch swatch = new Palette.Swatch(Color.rgb(b(Math.round(i21 / f2), 5, 8), b(Math.round(i23 / f2), 5, 8), b(Math.round(i24 / f2), 5, 8)), i22);
            float[] b2 = swatch.b();
            Palette.Filter[] filterArr3 = this.d;
            if (filterArr3 != null && filterArr3.length > 0) {
                for (Palette.Filter filter : filterArr3) {
                    if (!filter.a(b2)) {
                        break;
                    }
                }
            }
            arrayList.add(swatch);
        }
        this.f1426c = arrayList;
    }

    public static void a(int[] iArr, int i, int i2, int i3) {
        if (i != -2) {
            if (i == -1) {
                while (i2 <= i3) {
                    int i4 = iArr[i2];
                    iArr[i2] = ((i4 >> 10) & 31) | ((i4 & 31) << 10) | (((i4 >> 5) & 31) << 5);
                    i2++;
                }
                return;
            }
            return;
        }
        while (i2 <= i3) {
            int i5 = iArr[i2];
            iArr[i2] = (i5 & 31) | (((i5 >> 5) & 31) << 10) | (((i5 >> 10) & 31) << 5);
            i2++;
        }
    }

    public static int b(int i, int i2, int i3) {
        return (i3 > i2 ? i << (i3 - i2) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }
}
