package com.mycompany.app.ocr;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.a;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.internal.mlkit_vision_text_common.zzun;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
import com.google.mlkit.common.sdkinternal.ExecutorSelector;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.chinese.ChineseTextRecognizerOptions;
import com.google.mlkit.vision.text.devanagari.DevanagariTextRecognizerOptions;
import com.google.mlkit.vision.text.internal.TextRecognizerTaskWithResource;
import com.google.mlkit.vision.text.internal.zzn;
import com.google.mlkit.vision.text.internal.zzo;
import com.google.mlkit.vision.text.japanese.JapaneseTextRecognizerOptions;
import com.google.mlkit.vision.text.korean.KoreanTextRecognizerOptions;
import com.google.mlkit.vision.text.latin.TextRecognizerOptions;
import com.mycompany.app.dialog.DialogOcrLoad;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainTransOcr;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.view.MyProgressBar;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import j$.util.DesugarCollections;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class OcrDetector {
    public static final String[] Q = {"en", "zh", "hi", "ja", "ko"};
    public Bitmap A;
    public int B;
    public int C;
    public float D;
    public float E;
    public Bitmap F;
    public int G;
    public Text H;
    public ArrayList I;
    public ArrayList J;
    public Bitmap K;
    public Canvas L;
    public boolean M;
    public MainTransOcr N;
    public boolean O;
    public DialogOcrLoad P;

    /* renamed from: a, reason: collision with root package name */
    public float f17295a;
    public float b;

    /* renamed from: c, reason: collision with root package name */
    public float f17296c;
    public float d;
    public float e;
    public float f;
    public float g;
    public double[] h;
    public int[] i;
    public int[] j;
    public int[] k;
    public int[] l;
    public MainActivity m;
    public ViewGroup n;
    public OcrListener o;
    public Handler p;
    public int q;
    public int r;
    public Paint s;
    public OcrExecutor t;
    public zzn u;
    public int v;
    public InputImage w;
    public ArrayList x;
    public String y;
    public String z;

    /* loaded from: classes3.dex */
    public static class ColorItem {

        /* renamed from: a, reason: collision with root package name */
        public int f17309a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f17310c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public boolean i;
    }

    /* loaded from: classes3.dex */
    public static class OcrItem {

        /* renamed from: a, reason: collision with root package name */
        public int f17311a;
        public ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public int f17312c;
        public int d;
        public int e;
        public int f;
        public float g;
        public boolean h;
        public float i;
        public RectF j;
        public String k;
        public String l;
        public int m;
        public StaticLayout n;
        public StaticLayout o;
    }

    /* loaded from: classes3.dex */
    public interface OcrListener {
        void b(boolean z);

        void c(int i, String str, String str2);
    }

    /* loaded from: classes3.dex */
    public static class RectItem {

        /* renamed from: a, reason: collision with root package name */
        public int f17313a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f17314c;
        public int d;
        public int e;
        public boolean f;
        public boolean g;
        public boolean h;
        public int i;
        public float j;
        public boolean k;
        public float l;
        public RectF m;
        public float n;
    }

    /* loaded from: classes3.dex */
    public static class SortOcr implements Comparator<OcrItem> {
        @Override // java.util.Comparator
        public final int compare(OcrItem ocrItem, OcrItem ocrItem2) {
            OcrItem ocrItem3 = ocrItem;
            OcrItem ocrItem4 = ocrItem2;
            if (ocrItem3 != null) {
                if (ocrItem4 != null) {
                    int i = ocrItem3.f;
                    if (i != 0) {
                        int i2 = ocrItem4.f;
                        if (i2 != 0) {
                            if (i >= i2) {
                                if (i <= i2) {
                                    RectF rectF = ocrItem3.j;
                                    RectF rectF2 = ocrItem4.j;
                                    if (rectF != null) {
                                        if (rectF2 != null) {
                                            if (ocrItem3.h) {
                                                if (Math.abs(rectF.right - rectF2.right) <= ocrItem3.i / 2.0f && !OcrDetector.C(ocrItem3.g)) {
                                                    float f = rectF.top;
                                                    float f2 = rectF2.top;
                                                    if (f >= f2) {
                                                        if (f2 >= f) {
                                                            float f3 = rectF.right;
                                                            float f4 = rectF2.right;
                                                            if (f3 <= f4) {
                                                                if (f4 > f3) {
                                                                    return 1;
                                                                }
                                                                return 0;
                                                            }
                                                            return -1;
                                                        }
                                                        return 1;
                                                    }
                                                    return -1;
                                                }
                                                float f5 = rectF.right;
                                                float f6 = rectF2.right;
                                                if (f5 <= f6) {
                                                    if (f6 <= f5) {
                                                        float f7 = rectF.top;
                                                        float f8 = rectF2.top;
                                                        if (f7 >= f8) {
                                                            if (f8 < f7) {
                                                                return 1;
                                                            }
                                                            return 0;
                                                        }
                                                        return -1;
                                                    }
                                                    return 1;
                                                }
                                                return -1;
                                            }
                                            if (Math.abs(rectF.top - rectF2.top) <= ocrItem3.i / 2.0f && !OcrDetector.C(ocrItem3.g)) {
                                                float f9 = rectF.left;
                                                float f10 = rectF2.left;
                                                if (f9 >= f10) {
                                                    if (f10 >= f9) {
                                                        float f11 = rectF.top;
                                                        float f12 = rectF2.top;
                                                        if (f11 >= f12) {
                                                            if (f12 < f11) {
                                                                return 1;
                                                            }
                                                            return 0;
                                                        }
                                                        return -1;
                                                    }
                                                    return 1;
                                                }
                                                return -1;
                                            }
                                            float f13 = rectF.top;
                                            float f14 = rectF2.top;
                                            if (f13 >= f14) {
                                                if (f14 >= f13) {
                                                    float f15 = rectF.left;
                                                    float f16 = rectF2.left;
                                                    if (f15 < f16) {
                                                        return -1;
                                                    }
                                                    if (f16 < f15) {
                                                        return 1;
                                                    }
                                                    return 0;
                                                }
                                                return 1;
                                            }
                                            return -1;
                                        }
                                        return 1;
                                    }
                                    return -1;
                                }
                                return 1;
                            }
                            return -1;
                        }
                        return 1;
                    }
                    return -1;
                }
                return 1;
            }
            return -1;
        }
    }

    /* loaded from: classes3.dex */
    public static class SortRect implements Comparator<RectItem> {
        @Override // java.util.Comparator
        public final int compare(RectItem rectItem, RectItem rectItem2) {
            RectItem rectItem3 = rectItem;
            RectItem rectItem4 = rectItem2;
            if (rectItem3 != null) {
                if (rectItem4 != null) {
                    RectF rectF = rectItem3.m;
                    RectF rectF2 = rectItem4.m;
                    if (rectF != null) {
                        if (rectF2 != null) {
                            float f = rectF.top;
                            float f2 = rectF2.top;
                            if (f < f2) {
                                return -1;
                            }
                            if (f2 < f) {
                                return 1;
                            }
                            return 0;
                        }
                        return 1;
                    }
                    return -1;
                }
                return 1;
            }
            return -1;
        }
    }

    public static boolean B(int i, int i2, int i3) {
        if (Math.abs(i - i2) > 10 || Math.abs(i2 - i3) > 10 || Math.abs(i3 - i) > 10) {
            return false;
        }
        return true;
    }

    public static boolean C(float f) {
        float abs = Math.abs(f) % 90.0f;
        if (abs > 5.0f && abs < 85.0f) {
            return true;
        }
        return false;
    }

    public static String D(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder v = a.v(str, "/sbtrans_");
        v.append(PrefAlbum.A);
        v.append("_");
        v.append(PrefAlbum.y);
        v.append("_");
        v.append(PrefAlbum.B);
        v.append("_");
        v.append(PrefAlbum.C);
        return v.toString();
    }

    public static void a(OcrDetector ocrDetector) {
        if (ocrDetector.m != null) {
            Bitmap bitmap = ocrDetector.F;
            if (!MainUtil.f6(bitmap)) {
                ocrDetector.L(3);
                return;
            }
            if (ocrDetector.I != null && ocrDetector.J != null) {
                try {
                    Bitmap createBitmap = Bitmap.createBitmap(ocrDetector.B, ocrDetector.C, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    Paint paint = new Paint();
                    paint.setAntiAlias(true);
                    paint.setFilterBitmap(true);
                    if (ocrDetector.B != bitmap.getWidth()) {
                        float width = ocrDetector.B / bitmap.getWidth();
                        canvas.save();
                        canvas.scale(width, width);
                        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
                        canvas.restore();
                    } else {
                        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
                    }
                    ocrDetector.k(createBitmap);
                    ocrDetector.r();
                    ArrayList arrayList = ocrDetector.I;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        ocrDetector.m(createBitmap, canvas, (RectItem) obj);
                    }
                    ocrDetector.K = createBitmap;
                    ocrDetector.L = canvas;
                    return;
                } catch (Exception unused) {
                    ocrDetector.L(3);
                    return;
                } catch (OutOfMemoryError unused2) {
                    ocrDetector.L(3);
                    return;
                }
            }
            ocrDetector.L(3);
        }
    }

    public static void b(OcrDetector ocrDetector) {
        if (ocrDetector.m != null && ocrDetector.M && ocrDetector.O) {
            ocrDetector.M = false;
            ocrDetector.O = false;
            Bitmap bitmap = ocrDetector.K;
            Canvas canvas = ocrDetector.L;
            if (bitmap != null && canvas != null) {
                Bitmap bitmap2 = ocrDetector.F;
                if (!MainUtil.f6(bitmap2)) {
                    ocrDetector.L(3);
                    return;
                }
                if (ocrDetector.I != null && ocrDetector.J != null) {
                    try {
                        Bitmap createBitmap = Bitmap.createBitmap(ocrDetector.B, ocrDetector.C, Bitmap.Config.ARGB_8888);
                        Canvas canvas2 = new Canvas(createBitmap);
                        Paint paint = new Paint();
                        paint.setAntiAlias(true);
                        paint.setFilterBitmap(true);
                        if (ocrDetector.B != bitmap2.getWidth()) {
                            float width = ocrDetector.B / bitmap2.getWidth();
                            canvas2.save();
                            canvas2.scale(width, width);
                            canvas2.drawBitmap(bitmap2, 0.0f, 0.0f, paint);
                            canvas2.restore();
                        } else {
                            canvas2.drawBitmap(bitmap2, 0.0f, 0.0f, paint);
                        }
                        ArrayList arrayList = ocrDetector.J;
                        int size = arrayList.size();
                        int i = 0;
                        while (i < size) {
                            Object obj = arrayList.get(i);
                            i++;
                            ocrDetector.l((OcrItem) obj);
                        }
                        ArrayList arrayList2 = ocrDetector.J;
                        int size2 = arrayList2.size();
                        int i2 = 0;
                        while (i2 < size2) {
                            Object obj2 = arrayList2.get(i2);
                            i2++;
                            ocrDetector.g((OcrItem) obj2);
                        }
                        ArrayList arrayList3 = ocrDetector.J;
                        int size3 = arrayList3.size();
                        int i3 = 0;
                        while (i3 < size3) {
                            Object obj3 = arrayList3.get(i3);
                            i3++;
                            ocrDetector.g((OcrItem) obj3);
                        }
                        ArrayList arrayList4 = ocrDetector.J;
                        int size4 = arrayList4.size();
                        int i4 = 0;
                        while (i4 < size4) {
                            Object obj4 = arrayList4.get(i4);
                            i4++;
                            ocrDetector.o(canvas2, (OcrItem) obj4);
                        }
                        Paint paint2 = new Paint();
                        paint2.setAntiAlias(true);
                        paint2.setFilterBitmap(true);
                        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                        ArrayList arrayList5 = ocrDetector.I;
                        int size5 = arrayList5.size();
                        int i5 = 0;
                        while (i5 < size5) {
                            Object obj5 = arrayList5.get(i5);
                            i5++;
                            n(canvas2, (RectItem) obj5, paint2);
                        }
                        canvas.drawBitmap(createBitmap, 0.0f, 0.0f, paint);
                        ArrayList arrayList6 = ocrDetector.J;
                        int size6 = arrayList6.size();
                        int i6 = 0;
                        while (i6 < size6) {
                            Object obj6 = arrayList6.get(i6);
                            i6++;
                            p(canvas, (OcrItem) obj6);
                        }
                        ocrDetector.I(bitmap);
                        ocrDetector.L(0);
                        return;
                    } catch (Exception unused) {
                        ocrDetector.L(3);
                        return;
                    } catch (OutOfMemoryError unused2) {
                        ocrDetector.L(3);
                        return;
                    }
                }
                ocrDetector.L(3);
                return;
            }
            ocrDetector.L(3);
        }
    }

    /* JADX WARN: Type inference failed for: r12v10, types: [com.mycompany.app.ocr.OcrDetector$RectItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v6, types: [java.lang.Object, com.mycompany.app.ocr.OcrDetector$OcrItem] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, java.util.Comparator] */
    public static void c(OcrDetector ocrDetector) {
        List unmodifiableList;
        float f;
        boolean z;
        RectF rectF;
        RectF rectF2;
        int i;
        RectF rectF3;
        float f2;
        int i2;
        AbstractList<Text.Line> abstractList;
        RectF rectF4;
        boolean z2;
        float height;
        Text text = ocrDetector.H;
        if (text == null || (unmodifiableList = DesugarCollections.unmodifiableList(text.f12818a)) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = unmodifiableList.iterator();
        int i3 = 0;
        while (true) {
            f = 2.0f;
            z = true;
            if (!it.hasNext()) {
                break;
            }
            Text.TextBlock textBlock = (Text.TextBlock) it.next();
            if (textBlock != null) {
                synchronized (textBlock) {
                    abstractList = textBlock.d;
                }
                if (abstractList != null) {
                    for (Text.Line line : abstractList) {
                        if (line != null) {
                            Rect a2 = line.a();
                            String str = null;
                            if (a2 == null) {
                                rectF4 = null;
                            } else {
                                a2.sort();
                                rectF4 = new RectF(a2);
                                float f3 = rectF4.left;
                                float f4 = ocrDetector.D;
                                rectF4.left = f3 * f4;
                                rectF4.right *= f4;
                                rectF4.top *= f4;
                                rectF4.bottom *= f4;
                            }
                            if (rectF4 != null) {
                                String c2 = line.c();
                                if (!TextUtils.isEmpty(c2)) {
                                    str = c2.replace('\n', ' ').replace('|', ' ');
                                }
                                if (str != null) {
                                    float f5 = line.e;
                                    float abs = Math.abs(f5) % 180.0f;
                                    if (ocrDetector.G != 2 ? !(abs <= 70.0f || abs >= 110.0f) : !(abs <= 45.0f || abs >= 135.0f)) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        float f6 = f5 % 180.0f;
                                        if (f6 > 0.0f) {
                                            f5 = f6 - 90.0f;
                                        } else {
                                            f5 = f6 + 90.0f;
                                        }
                                        height = rectF4.width();
                                    } else {
                                        height = rectF4.height();
                                    }
                                    if (C(f5)) {
                                        float height2 = (rectF4.height() + rectF4.width()) / str.length();
                                        float f7 = ocrDetector.f17296c;
                                        if (height2 < f7) {
                                            height2 = f7;
                                        }
                                        if (height2 < height) {
                                            float f8 = (height - height2) / 2.0f;
                                            if (z2) {
                                                rectF4.left += f8;
                                                rectF4.right -= f8;
                                            } else {
                                                rectF4.top += f8;
                                                rectF4.bottom -= f8;
                                            }
                                            height = height2;
                                        }
                                    }
                                    ?? obj = new Object();
                                    obj.f17311a = i3;
                                    obj.g = f5;
                                    obj.h = z2;
                                    obj.i = height;
                                    obj.j = rectF4;
                                    obj.k = str;
                                    arrayList.add(obj);
                                    ?? obj2 = new Object();
                                    obj2.f17313a = i3;
                                    obj2.j = f5;
                                    obj2.k = z2;
                                    obj2.m = new RectF(rectF4);
                                    arrayList2.add(obj2);
                                    i3++;
                                }
                            }
                        }
                    }
                }
            }
        }
        int size = arrayList.size();
        if (size < 2) {
            for (int i4 = 0; i4 < size; i4++) {
                OcrItem ocrItem = (OcrItem) arrayList.get(i4);
                if (ocrItem != null) {
                    ocrItem.f = i4;
                }
            }
            ocrDetector.I = arrayList2;
            ocrDetector.J = arrayList;
            return;
        }
        int size2 = arrayList.size();
        int i5 = 1;
        int i6 = 0;
        while (i6 < size2) {
            Object obj3 = arrayList.get(i6);
            i6++;
            OcrItem ocrItem2 = (OcrItem) obj3;
            if (ocrItem2 != null) {
                int size3 = arrayList.size();
                int i7 = 0;
                while (i7 < size3) {
                    Object obj4 = arrayList.get(i7);
                    i7++;
                    OcrItem ocrItem3 = (OcrItem) obj4;
                    if (ocrItem3 != null && !ocrItem3.equals(ocrItem2) && ocrDetector.v(ocrItem2, ocrItem3, z) != 0) {
                        int i8 = ocrItem2.f;
                        if (i8 != 0 && (i2 = ocrItem3.f) != 0) {
                            if (i8 != i2) {
                                if (i8 < i2) {
                                    int size4 = arrayList.size();
                                    f2 = f;
                                    int i9 = 0;
                                    while (i9 < size4) {
                                        Object obj5 = arrayList.get(i9);
                                        i9++;
                                        OcrItem ocrItem4 = (OcrItem) obj5;
                                        if (ocrItem4.f == i2) {
                                            ocrItem4.f = i8;
                                        }
                                    }
                                } else {
                                    f2 = f;
                                    int size5 = arrayList.size();
                                    int i10 = 0;
                                    while (i10 < size5) {
                                        Object obj6 = arrayList.get(i10);
                                        i10++;
                                        OcrItem ocrItem5 = (OcrItem) obj6;
                                        if (ocrItem5.f == i8) {
                                            ocrItem5.f = i2;
                                        }
                                    }
                                }
                            }
                        } else {
                            f2 = f;
                            if (i8 != 0) {
                                ocrItem3.f = i8;
                            } else {
                                int i11 = ocrItem3.f;
                                if (i11 != 0) {
                                    ocrItem2.f = i11;
                                } else {
                                    ocrItem2.f = i5;
                                    ocrItem3.f = i5;
                                }
                            }
                        }
                        f = f2;
                        z = true;
                    }
                }
                i5++;
                z = true;
            }
        }
        float f9 = f;
        try {
            Collections.sort(arrayList, new Object());
        } catch (Exception unused) {
        }
        ArrayList arrayList3 = new ArrayList();
        int i12 = 0;
        while (i12 < size) {
            OcrItem ocrItem6 = (OcrItem) arrayList.get(i12);
            if (ocrItem6 != null) {
                for (int i13 = i12 + 1; i13 < size; i13++) {
                    OcrItem ocrItem7 = (OcrItem) arrayList.get(i13);
                    if (ocrItem7 == null || (i = ocrItem7.f) == 0 || i != ocrItem6.f) {
                        break;
                    }
                    RectF rectF5 = ocrItem6.j;
                    if (rectF5 != null && (rectF3 = ocrItem7.j) != null) {
                        ocrItem6.g = (ocrItem6.g + ocrItem7.g) / f9;
                        ocrItem6.i = (ocrItem6.i + ocrItem7.i) / f9;
                        rectF5.union(rectF3);
                        StringBuilder sb = new StringBuilder();
                        if (ocrItem6.k.length() > 1 && ocrItem6.k.endsWith("-")) {
                            String str2 = ocrItem6.k;
                            sb.append(str2.substring(0, str2.length() - 1));
                            sb.append(ocrItem7.k);
                        } else {
                            sb.append(ocrItem6.k);
                            sb.append(" ");
                            sb.append(ocrItem7.k);
                        }
                        ocrItem6.k = sb.toString();
                        ArrayList arrayList4 = ocrItem6.b;
                        if (arrayList4 == null) {
                            ArrayList arrayList5 = new ArrayList();
                            ocrItem6.b = arrayList5;
                            arrayList5.add(Integer.valueOf(ocrItem7.f17311a));
                        } else {
                            arrayList4.add(Integer.valueOf(ocrItem7.f17311a));
                        }
                        i12++;
                    }
                }
                arrayList3.add(ocrItem6);
            }
            i12++;
        }
        ArrayList arrayList6 = new ArrayList();
        int size6 = arrayList3.size();
        int i14 = 0;
        while (i14 < size6) {
            Object obj7 = arrayList3.get(i14);
            i14++;
            OcrItem ocrItem8 = (OcrItem) obj7;
            if (ocrItem8 != null) {
                int size7 = arrayList3.size();
                int i15 = 0;
                while (true) {
                    if (i15 < size7) {
                        Object obj8 = arrayList3.get(i15);
                        i15++;
                        OcrItem ocrItem9 = (OcrItem) obj8;
                        if (ocrItem9 != null && !ocrItem9.equals(ocrItem8) && (rectF = ocrItem8.j) != null && (rectF2 = ocrItem9.j) != null && rectF2.contains(rectF)) {
                            break;
                        }
                    } else {
                        arrayList6.add(ocrItem8);
                        break;
                    }
                }
            }
        }
        int size8 = arrayList6.size();
        for (int i16 = 0; i16 < size8; i16++) {
            OcrItem ocrItem10 = (OcrItem) arrayList6.get(i16);
            if (ocrItem10 != null) {
                ocrItem10.f = i16;
            }
        }
        ocrDetector.I = arrayList2;
        ocrDetector.J = arrayList6;
    }

    public static void d(OcrDetector ocrDetector, Text text) {
        ArrayList arrayList = ocrDetector.x;
        if (arrayList == null) {
            ocrDetector.L(3);
            return;
        }
        arrayList.add(text);
        int size = ocrDetector.x.size();
        if (size < 5) {
            ocrDetector.H(size);
            return;
        }
        String str = null;
        float f = 0.0f;
        Text text2 = null;
        for (int i = 0; i < size; i++) {
            try {
                Text text3 = (Text) ocrDetector.x.get(i);
                if (text3 != null) {
                    String str2 = Q[i];
                    float h = h(text3, str2);
                    if (h > f) {
                        text2 = text3;
                        str = str2;
                        f = h;
                    }
                }
            } catch (Exception unused) {
            }
        }
        if (!"en".equals(str) && !"hi".equals(str)) {
            if (!"zh".equals(str) && !"ja".equals(str)) {
                ocrDetector.G = 0;
            } else {
                ocrDetector.G = 2;
            }
        } else {
            ocrDetector.G = 1;
        }
        ocrDetector.K(text2);
    }

    public static void e(OcrDetector ocrDetector) {
        if (ocrDetector.n == null) {
            return;
        }
        ArrayList arrayList = ocrDetector.J;
        if (arrayList != null && !arrayList.isEmpty()) {
            MainTransOcr mainTransOcr = ocrDetector.N;
            if (mainTransOcr != null) {
                mainTransOcr.e(ocrDetector.J);
                return;
            } else {
                ocrDetector.N = new MainTransOcr(ocrDetector.m, ocrDetector.n, ocrDetector.J, new MainTransOcr.TransOcrListener() { // from class: com.mycompany.app.ocr.OcrDetector.7
                    @Override // com.mycompany.app.main.MainTransOcr.TransOcrListener
                    public final void a(boolean z) {
                        OcrDetector ocrDetector2 = OcrDetector.this;
                        if (!z) {
                            ocrDetector2.L(3);
                        } else {
                            ocrDetector2.O = true;
                            OcrDetector.b(ocrDetector2);
                        }
                    }

                    @Override // com.mycompany.app.main.MainTransOcr.TransOcrListener
                    public final void b() {
                        OcrDetector ocrDetector2 = OcrDetector.this;
                        MainTransOcr mainTransOcr2 = ocrDetector2.N;
                        if (mainTransOcr2 != null) {
                            mainTransOcr2.b();
                            ocrDetector2.N = null;
                        }
                        ocrDetector2.L(3);
                    }
                });
                return;
            }
        }
        ocrDetector.L(1);
    }

    public static void f(RectItem rectItem, ColorItem colorItem, boolean z) {
        if (z) {
            rectItem.b += colorItem.f17309a;
            rectItem.f17314c += colorItem.b;
            rectItem.d += colorItem.f17310c;
            rectItem.e += colorItem.d;
            return;
        }
        rectItem.b += colorItem.e;
        rectItem.f17314c += colorItem.f;
        rectItem.d += colorItem.g;
        rectItem.e += colorItem.h;
    }

    public static float h(Text text, String str) {
        AbstractList<Text.Line> abstractList;
        float f;
        List<Text.TextBlock> unmodifiableList = DesugarCollections.unmodifiableList(text.f12818a);
        if (unmodifiableList != null) {
            HashMap hashMap = new HashMap();
            for (Text.TextBlock textBlock : unmodifiableList) {
                if (textBlock != null) {
                    synchronized (textBlock) {
                        abstractList = textBlock.d;
                    }
                    if (abstractList != null) {
                        for (Text.Line line : abstractList) {
                            if (line != null) {
                                String b = line.b();
                                if (!TextUtils.isEmpty(b) && !b.startsWith("und")) {
                                    if (hashMap.containsKey(b)) {
                                        f = ((Float) hashMap.get(b)).floatValue();
                                    } else {
                                        f = 0.0f;
                                    }
                                    hashMap.put(b, Float.valueOf(f + line.d));
                                }
                            }
                        }
                    }
                }
            }
            Set<String> keySet = hashMap.keySet();
            if (keySet != null) {
                String str2 = null;
                float f2 = 0.0f;
                for (String str3 : keySet) {
                    float floatValue = ((Float) hashMap.get(str3)).floatValue();
                    if (floatValue > f2) {
                        str2 = str3;
                        f2 = floatValue;
                    }
                }
                if (str2 != null) {
                    if ("en".equals(str)) {
                        int i = 1;
                        while (true) {
                            String[] strArr = Q;
                            if (i >= 5) {
                                break;
                            }
                            if (str2.equals(strArr[i])) {
                                break;
                            }
                            i++;
                        }
                        return f2;
                    }
                    if (!str2.equals(str)) {
                        break;
                    }
                    return f2;
                }
            }
        }
        return 0.0f;
    }

    public static void n(Canvas canvas, RectItem rectItem, Paint paint) {
        RectF rectF;
        if (rectItem == null || (rectF = rectItem.m) == null) {
            return;
        }
        if (C(rectItem.j)) {
            canvas.save();
            canvas.rotate(rectItem.j, (rectF.width() / 2.0f) + rectF.left, (rectF.height() / 2.0f) + rectF.top);
            float f = rectItem.n;
            canvas.drawRoundRect(rectF, f, f, paint);
            canvas.restore();
            return;
        }
        float f2 = rectItem.n;
        canvas.drawRoundRect(rectF, f2, f2, paint);
    }

    public static void p(Canvas canvas, OcrItem ocrItem) {
        RectF rectF;
        if (ocrItem != null && ocrItem.n != null && ocrItem.o != null && (rectF = ocrItem.j) != null) {
            canvas.save();
            canvas.translate(rectF.left, rectF.top);
            if (C(ocrItem.g)) {
                canvas.rotate(ocrItem.g, rectF.width() / 2.0f, rectF.height() / 2.0f);
            }
            ocrItem.n.draw(canvas);
            ocrItem.o.draw(canvas);
            canvas.restore();
        }
    }

    public static int u(float f, float f2, float f3, float f4, float f5, float f6, int i, int i2, int i3, boolean z) {
        if ((f3 <= f4 && f5 >= f6) || (f3 >= f4 && f5 <= f6)) {
            return i;
        }
        if (f5 > f4 && f5 < f6) {
            if (z) {
                float f7 = f5 - f4;
                if (f7 < f4 - f3 || f7 < f - f2) {
                    return 0;
                }
            }
            return i | i2;
        }
        if (f3 > f4 && f3 < f6) {
            if (z) {
                float f8 = f6 - f3;
                if (f8 < f5 - f6 || f8 < f - f2) {
                    return 0;
                }
            }
            return i | i3;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0007, code lost:
    
        if (r2 > 9) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static float x(int r2) {
        /*
            r0 = 1
            if (r2 >= r0) goto L5
        L3:
            r2 = r0
            goto La
        L5:
            r0 = 9
            if (r2 <= r0) goto La
            goto L3
        La:
            float r2 = (float) r2
            r0 = 1056964608(0x3f000000, float:0.5)
            r1 = 1065353216(0x3f800000, float:1.0)
            float r2 = android.support.v4.media.a.a(r2, r1, r0, r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.ocr.OcrDetector.x(int):float");
    }

    public final boolean A(int i, int i2, int i3) {
        if (this.h == null) {
            this.h = new double[3];
        }
        ColorUtils.c(i, i2, i3, this.h);
        if (this.h[1] / 100.0d < 0.5d) {
            return true;
        }
        return false;
    }

    public final void E() {
        y();
        N();
        this.v = 0;
        this.w = null;
        this.x = null;
        G();
        MainTransOcr mainTransOcr = this.N;
        if (mainTransOcr != null) {
            mainTransOcr.b();
            this.N = null;
        }
        this.m = null;
        this.n = null;
        this.o = null;
        this.s = null;
    }

    public final void F() {
        Handler handler = this.p;
        if (handler != null) {
            MainUtil.R6(handler);
            this.p = null;
        }
    }

    public final void G() {
        this.y = null;
        this.z = null;
        this.A = null;
        this.B = 0;
        this.C = 0;
        this.D = 0.0f;
        this.E = 0.0f;
        this.F = null;
        this.G = 0;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
    }

    public final void H(final int i) {
        if (this.m != null) {
            N();
            ViewGroup viewGroup = this.n;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.ocr.OcrDetector.3
                @Override // java.lang.Runnable
                public final void run() {
                    TextRecognizerOptionsInterface textRecognizerOptions;
                    OcrDetector ocrDetector = OcrDetector.this;
                    if (ocrDetector.m == null) {
                        return;
                    }
                    int i2 = i;
                    if (i2 == 1) {
                        textRecognizerOptions = new ChineseTextRecognizerOptions();
                    } else if (i2 == 2) {
                        textRecognizerOptions = new DevanagariTextRecognizerOptions();
                    } else if (i2 == 3) {
                        textRecognizerOptions = new JapaneseTextRecognizerOptions();
                    } else if (i2 == 4) {
                        textRecognizerOptions = new KoreanTextRecognizerOptions();
                    } else {
                        textRecognizerOptions = new TextRecognizerOptions();
                    }
                    zzo zzoVar = (zzo) MlKitContext.c().a(zzo.class);
                    TextRecognizerTaskWithResource textRecognizerTaskWithResource = (TextRecognizerTaskWithResource) zzoVar.f12829a.b(textRecognizerOptions);
                    ExecutorSelector executorSelector = zzoVar.b;
                    Executor c2 = textRecognizerOptions.c();
                    if (c2 != null) {
                        executorSelector.getClass();
                    } else {
                        c2 = (Executor) executorSelector.f12767a.get();
                    }
                    ocrDetector.u = new zzn(textRecognizerTaskWithResource, c2, zzun.b(textRecognizerOptions.b()), textRecognizerOptions);
                    ocrDetector.m.m0(new Runnable() { // from class: com.mycompany.app.ocr.OcrDetector.3.1
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v2, types: [java.util.concurrent.Executor, com.mycompany.app.ocr.OcrExecutor, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final OcrDetector ocrDetector2 = OcrDetector.this;
                            if (ocrDetector2.m != null && ocrDetector2.u != null) {
                                try {
                                    InputImage inputImage = ocrDetector2.w;
                                    if (inputImage == null) {
                                        Bitmap t = ocrDetector2.t(ocrDetector2.A);
                                        ocrDetector2.F = t;
                                        if (MainUtil.f6(t)) {
                                            inputImage = InputImage.a(ocrDetector2.F);
                                            ocrDetector2.w = inputImage;
                                        }
                                    }
                                    ocrDetector2.F();
                                    Handler handler = new Handler(Looper.getMainLooper());
                                    ocrDetector2.p = handler;
                                    handler.postDelayed(new Runnable() { // from class: com.mycompany.app.ocr.OcrDetector.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            OcrDetector ocrDetector3 = OcrDetector.this;
                                            if (ocrDetector3.p == null) {
                                                return;
                                            }
                                            ocrDetector3.F();
                                            ocrDetector3.L(3);
                                        }
                                    }, 3000L);
                                    Task e = ocrDetector2.u.e(inputImage);
                                    if (e != 0) {
                                        Executor executor = TaskExecutors.f11606a;
                                        ?? obj = new Object();
                                        obj.f17315c = executor;
                                        ocrDetector2.t = obj;
                                        e.h(obj, new OnSuccessListener<Text>() { // from class: com.mycompany.app.ocr.OcrDetector.5
                                            @Override // com.google.android.gms.tasks.OnSuccessListener
                                            public final void onSuccess(Object obj2) {
                                                Text text = (Text) obj2;
                                                final OcrDetector ocrDetector3 = OcrDetector.this;
                                                ocrDetector3.F();
                                                ocrDetector3.v++;
                                                if (ocrDetector3.P != null) {
                                                    ViewGroup viewGroup2 = ocrDetector3.n;
                                                    if (viewGroup2 == null) {
                                                        return;
                                                    }
                                                    viewGroup2.post(new Runnable() { // from class: com.mycompany.app.ocr.OcrDetector.9
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            int i3;
                                                            OcrDetector ocrDetector4 = OcrDetector.this;
                                                            DialogOcrLoad dialogOcrLoad = ocrDetector4.P;
                                                            if (dialogOcrLoad != null) {
                                                                if (PrefAlbum.A == 5 && (i3 = ocrDetector4.v) < 5) {
                                                                    MyProgressBar myProgressBar = dialogOcrLoad.e0;
                                                                    if (myProgressBar != null) {
                                                                        dialogOcrLoad.g0 = i3;
                                                                        myProgressBar.setProgress(i3);
                                                                    }
                                                                    ocrDetector4.H(ocrDetector4.v);
                                                                    return;
                                                                }
                                                                dialogOcrLoad.C();
                                                            }
                                                            ocrDetector4.N();
                                                        }
                                                    });
                                                    return;
                                                }
                                                if (PrefAlbum.A == 5) {
                                                    OcrDetector.d(ocrDetector3, text);
                                                } else {
                                                    ocrDetector3.K(text);
                                                }
                                            }
                                        });
                                        e.f(ocrDetector2.t, new OnFailureListener() { // from class: com.mycompany.app.ocr.OcrDetector.4
                                            @Override // com.google.android.gms.tasks.OnFailureListener
                                            public final void c(Exception exc) {
                                                final OcrDetector ocrDetector3 = OcrDetector.this;
                                                ocrDetector3.F();
                                                String message = exc.getMessage();
                                                if (!TextUtils.isEmpty(message)) {
                                                    String lowerCase = message.toLowerCase(Locale.US);
                                                    if (lowerCase.contains("wait") || lowerCase.contains("download")) {
                                                        ViewGroup viewGroup2 = ocrDetector3.n;
                                                        if (viewGroup2 == null) {
                                                            return;
                                                        }
                                                        viewGroup2.post(new Runnable() { // from class: com.mycompany.app.ocr.OcrDetector.8
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                final OcrDetector ocrDetector4 = OcrDetector.this;
                                                                DialogOcrLoad dialogOcrLoad = ocrDetector4.P;
                                                                if (dialogOcrLoad != null) {
                                                                    dialogOcrLoad.D();
                                                                } else if (ocrDetector4.m != null && dialogOcrLoad == null) {
                                                                    ocrDetector4.y();
                                                                    OcrListener ocrListener = ocrDetector4.o;
                                                                    int i3 = 0;
                                                                    if (ocrListener != null) {
                                                                        ocrListener.b(false);
                                                                    }
                                                                    int i4 = 5;
                                                                    if (PrefAlbum.A == 5) {
                                                                        i3 = ocrDetector4.v;
                                                                    } else {
                                                                        i4 = 0;
                                                                    }
                                                                    DialogOcrLoad dialogOcrLoad2 = new DialogOcrLoad(ocrDetector4.m, i3, i4, new DialogOcrLoad.OcrLoadListener() { // from class: com.mycompany.app.ocr.OcrDetector.10
                                                                        @Override // com.mycompany.app.dialog.DialogOcrLoad.OcrLoadListener
                                                                        public final void a() {
                                                                            OcrDetector.this.L(2);
                                                                        }

                                                                        @Override // com.mycompany.app.dialog.DialogOcrLoad.OcrLoadListener
                                                                        public final void b() {
                                                                            OcrDetector ocrDetector5 = OcrDetector.this;
                                                                            OcrListener ocrListener2 = ocrDetector5.o;
                                                                            if (ocrListener2 != null) {
                                                                                ocrListener2.b(true);
                                                                            }
                                                                            ocrDetector5.v = 0;
                                                                            if (PrefAlbum.A == 5) {
                                                                                ocrDetector5.x = new ArrayList();
                                                                            } else {
                                                                                ocrDetector5.x = null;
                                                                            }
                                                                            ocrDetector5.H(PrefAlbum.A);
                                                                        }

                                                                        @Override // com.mycompany.app.dialog.DialogOcrLoad.OcrLoadListener
                                                                        public final void c() {
                                                                            int i5 = PrefAlbum.A;
                                                                            OcrDetector ocrDetector5 = OcrDetector.this;
                                                                            if (i5 == 5) {
                                                                                ocrDetector5.H(ocrDetector5.v);
                                                                            } else {
                                                                                ocrDetector5.H(i5);
                                                                            }
                                                                        }
                                                                    });
                                                                    ocrDetector4.P = dialogOcrLoad2;
                                                                    dialogOcrLoad2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.ocr.OcrDetector.11
                                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                                            OcrDetector.this.y();
                                                                        }
                                                                    });
                                                                }
                                                                ocrDetector4.N();
                                                            }
                                                        });
                                                        return;
                                                    }
                                                }
                                                if (PrefAlbum.A == 5) {
                                                    OcrDetector.d(ocrDetector3, null);
                                                } else {
                                                    ocrDetector3.L(3);
                                                }
                                            }
                                        });
                                        return;
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            ocrDetector2.L(3);
                        }
                    });
                }
            });
        }
    }

    public final void I(Bitmap bitmap) {
        if (!TextUtils.isEmpty(this.z) && MainUtil.f6(bitmap)) {
            ImageLoader.f().g().b(MemoryCacheUtils.a(512, this.z), bitmap);
            try {
                ImageLoader.f().e().a(this.z, bitmap);
            } catch (Exception unused) {
            }
        }
    }

    public final void J() {
        this.q = PrefAlbum.C;
        if (this.s == null) {
            Paint paint = new Paint();
            this.s = paint;
            paint.setStyle(Paint.Style.FILL);
        }
    }

    public final void K(Text text) {
        MainActivity mainActivity = this.m;
        if (mainActivity == null) {
            return;
        }
        this.v = 0;
        this.w = null;
        this.x = null;
        this.A = null;
        this.H = text;
        this.M = false;
        this.O = false;
        if (text == null) {
            L(1);
        } else {
            mainActivity.m0(new Runnable() { // from class: com.mycompany.app.ocr.OcrDetector.6
                /* JADX WARN: Removed duplicated region for block: B:12:0x001e A[Catch: Exception -> 0x0053, TryCatch #0 {Exception -> 0x0053, blocks: (B:3:0x0003, B:10:0x0015, B:12:0x001e, B:13:0x0022, B:17:0x0010, B:18:0x0013), top: B:2:0x0003 }] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r5 = this;
                        com.mycompany.app.ocr.OcrDetector r0 = com.mycompany.app.ocr.OcrDetector.this
                        r1 = 3
                        int r2 = com.mycompany.app.pref.PrefAlbum.A     // Catch: java.lang.Exception -> L53
                        r3 = 1
                        if (r2 == 0) goto L13
                        r4 = 2
                        if (r2 != r4) goto Lc
                        goto L13
                    Lc:
                        if (r2 == r3) goto L10
                        if (r2 != r1) goto L15
                    L10:
                        r0.G = r4     // Catch: java.lang.Exception -> L53
                        goto L15
                    L13:
                        r0.G = r3     // Catch: java.lang.Exception -> L53
                    L15:
                        float r2 = r0.E     // Catch: java.lang.Exception -> L53
                        r4 = 0
                        int r2 = java.lang.Float.compare(r2, r4)     // Catch: java.lang.Exception -> L53
                        if (r2 != 0) goto L22
                        r2 = 1065353216(0x3f800000, float:1.0)
                        r0.E = r2     // Catch: java.lang.Exception -> L53
                    L22:
                        float r2 = r0.E     // Catch: java.lang.Exception -> L53
                        r4 = 1109393408(0x42200000, float:40.0)
                        float r4 = r4 * r2
                        r0.f17295a = r4     // Catch: java.lang.Exception -> L53
                        r4 = 1103101952(0x41c00000, float:24.0)
                        float r4 = r4 * r2
                        r0.b = r4     // Catch: java.lang.Exception -> L53
                        r4 = 1090519040(0x41000000, float:8.0)
                        float r4 = r4 * r2
                        r0.f17296c = r4     // Catch: java.lang.Exception -> L53
                        r4 = 1101004800(0x41a00000, float:20.0)
                        float r4 = r4 * r2
                        r0.d = r4     // Catch: java.lang.Exception -> L53
                        r4 = 1112014848(0x42480000, float:50.0)
                        float r4 = r4 * r2
                        r0.e = r4     // Catch: java.lang.Exception -> L53
                        r4 = 1086324736(0x40c00000, float:6.0)
                        float r2 = r2 * r4
                        r0.f = r2     // Catch: java.lang.Exception -> L53
                        r0.g = r2     // Catch: java.lang.Exception -> L53
                        com.mycompany.app.ocr.OcrDetector.c(r0)     // Catch: java.lang.Exception -> L53
                        com.mycompany.app.ocr.OcrDetector.e(r0)     // Catch: java.lang.Exception -> L53
                        com.mycompany.app.ocr.OcrDetector.a(r0)     // Catch: java.lang.Exception -> L53
                        r0.M = r3     // Catch: java.lang.Exception -> L53
                        com.mycompany.app.ocr.OcrDetector.b(r0)     // Catch: java.lang.Exception -> L53
                        return
                    L53:
                        r0.L(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.ocr.OcrDetector.AnonymousClass6.run():void");
                }
            });
        }
    }

    public final void L(final int i) {
        ViewGroup viewGroup = this.n;
        if (viewGroup == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.mycompany.app.ocr.OcrDetector.2
            @Override // java.lang.Runnable
            public final void run() {
                OcrDetector ocrDetector = OcrDetector.this;
                OcrListener ocrListener = ocrDetector.o;
                if (ocrListener != null) {
                    ocrListener.c(i, ocrDetector.y, ocrDetector.z);
                }
                ocrDetector.y();
                ocrDetector.N();
                ocrDetector.v = 0;
                ocrDetector.w = null;
                ocrDetector.x = null;
                ocrDetector.G();
            }
        });
    }

    public final void M(String str, String str2, Bitmap bitmap) {
        if (this.m == null) {
            return;
        }
        this.v = 0;
        this.w = null;
        this.x = null;
        G();
        this.y = str;
        this.z = str2;
        this.A = bitmap;
        if (PrefAlbum.A == 5) {
            this.x = new ArrayList();
        }
        H(PrefAlbum.A);
    }

    public final void N() {
        F();
        OcrExecutor ocrExecutor = this.t;
        if (ocrExecutor != null) {
            ocrExecutor.f17315c = null;
            this.t = null;
        }
        zzn zznVar = this.u;
        if (zznVar != null) {
            zznVar.close();
            this.u = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(com.mycompany.app.ocr.OcrDetector.OcrItem r9) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.ocr.OcrDetector.g(com.mycompany.app.ocr.OcrDetector$OcrItem):void");
    }

    public final void i(OcrItem ocrItem) {
        ArrayList q;
        boolean z;
        if (ocrItem != null && (q = q(ocrItem)) != null && !q.isEmpty()) {
            int size = q.size();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (i10 < size) {
                Object obj = q.get(i10);
                i10++;
                RectItem rectItem = (RectItem) obj;
                if (rectItem != null) {
                    if (rectItem.f) {
                        i7 += rectItem.b;
                        i8 += rectItem.f17314c;
                        i9 += rectItem.d;
                        i2 += rectItem.e;
                    } else {
                        i4 += rectItem.b;
                        i5 += rectItem.f17314c;
                        i6 += rectItem.d;
                        i3 += rectItem.e;
                    }
                }
            }
            if (i2 > i3) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                i4 = i7;
                i5 = i8;
                i6 = i9;
            } else {
                i2 = i3;
            }
            if (i2 != 0) {
                float f = i2;
                int i11 = (int) (i4 / f);
                int i12 = (int) (i5 / f);
                int i13 = (int) (i6 / f);
                int rgb = Color.rgb(i11, i12, i13);
                boolean B = B(i11, i12, i13);
                int size2 = q.size();
                while (i < size2) {
                    Object obj2 = q.get(i);
                    i++;
                    RectItem rectItem2 = (RectItem) obj2;
                    if (rectItem2 != null) {
                        rectItem2.f = z;
                        rectItem2.g = B;
                        rectItem2.i = rgb;
                        rectItem2.l = ocrItem.i;
                    }
                }
                if (ocrItem.i < this.f17295a) {
                    ocrItem.f17312c = -1;
                    ocrItem.d = -16777216;
                } else if (z) {
                    ocrItem.f17312c = -16777216;
                    ocrItem.d = -1;
                } else {
                    ocrItem.f17312c = -1;
                    ocrItem.d = -16777216;
                }
                ocrItem.e = rgb;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.mycompany.app.ocr.OcrDetector$ColorItem] */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.mycompany.app.ocr.OcrDetector] */
    /* JADX WARN: Type inference failed for: r10v2, types: [com.mycompany.app.ocr.OcrDetector$ColorItem] */
    /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.Object, com.mycompany.app.ocr.OcrDetector$ColorItem] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v6, types: [com.mycompany.app.ocr.OcrDetector$ColorItem] */
    /* JADX WARN: Type inference failed for: r9v2, types: [com.mycompany.app.ocr.OcrDetector$ColorItem] */
    public final void j(Bitmap bitmap, RectItem rectItem) {
        RectF rectF;
        int i;
        ?? r1;
        boolean z;
        boolean z2;
        boolean z3;
        int i2;
        boolean z4;
        OcrDetector ocrDetector = this;
        if (rectItem == null || (rectF = rectItem.m) == null || bitmap == null) {
            return;
        }
        boolean z5 = false;
        int max = Math.max(Math.round(rectF.left), 0);
        int min = Math.min(Math.round(rectF.right), ocrDetector.B);
        int max2 = Math.max(Math.round(rectF.top), 0);
        int min2 = Math.min(Math.round(rectF.bottom), ocrDetector.C);
        float width = rectF.width();
        float height = rectF.height();
        int i3 = 8;
        int i4 = 4;
        if (width > height * 2.0f) {
            i = 8;
            i3 = 4;
        } else {
            float f = width * 2.0f;
            i = 4;
            if (height <= f) {
                i3 = 4;
            }
        }
        ?? obj = new Object();
        Object obj2 = new Object();
        Object obj3 = new Object();
        ?? obj4 = new Object();
        boolean z6 = true;
        int i5 = 1;
        OcrDetector ocrDetector2 = ocrDetector;
        ColorItem colorItem = obj;
        while (i5 < i4) {
            boolean z7 = z6;
            int i6 = max;
            int i7 = min;
            int i8 = i5;
            ocrDetector2.s(i6, i7, max2 - i5, i, bitmap, colorItem);
            ?? r0 = obj2;
            ColorItem colorItem2 = colorItem;
            ?? r02 = this;
            r02.s(i6, i7, min2 + i8, i, bitmap, r0);
            int i9 = i;
            int i10 = i6 - i8;
            int i11 = max2;
            int i12 = min2;
            int i13 = i3;
            ?? r6 = obj3;
            r02.w(i11, i12, i10, i13, bitmap, r6);
            r02.w(i11, i12, i7 + i8, i13, bitmap, obj4);
            i5 = i8 + 1;
            obj3 = r6;
            colorItem = colorItem2;
            min = i7;
            i = i9;
            min2 = i12;
            obj2 = r0;
            max = i6;
            max2 = i11;
            z6 = z7;
            i4 = 4;
            ocrDetector2 = r02;
        }
        boolean z8 = z6;
        ?? r9 = obj2;
        ?? r10 = obj3;
        ColorItem colorItem3 = colorItem;
        if (colorItem3.d > colorItem3.h) {
            r1 = z8;
        } else {
            r1 = 0;
        }
        if (r9.d > r9.h) {
            z = z8;
        } else {
            z = false;
        }
        if (r10.d > r10.h) {
            z2 = z8;
        } else {
            z2 = false;
        }
        if (obj4.d > obj4.h) {
            z3 = z8;
        } else {
            z3 = false;
        }
        int i14 = r1 ^ 1;
        if (z) {
            i2 = r1 + 1;
        } else {
            i14++;
            i2 = r1;
        }
        if (z2) {
            i2++;
        } else {
            i14++;
        }
        if (z3) {
            i2++;
        } else {
            i14++;
        }
        if (i2 > i14) {
            z4 = z8;
        } else {
            z4 = false;
        }
        rectItem.f = z4;
        if (z4) {
            if (r1 != 0) {
                f(rectItem, colorItem3, z8);
            }
            if (z) {
                f(rectItem, r9, z8);
            }
            if (z2) {
                f(rectItem, r10, z8);
            }
            if (z3) {
                f(rectItem, obj4, z8);
            }
        } else {
            if (r1 == 0) {
                f(rectItem, colorItem3, false);
            }
            if (!z) {
                f(rectItem, r9, false);
            }
            if (!z2) {
                f(rectItem, r10, false);
            }
            if (!z3) {
                f(rectItem, obj4, false);
            }
        }
        if (colorItem3.i || r9.i || r10.i || obj4.i) {
            z5 = z8;
        }
        rectItem.h = z5;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.Comparator] */
    public final void k(Bitmap bitmap) {
        ArrayList q;
        try {
            try {
                Collections.sort(this.I, new Object());
            } catch (Exception unused) {
            }
            int i = 0;
            if (this.q == 2) {
                ArrayList arrayList = this.I;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    j(bitmap, (RectItem) obj);
                }
                ArrayList arrayList2 = this.J;
                int size2 = arrayList2.size();
                while (i < size2) {
                    Object obj2 = arrayList2.get(i);
                    i++;
                    i((OcrItem) obj2);
                }
                return;
            }
            ArrayList arrayList3 = this.J;
            int size3 = arrayList3.size();
            int i3 = 0;
            while (i3 < size3) {
                Object obj3 = arrayList3.get(i3);
                i3++;
                OcrItem ocrItem = (OcrItem) obj3;
                if (ocrItem != null && (q = q(ocrItem)) != null && !q.isEmpty()) {
                    int size4 = q.size();
                    int i4 = 0;
                    while (i4 < size4) {
                        Object obj4 = q.get(i4);
                        i4++;
                        RectItem rectItem = (RectItem) obj4;
                        if (rectItem != null) {
                            rectItem.l = ocrItem.i;
                        }
                    }
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x0118, code lost:
    
        if (r8 == 0) goto L60;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0199  */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.Object, com.mycompany.app.ocr.OcrDetector$OcrItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(com.mycompany.app.ocr.OcrDetector.OcrItem r21) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.ocr.OcrDetector.l(com.mycompany.app.ocr.OcrDetector$OcrItem):void");
    }

    public final void m(Bitmap bitmap, Canvas canvas, RectItem rectItem) {
        RectF rectF;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (rectItem != null && (rectF = rectItem.m) != null) {
            int i8 = this.q;
            int i9 = -1;
            if (i8 != 0) {
                if (i8 == 1) {
                    i9 = -16777216;
                } else {
                    int i10 = rectItem.i;
                    if (i10 != 0) {
                        i9 = i10;
                    }
                }
            }
            boolean C = C(rectItem.j);
            if (!C && !rectItem.k && rectItem.h && this.q == 2) {
                if (bitmap != null) {
                    int max = Math.max(Math.round(rectF.left), 0);
                    int min = Math.min(Math.round(rectF.right), this.B);
                    int max2 = Math.max(Math.round(rectF.top), 0);
                    int min2 = Math.min(Math.round(rectF.bottom), this.C);
                    int i11 = min - max;
                    if (i11 == 0) {
                        i11 = 1;
                    }
                    int[] iArr = this.l;
                    if (iArr != null && iArr.length >= i11) {
                        int i12 = i11 - 1;
                        float f = this.f;
                        if (rectF.width() > rectF.height() * 2.0f) {
                            i = 8;
                        } else {
                            i = 4;
                        }
                        int red = Color.red(i9);
                        int green = Color.green(i9);
                        int blue = Color.blue(i9);
                        int i13 = 1;
                        int min3 = Math.min(Math.round(max2 + f), min2);
                        int i14 = i;
                        int i15 = max2;
                        int i16 = i15;
                        int i17 = 0;
                        while (true) {
                            if (i16 < min3) {
                                int i18 = min3;
                                i2 = max2;
                                i3 = min2;
                                i4 = i11;
                                i5 = i12;
                                int i19 = 0;
                                int i20 = 0;
                                int i21 = 0;
                                int i22 = 0;
                                for (int i23 = max; i23 < min; i23 += i14) {
                                    int pixel = bitmap.getPixel(i23, i16);
                                    i20 = Color.red(pixel) + i20;
                                    i22 = Color.green(pixel) + i22;
                                    i21 = Color.blue(pixel) + i21;
                                    i19++;
                                }
                                float f2 = i19;
                                int i24 = (int) (i20 / f2);
                                int i25 = (int) (i22 / f2);
                                int i26 = (int) (i21 / f2);
                                if (red == i24 && green == i25 && blue == i26) {
                                    break;
                                }
                                int i27 = red - i24;
                                int i28 = green - i25;
                                int i29 = blue - i26;
                                int i30 = (i29 * i29) + (i28 * i28) + (i27 * i27);
                                if (i16 == i15) {
                                    i17 = i30;
                                } else if (i30 < i17) {
                                    i17 = i30;
                                    i15 = i16;
                                }
                                i16++;
                                min3 = i18;
                                max2 = i2;
                                min2 = i3;
                                i12 = i5;
                                i11 = i4;
                            } else {
                                i2 = max2;
                                i3 = min2;
                                i4 = i11;
                                i5 = i12;
                                i16 = i15;
                                break;
                            }
                        }
                        int red2 = Color.red(i9);
                        int green2 = Color.green(i9);
                        int blue2 = Color.blue(i9);
                        boolean z = false;
                        int i31 = 0;
                        int i32 = 0;
                        int i33 = 0;
                        int i34 = i9;
                        int i35 = max;
                        while (i35 < min) {
                            int pixel2 = bitmap.getPixel(i35, i16);
                            int i36 = red2;
                            red2 = Color.red(pixel2);
                            int i37 = green2;
                            green2 = Color.green(pixel2);
                            int i38 = blue2;
                            blue2 = Color.blue(pixel2);
                            int i39 = i35 - max;
                            int i40 = i35;
                            this.l[i39] = 0;
                            boolean z2 = z;
                            if (rectItem.f == A(red2, green2, blue2) && rectItem.g == B(red2, green2, blue2)) {
                                if (!z2) {
                                    i31 = red2;
                                    i32 = green2;
                                    i33 = blue2;
                                    i34 = pixel2;
                                    z = true;
                                    this.i[i39] = red2;
                                    this.j[i39] = green2;
                                    this.k[i39] = blue2;
                                    i35 = i40 + 1;
                                }
                            } else {
                                if (!z2) {
                                    this.l[i39] = 1;
                                }
                                red2 = i36;
                                green2 = i37;
                                blue2 = i38;
                            }
                            z = z2;
                            this.i[i39] = red2;
                            this.j[i39] = green2;
                            this.k[i39] = blue2;
                            i35 = i40 + 1;
                        }
                        if (i34 != i9) {
                            int i41 = 0;
                            int i42 = i4;
                            while (i41 < i42) {
                                int i43 = i13;
                                if (this.l[i41] != i43) {
                                    break;
                                }
                                this.i[i41] = i31;
                                this.j[i41] = i32;
                                this.k[i41] = i33;
                                i41++;
                                i13 = i43;
                            }
                        }
                        for (int i44 = max; i44 < min; i44++) {
                            int i45 = i44 - max;
                            int i46 = i45 - 30;
                            int i47 = i45 + 31;
                            int i48 = 0;
                            int i49 = 0;
                            int i50 = 0;
                            int i51 = 0;
                            while (i46 < i47) {
                                if (i46 < 0) {
                                    i7 = 0;
                                    i6 = i5;
                                } else {
                                    i6 = i5;
                                    if (i46 > i6) {
                                        i7 = i6;
                                    } else {
                                        i7 = i46;
                                    }
                                }
                                i49 += this.i[i7];
                                i50 += this.j[i7];
                                i51 += this.k[i7];
                                i48++;
                                i46 += 3;
                                i5 = i6;
                            }
                            float f3 = i48;
                            this.l[i45] = Color.rgb((int) (i49 / f3), (int) (i50 / f3), (int) (i51 / f3));
                        }
                        int i52 = i3;
                        for (int i53 = i2; i53 < i52; i53++) {
                            for (int i54 = max; i54 < min; i54++) {
                                bitmap.setPixel(i54, i53, this.l[i54 - max]);
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (this.r != i9) {
                this.r = i9;
                this.s.setColor(i9);
            }
            Paint paint = this.s;
            if (C) {
                canvas.save();
                canvas.rotate(rectItem.j, (rectF.width() / 2.0f) + rectF.left, (rectF.height() / 2.0f) + rectF.top);
                canvas.drawRect(rectF, paint);
                canvas.restore();
                return;
            }
            canvas.drawRect(rectF, paint);
        }
    }

    public final void o(Canvas canvas, OcrItem ocrItem) {
        StaticLayout staticLayout;
        RectF rectF;
        int lineCount;
        if (ocrItem == null || (staticLayout = ocrItem.o) == null || (rectF = ocrItem.j) == null || (lineCount = staticLayout.getLineCount()) < 2) {
            return;
        }
        int i = lineCount - 1;
        int i2 = this.r;
        int i3 = ocrItem.e;
        if (i2 != i3) {
            this.r = i3;
            this.s.setColor(i3);
        }
        canvas.save();
        canvas.translate(rectF.left, rectF.top);
        if (C(ocrItem.g)) {
            canvas.rotate(ocrItem.g, rectF.width() / 2.0f, rectF.height() / 2.0f);
        }
        float f = ocrItem.i / 2.0f;
        RectF rectF2 = new RectF();
        RectF rectF3 = new RectF();
        RectF rectF4 = new RectF();
        int i4 = 0;
        while (i4 < i) {
            rectF2.left = staticLayout.getLineLeft(i4);
            rectF2.top = staticLayout.getLineTop(i4);
            rectF2.right = staticLayout.getLineRight(i4);
            rectF2.bottom = staticLayout.getLineBottom(i4);
            rectF2.sort();
            i4++;
            rectF3.left = staticLayout.getLineLeft(i4);
            rectF3.top = staticLayout.getLineTop(i4);
            rectF3.right = staticLayout.getLineRight(i4);
            rectF3.bottom = staticLayout.getLineBottom(i4);
            rectF3.sort();
            rectF4.left = Math.max(rectF2.left, rectF3.left);
            rectF4.top = rectF2.bottom;
            float min = Math.min(rectF2.right, rectF3.right);
            float f2 = rectF3.top;
            float f3 = rectF4.left + f;
            rectF4.left = f3;
            float f4 = rectF4.top - f;
            rectF4.top = f4;
            float f5 = min - f;
            rectF4.right = f5;
            float f6 = f2 + f;
            rectF4.bottom = f6;
            if (f3 < f5 && f4 < f6) {
                canvas.drawRect(rectF4, this.s);
            }
        }
        canvas.restore();
    }

    public final ArrayList q(OcrItem ocrItem) {
        if (ocrItem == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.I;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            RectItem rectItem = (RectItem) obj;
            if (rectItem != null) {
                if (rectItem.f17313a == ocrItem.f17311a) {
                    arrayList.add(rectItem);
                } else {
                    ArrayList arrayList3 = ocrItem.b;
                    if (arrayList3 != null) {
                        int size2 = arrayList3.size();
                        int i2 = 0;
                        while (true) {
                            if (i2 < size2) {
                                Object obj2 = arrayList3.get(i2);
                                i2++;
                                if (rectItem.f17313a == ((Integer) obj2).intValue()) {
                                    arrayList.add(rectItem);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public final void r() {
        RectF rectF;
        int i;
        ArrayList arrayList = this.I;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            RectItem rectItem = (RectItem) obj;
            if (rectItem == null || (rectF = rectItem.m) == null) {
                i = 0;
            } else {
                float f = this.f;
                float f2 = rectF.left - f;
                rectF.left = f2;
                float f3 = rectF.right + f;
                rectF.right = f3;
                float f4 = rectF.top - f;
                rectF.top = f4;
                float f5 = rectF.bottom + f;
                rectF.bottom = f5;
                float f6 = 2.0f * f;
                float f7 = rectItem.l;
                float f8 = f7 / this.b;
                if (f8 > 1.0f) {
                    f6 *= f8;
                }
                rectItem.n = f6;
                boolean z = rectItem.h;
                if (z && f7 > this.f17295a) {
                    float f9 = f6 - f;
                    if (rectItem.k) {
                        rectF.top = f4 - f9;
                        rectF.bottom = f5 + f9;
                    } else {
                        rectF.left = f2 - f9;
                        rectF.right = f3 + f9;
                    }
                }
                if (!rectItem.k && z && this.q == 2 && !C(rectItem.j)) {
                    i = Math.min(Math.round(rectF.right), this.B) - Math.max(Math.round(rectF.left), 0);
                    if (i == 0) {
                        i = 1;
                    }
                } else {
                    i = 0;
                }
            }
            i2 = Math.max(i2, i);
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            if (iArr == null || iArr.length < i2) {
                this.i = new int[i2];
            }
            int[] iArr2 = this.j;
            if (iArr2 == null || iArr2.length < i2) {
                this.j = new int[i2];
            }
            int[] iArr3 = this.k;
            if (iArr3 == null || iArr3.length < i2) {
                this.k = new int[i2];
            }
            int[] iArr4 = this.l;
            if (iArr4 != null && iArr4.length >= i2) {
                return;
            }
            this.l = new int[i2];
        }
    }

    public final void s(int i, int i2, int i3, int i4, Bitmap bitmap, ColorItem colorItem) {
        if (i3 >= 0 && i3 < this.C) {
            while (i < i2) {
                int pixel = bitmap.getPixel(i, i3);
                int red = Color.red(pixel);
                int green = Color.green(pixel);
                int blue = Color.blue(pixel);
                if (A(red, green, blue)) {
                    colorItem.f17309a += red;
                    colorItem.b += green;
                    colorItem.f17310c += blue;
                    colorItem.d++;
                } else {
                    colorItem.e += red;
                    colorItem.f += green;
                    colorItem.g += blue;
                    colorItem.h++;
                }
                if (!colorItem.i) {
                    colorItem.i = !B(red, green, blue);
                }
                i += i4;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0045 A[Catch: Exception -> 0x006f, TryCatch #0 {Exception -> 0x006f, blocks: (B:6:0x0008, B:8:0x0012, B:9:0x0017, B:11:0x0021, B:12:0x0024, B:13:0x003b, B:15:0x0045, B:16:0x004a, B:18:0x005b, B:26:0x002a, B:28:0x0034, B:31:0x0015), top: B:5:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005b A[Catch: Exception -> 0x006f, TRY_LEAVE, TryCatch #0 {Exception -> 0x006f, blocks: (B:6:0x0008, B:8:0x0012, B:9:0x0017, B:11:0x0021, B:12:0x0024, B:13:0x003b, B:15:0x0045, B:16:0x004a, B:18:0x005b, B:26:0x002a, B:28:0x0034, B:31:0x0015), top: B:5:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap t(android.graphics.Bitmap r11) {
        /*
            r10 = this;
            boolean r0 = com.mycompany.app.main.MainUtil.f6(r11)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            int r0 = r11.getWidth()     // Catch: java.lang.Exception -> L6f
            int r2 = r11.getHeight()     // Catch: java.lang.Exception -> L6f
            if (r0 <= r2) goto L15
            float r3 = (float) r2     // Catch: java.lang.Exception -> L6f
            float r4 = (float) r0     // Catch: java.lang.Exception -> L6f
            goto L17
        L15:
            float r3 = (float) r0     // Catch: java.lang.Exception -> L6f
            float r4 = (float) r2     // Catch: java.lang.Exception -> L6f
        L17:
            float r5 = (float) r0     // Catch: java.lang.Exception -> L6f
            float r6 = (float) r2     // Catch: java.lang.Exception -> L6f
            r7 = 1166016512(0x45800000, float:4096.0)
            int r8 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            r9 = 1149239296(0x44800000, float:1024.0)
            if (r8 <= 0) goto L26
            float r7 = r7 / r4
            float r3 = r5 * r7
        L24:
            float r6 = r6 * r7
            goto L3b
        L26:
            int r8 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r8 >= 0) goto L3a
            float r3 = r9 / r3
            float r8 = r5 * r3
            float r6 = r6 * r3
            float r4 = r4 * r3
            int r3 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r3 <= 0) goto L38
            float r7 = r7 / r4
            float r3 = r8 * r7
            goto L24
        L38:
            r3 = r8
            goto L3b
        L3a:
            r3 = r5
        L3b:
            int r4 = com.mycompany.app.pref.PrefAlbum.B     // Catch: java.lang.Exception -> L6f
            float r4 = x(r4)     // Catch: java.lang.Exception -> L6f
            float r3 = r3 * r4
            float r6 = r6 * r4
            if (r0 <= r2) goto L49
            int r4 = r0 / 2
            float r4 = (float) r4     // Catch: java.lang.Exception -> L6f
            goto L4a
        L49:
            r4 = r5
        L4a:
            r10.B = r0     // Catch: java.lang.Exception -> L6f
            r10.C = r2     // Catch: java.lang.Exception -> L6f
            float r0 = r5 / r3
            r10.D = r0     // Catch: java.lang.Exception -> L6f
            float r4 = r4 / r9
            r10.E = r4     // Catch: java.lang.Exception -> L6f
            int r0 = java.lang.Float.compare(r3, r5)     // Catch: java.lang.Exception -> L6f
            if (r0 == 0) goto L6e
            int r0 = java.lang.Math.round(r3)     // Catch: java.lang.Exception -> L6f
            int r2 = java.lang.Math.round(r6)     // Catch: java.lang.Exception -> L6f
            android.graphics.Bitmap r0 = com.mycompany.app.main.MainUtil.k3(r0, r2, r11)     // Catch: java.lang.Exception -> L6f
            boolean r1 = com.mycompany.app.main.MainUtil.f6(r0)     // Catch: java.lang.Exception -> L6f
            if (r1 == 0) goto L6e
            return r0
        L6e:
            return r11
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.ocr.OcrDetector.t(android.graphics.Bitmap):android.graphics.Bitmap");
    }

    public final int v(OcrItem ocrItem, OcrItem ocrItem2, boolean z) {
        float f;
        RectF rectF = ocrItem.j;
        RectF rectF2 = ocrItem2.j;
        if (rectF != null && rectF2 != null) {
            if (z) {
                if (ocrItem.h == ocrItem2.h && Math.abs(ocrItem.g - ocrItem2.g) <= 10.0f) {
                    f = Math.min(ocrItem.i, ocrItem2.i);
                    float abs = Math.abs(ocrItem.i - ocrItem2.i);
                    if (abs <= f && abs <= this.d) {
                        if (ocrItem.h) {
                            if (RectF.intersects(rectF, rectF2)) {
                                return 32;
                            }
                        } else {
                            RectF rectF3 = new RectF(rectF);
                            float f2 = rectF3.top;
                            float f3 = this.d;
                            rectF3.top = f2 - f3;
                            rectF3.bottom += f3;
                            if (RectF.intersects(rectF3, rectF2)) {
                                return 32;
                            }
                        }
                    } else {
                        return 0;
                    }
                } else {
                    return 0;
                }
            } else {
                f = 0.0f;
            }
            if (ocrItem.h) {
                float f4 = rectF.left;
                float f5 = rectF.right;
                float f6 = f5 + f;
                float f7 = rectF2.left;
                float f8 = rectF.top;
                float f9 = rectF2.top;
                float f10 = rectF.bottom;
                float f11 = rectF2.bottom;
                if (f4 < f7 && f6 > f7) {
                    return u(f6, f7, f8, f9, f10, f11, 16, 4, 2, z);
                }
                float f12 = rectF2.right;
                float f13 = f4 - f;
                if (f5 > f12 && f13 < f12) {
                    return u(f12, f13, f8, f9, f10, f11, 8, 4, 2, z);
                }
                return 0;
            }
            float f14 = rectF.top;
            float f15 = rectF.bottom;
            float f16 = f15 + f;
            float f17 = rectF2.top;
            float f18 = rectF.left;
            float f19 = f;
            float f20 = rectF2.left;
            float f21 = rectF.right;
            float f22 = rectF2.right;
            if (f14 < f17 && f16 > f17) {
                return u(f16, f17, f18, f20, f21, f22, 4, 16, 8, z);
            }
            float f23 = rectF2.bottom;
            float f24 = f14 - f19;
            if (f15 > f23 && f24 < f23) {
                return u(f23, f24, f18, f20, f21, f22, 2, 16, 8, z);
            }
            return 0;
        }
        return 0;
    }

    public final void w(int i, int i2, int i3, int i4, Bitmap bitmap, ColorItem colorItem) {
        if (i3 >= 0 && i3 < this.B) {
            while (i < i2) {
                int pixel = bitmap.getPixel(i3, i);
                int red = Color.red(pixel);
                int green = Color.green(pixel);
                int blue = Color.blue(pixel);
                if (A(red, green, blue)) {
                    colorItem.f17309a += red;
                    colorItem.b += green;
                    colorItem.f17310c += blue;
                    colorItem.d++;
                } else {
                    colorItem.e += red;
                    colorItem.f += green;
                    colorItem.g += blue;
                    colorItem.h++;
                }
                if (!colorItem.i) {
                    colorItem.i = !B(red, green, blue);
                }
                i += i4;
            }
        }
    }

    public final void y() {
        DialogOcrLoad dialogOcrLoad = this.P;
        if (dialogOcrLoad != null) {
            dialogOcrLoad.dismiss();
            this.P = null;
        }
    }

    public final void z(RectF rectF, RectF rectF2) {
        if (rectF != null) {
            int i = this.B;
            int i2 = this.C;
            float f = rectF.left;
            if (f < 0.0f) {
                rectF.left = 0.0f;
                rectF.right -= f;
            } else {
                float f2 = rectF.right;
                float f3 = i;
                if (f2 > f3) {
                    float f4 = f2 - f3;
                    rectF.right = f3;
                    rectF.left = f - f4;
                    f = f4;
                } else {
                    f = 0.0f;
                }
            }
            float f5 = rectF.top;
            if (f5 < 0.0f) {
                rectF.top = 0.0f;
                rectF.bottom -= f5;
            } else {
                float f6 = rectF.bottom;
                float f7 = i2;
                if (f6 > f7) {
                    float f8 = f6 - f7;
                    rectF.bottom = f7;
                    rectF.top = f5 - f8;
                    f5 = f8;
                } else {
                    f5 = 0.0f;
                }
            }
            if (rectF2 != null) {
                if (Float.compare(f, 0.0f) == 0 && Float.compare(f5, 0.0f) == 0) {
                    return;
                }
                rectF2.left -= f;
                rectF2.right -= f;
                rectF2.top -= f5;
                rectF2.bottom -= f5;
            }
        }
    }
}
