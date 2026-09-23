package androidx.palette.graphics;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.AsyncTask;
import android.util.Log;
import android.util.SparseBooleanArray;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public final class Palette {
    public static final Filter f = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final List f1429a;
    public final List b;
    public final Swatch e;
    public final SparseBooleanArray d = new SparseBooleanArray();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayMap f1430c = new SimpleArrayMap(0);

    /* renamed from: androidx.palette.graphics.Palette$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements Filter {
        @Override // androidx.palette.graphics.Palette.Filter
        public final boolean a(float[] fArr) {
            float f = fArr[2];
            if (f < 0.95f && f > 0.05f) {
                float f2 = fArr[0];
                if (f2 < 10.0f || f2 > 37.0f || fArr[1] > 0.82f) {
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final Bitmap f1431a;
        public final ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public int f1432c;
        public final int d;
        public final int e;
        public final ArrayList f;

        /* renamed from: androidx.palette.graphics.Palette$Builder$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends AsyncTask<Bitmap, Void, Palette> {
            @Override // android.os.AsyncTask
            public final Palette doInBackground(Bitmap[] bitmapArr) {
                try {
                    throw null;
                } catch (Exception e) {
                    Log.e("Palette", "Exception thrown during async generate", e);
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            public final void onPostExecute(Palette palette) {
                throw null;
            }
        }

        public Builder(Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.b = arrayList;
            this.f1432c = 16;
            this.d = 12544;
            this.e = -1;
            ArrayList arrayList2 = new ArrayList();
            this.f = arrayList2;
            if (!bitmap.isRecycled()) {
                arrayList2.add(Palette.f);
                this.f1431a = bitmap;
                arrayList.add(Target.d);
                arrayList.add(Target.e);
                arrayList.add(Target.f);
                arrayList.add(Target.g);
                arrayList.add(Target.h);
                arrayList.add(Target.i);
                return;
            }
            throw new IllegalArgumentException("Bitmap is not valid");
        }

        public final Palette a() {
            int max;
            Bitmap createScaledBitmap;
            Filter[] filterArr;
            int i;
            int i2;
            float f;
            float f2;
            float f3;
            Bitmap bitmap = this.f1431a;
            if (bitmap != null) {
                double d = -1.0d;
                int i3 = this.d;
                if (i3 > 0) {
                    int height = bitmap.getHeight() * bitmap.getWidth();
                    if (height > i3) {
                        d = Math.sqrt(i3 / height);
                    }
                } else {
                    int i4 = this.e;
                    if (i4 > 0 && (max = Math.max(bitmap.getWidth(), bitmap.getHeight())) > i4) {
                        d = i4 / max;
                    }
                }
                int i5 = 0;
                if (d <= 0.0d) {
                    createScaledBitmap = bitmap;
                } else {
                    createScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * d), (int) Math.ceil(bitmap.getHeight() * d), false);
                }
                int width = createScaledBitmap.getWidth();
                int height2 = createScaledBitmap.getHeight();
                int[] iArr = new int[width * height2];
                createScaledBitmap.getPixels(iArr, 0, width, 0, 0, width, height2);
                int i6 = this.f1432c;
                ArrayList arrayList = this.f;
                if (arrayList.isEmpty()) {
                    filterArr = null;
                } else {
                    filterArr = (Filter[]) arrayList.toArray(new Filter[arrayList.size()]);
                }
                ColorCutQuantizer colorCutQuantizer = new ColorCutQuantizer(iArr, i6, filterArr);
                if (createScaledBitmap != bitmap) {
                    createScaledBitmap.recycle();
                }
                ArrayList arrayList2 = this.b;
                Palette palette = new Palette(arrayList2, colorCutQuantizer.f1426c);
                int size = arrayList2.size();
                int i7 = 0;
                while (true) {
                    SparseBooleanArray sparseBooleanArray = palette.d;
                    if (i7 < size) {
                        Target target = (Target) arrayList2.get(i7);
                        float[] fArr = target.f1436c;
                        float[] fArr2 = target.f1435a;
                        int length = fArr.length;
                        float f4 = 0.0f;
                        float f5 = 0.0f;
                        for (int i8 = i5; i8 < length; i8++) {
                            float f6 = fArr[i8];
                            if (f6 > 0.0f) {
                                f5 += f6;
                            }
                        }
                        if (f5 != 0.0f) {
                            int length2 = fArr.length;
                            for (int i9 = i5; i9 < length2; i9++) {
                                float f7 = fArr[i9];
                                if (f7 > 0.0f) {
                                    fArr[i9] = f7 / f5;
                                }
                            }
                        }
                        List list = palette.f1429a;
                        int size2 = list.size();
                        int i10 = i5;
                        float f8 = 0.0f;
                        Swatch swatch = null;
                        while (i10 < size2) {
                            Swatch swatch2 = (Swatch) list.get(i10);
                            float[] b = swatch2.b();
                            float f9 = b[1];
                            float f10 = f4;
                            float[] fArr3 = target.b;
                            if (f9 >= fArr2[i10] && f9 <= fArr2[2]) {
                                float f11 = b[2];
                                if (f11 >= fArr3[i10] && f11 <= fArr3[2] && !sparseBooleanArray.get(swatch2.d)) {
                                    float[] b2 = swatch2.b();
                                    Swatch swatch3 = palette.e;
                                    if (swatch3 != null) {
                                        i2 = swatch3.e;
                                    } else {
                                        i2 = 1;
                                    }
                                    i = size;
                                    float[] fArr4 = target.f1436c;
                                    float f12 = fArr4[i10];
                                    if (f12 > f10) {
                                        f = (1.0f - Math.abs(b2[1] - fArr2[1])) * f12;
                                    } else {
                                        f = f10;
                                    }
                                    float f13 = fArr4[1];
                                    if (f13 > f10) {
                                        f2 = (1.0f - Math.abs(b2[2] - fArr3[1])) * f13;
                                    } else {
                                        f2 = f10;
                                    }
                                    float f14 = fArr4[2];
                                    if (f14 > f10) {
                                        f3 = (swatch2.e / i2) * f14;
                                    } else {
                                        f3 = f10;
                                    }
                                    float f15 = f + f2 + f3;
                                    if (swatch == null || f15 > f8) {
                                        swatch = swatch2;
                                        f8 = f15;
                                    }
                                    i10++;
                                    size = i;
                                    f4 = f10;
                                }
                            }
                            i = size;
                            i10++;
                            size = i;
                            f4 = f10;
                        }
                        int i11 = size;
                        if (swatch != null) {
                            sparseBooleanArray.append(swatch.d, true);
                        }
                        palette.f1430c.put(target, swatch);
                        i7++;
                        i5 = i10;
                        size = i11;
                    } else {
                        sparseBooleanArray.clear();
                        return palette;
                    }
                }
            } else {
                throw new AssertionError();
            }
        }
    }

    /* loaded from: classes.dex */
    public interface Filter {
        boolean a(float[] fArr);
    }

    /* loaded from: classes.dex */
    public interface PaletteAsyncListener {
    }

    /* loaded from: classes.dex */
    public static final class Swatch {

        /* renamed from: a, reason: collision with root package name */
        public final int f1433a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1434c;
        public final int d;
        public final int e;
        public boolean f;
        public int g;
        public int h;
        public float[] i;

        public Swatch(int i, int i2) {
            this.f1433a = Color.red(i);
            this.b = Color.green(i);
            this.f1434c = Color.blue(i);
            this.d = i;
            this.e = i2;
        }

        public final void a() {
            int l;
            int l2;
            if (!this.f) {
                int i = this.d;
                int h = ColorUtils.h(4.5f, -1, i);
                int h2 = ColorUtils.h(3.0f, -1, i);
                if (h != -1 && h2 != -1) {
                    this.h = ColorUtils.l(-1, h);
                    this.g = ColorUtils.l(-1, h2);
                    this.f = true;
                    return;
                }
                int h3 = ColorUtils.h(4.5f, -16777216, i);
                int h4 = ColorUtils.h(3.0f, -16777216, i);
                if (h3 != -1 && h4 != -1) {
                    this.h = ColorUtils.l(-16777216, h3);
                    this.g = ColorUtils.l(-16777216, h4);
                    this.f = true;
                    return;
                }
                if (h != -1) {
                    l = ColorUtils.l(-1, h);
                } else {
                    l = ColorUtils.l(-16777216, h3);
                }
                this.h = l;
                if (h2 != -1) {
                    l2 = ColorUtils.l(-1, h2);
                } else {
                    l2 = ColorUtils.l(-16777216, h4);
                }
                this.g = l2;
                this.f = true;
            }
        }

        public final float[] b() {
            if (this.i == null) {
                this.i = new float[3];
            }
            ColorUtils.b(this.f1433a, this.b, this.f1434c, this.i);
            return this.i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Swatch.class == obj.getClass()) {
                Swatch swatch = (Swatch) obj;
                if (this.e == swatch.e && this.d == swatch.d) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (this.d * 31) + this.e;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(Swatch.class.getSimpleName());
            sb.append(" [RGB: #");
            sb.append(Integer.toHexString(this.d));
            sb.append("] [HSL: ");
            sb.append(Arrays.toString(b()));
            sb.append("] [Population: ");
            sb.append(this.e);
            sb.append("] [Title Text: #");
            a();
            sb.append(Integer.toHexString(this.g));
            sb.append("] [Body Text: #");
            a();
            sb.append(Integer.toHexString(this.h));
            sb.append(']');
            return sb.toString();
        }
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    public Palette(ArrayList arrayList, List list) {
        this.f1429a = list;
        this.b = arrayList;
        int size = list.size();
        int i = IntCompanionObject.MIN_VALUE;
        Swatch swatch = null;
        for (int i2 = 0; i2 < size; i2++) {
            Swatch swatch2 = (Swatch) list.get(i2);
            int i3 = swatch2.e;
            if (i3 > i) {
                swatch = swatch2;
                i = i3;
            }
        }
        this.e = swatch;
    }
}
