package com.caverock.androidsvg;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Base64;
import android.util.Log;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.PreserveAspectRatio;
import com.caverock.androidsvg.SVG;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.Stack;
import kotlin.KotlinVersion;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SVGAndroidRenderer {
    public static HashSet h;

    /* renamed from: a, reason: collision with root package name */
    public Canvas f2562a;
    public float b;

    /* renamed from: c, reason: collision with root package name */
    public SVG f2563c;
    public RendererState d;
    public Stack e;
    public Stack f;
    public Stack g;

    /* renamed from: com.caverock.androidsvg.SVGAndroidRenderer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2564a;
        public static final /* synthetic */ int[] b;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f2565c;

        static {
            int[] iArr = new int[SVG.Style.LineJoin.values().length];
            f2565c = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2565c[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2565c[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[SVG.Style.LineCap.values().length];
            b = iArr2;
            try {
                iArr2[0] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[1] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[2] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[PreserveAspectRatio.Alignment.values().length];
            f2564a = iArr3;
            try {
                iArr3[2] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2564a[5] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2564a[8] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2564a[3] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2564a[6] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2564a[9] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2564a[4] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f2564a[7] = 8;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* loaded from: classes.dex */
    public class MarkerPositionCalculator implements SVG.PathInterface {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f2566a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public float f2567c;
        public MarkerVector d;
        public boolean e;
        public boolean f;
        public int g;
        public boolean h;

        public MarkerPositionCalculator(SVGAndroidRenderer sVGAndroidRenderer, SVG.PathDefinition pathDefinition) {
            ArrayList arrayList = new ArrayList();
            this.f2566a = arrayList;
            this.d = null;
            this.e = false;
            this.f = true;
            this.g = -1;
            if (pathDefinition != null) {
                pathDefinition.h(this);
                if (this.h) {
                    this.d.b((MarkerVector) arrayList.get(this.g));
                    arrayList.set(this.g, this.d);
                    this.h = false;
                }
                MarkerVector markerVector = this.d;
                if (markerVector != null) {
                    arrayList.add(markerVector);
                }
            }
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void a(float f, float f2, float f3, float f4) {
            this.d.a(f, f2);
            this.f2566a.add(this.d);
            this.d = new MarkerVector(f3, f4, f3 - f, f4 - f2);
            this.h = false;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void b(float f, float f2) {
            boolean z = this.h;
            ArrayList arrayList = this.f2566a;
            if (z) {
                this.d.b((MarkerVector) arrayList.get(this.g));
                arrayList.set(this.g, this.d);
                this.h = false;
            }
            MarkerVector markerVector = this.d;
            if (markerVector != null) {
                arrayList.add(markerVector);
            }
            this.b = f;
            this.f2567c = f2;
            this.d = new MarkerVector(f, f2, 0.0f, 0.0f);
            this.g = arrayList.size();
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void c(float f, float f2, float f3, float f4, float f5, float f6) {
            if (this.f || this.e) {
                this.d.a(f, f2);
                this.f2566a.add(this.d);
                this.e = false;
            }
            this.d = new MarkerVector(f5, f6, f5 - f3, f6 - f4);
            this.h = false;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void close() {
            this.f2566a.add(this.d);
            e(this.b, this.f2567c);
            this.h = true;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void d(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            this.e = true;
            this.f = false;
            MarkerVector markerVector = this.d;
            SVGAndroidRenderer.a(markerVector.f2568a, markerVector.b, f, f2, f3, z, z2, f4, f5, this);
            this.f = true;
            this.h = false;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void e(float f, float f2) {
            this.d.a(f, f2);
            this.f2566a.add(this.d);
            MarkerVector markerVector = this.d;
            this.d = new MarkerVector(f, f2, f - markerVector.f2568a, f2 - markerVector.b);
            this.h = false;
        }
    }

    /* loaded from: classes.dex */
    public class MarkerVector {

        /* renamed from: a, reason: collision with root package name */
        public final float f2568a;
        public final float b;

        /* renamed from: c, reason: collision with root package name */
        public float f2569c;
        public float d;
        public boolean e = false;

        public MarkerVector(float f, float f2, float f3, float f4) {
            this.f2569c = 0.0f;
            this.d = 0.0f;
            this.f2568a = f;
            this.b = f2;
            double sqrt = Math.sqrt((f4 * f4) + (f3 * f3));
            if (sqrt != 0.0d) {
                this.f2569c = (float) (f3 / sqrt);
                this.d = (float) (f4 / sqrt);
            }
        }

        public final void a(float f, float f2) {
            float f3 = f - this.f2568a;
            float f4 = f2 - this.b;
            double sqrt = Math.sqrt((f4 * f4) + (f3 * f3));
            if (sqrt != 0.0d) {
                f3 = (float) (f3 / sqrt);
                f4 = (float) (f4 / sqrt);
            }
            float f5 = this.f2569c;
            if (f3 == (-f5) && f4 == (-this.d)) {
                this.e = true;
                this.f2569c = -f4;
                this.d = f3;
            } else {
                this.f2569c = f5 + f3;
                this.d += f4;
            }
        }

        public final void b(MarkerVector markerVector) {
            float f = markerVector.f2569c;
            float f2 = this.f2569c;
            if (f == (-f2)) {
                float f3 = markerVector.d;
                if (f3 == (-this.d)) {
                    this.e = true;
                    this.f2569c = -f3;
                    this.d = markerVector.f2569c;
                    return;
                }
            }
            this.f2569c = f2 + f;
            this.d += markerVector.d;
        }

        public final String toString() {
            return "(" + this.f2568a + "," + this.b + " " + this.f2569c + "," + this.d + ")";
        }
    }

    /* loaded from: classes.dex */
    public class PathConverter implements SVG.PathInterface {

        /* renamed from: a, reason: collision with root package name */
        public final Path f2570a = new Path();
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public float f2571c;

        public PathConverter(SVG.PathDefinition pathDefinition) {
            if (pathDefinition == null) {
                return;
            }
            pathDefinition.h(this);
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void a(float f, float f2, float f3, float f4) {
            this.f2570a.quadTo(f, f2, f3, f4);
            this.b = f3;
            this.f2571c = f4;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void b(float f, float f2) {
            this.f2570a.moveTo(f, f2);
            this.b = f;
            this.f2571c = f2;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void c(float f, float f2, float f3, float f4, float f5, float f6) {
            this.f2570a.cubicTo(f, f2, f3, f4, f5, f6);
            this.b = f5;
            this.f2571c = f6;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void close() {
            this.f2570a.close();
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void d(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            SVGAndroidRenderer.a(this.b, this.f2571c, f, f2, f3, z, z2, f4, f5, this);
            this.b = f4;
            this.f2571c = f5;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void e(float f, float f2) {
            this.f2570a.lineTo(f, f2);
            this.b = f;
            this.f2571c = f2;
        }
    }

    /* loaded from: classes.dex */
    public class PathTextDrawer extends PlainTextDrawer {
        public final Path d;

        public PathTextDrawer(Path path, float f) {
            super(f, 0.0f);
            this.d = path;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.PlainTextDrawer, com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final void b(String str) {
            SVGAndroidRenderer sVGAndroidRenderer = SVGAndroidRenderer.this;
            if (sVGAndroidRenderer.V()) {
                RendererState rendererState = sVGAndroidRenderer.d;
                if (rendererState.b) {
                    sVGAndroidRenderer.f2562a.drawTextOnPath(str, this.d, this.f2572a, this.b, rendererState.d);
                }
                RendererState rendererState2 = sVGAndroidRenderer.d;
                if (rendererState2.f2577c) {
                    sVGAndroidRenderer.f2562a.drawTextOnPath(str, this.d, this.f2572a, this.b, rendererState2.e);
                }
            }
            this.f2572a = sVGAndroidRenderer.d.d.measureText(str) + this.f2572a;
        }
    }

    /* loaded from: classes.dex */
    public class PlainTextDrawer extends TextProcessor {

        /* renamed from: a, reason: collision with root package name */
        public float f2572a;
        public float b;

        public PlainTextDrawer(float f, float f2) {
            this.f2572a = f;
            this.b = f2;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public void b(String str) {
            SVGAndroidRenderer sVGAndroidRenderer = SVGAndroidRenderer.this;
            if (sVGAndroidRenderer.V()) {
                RendererState rendererState = sVGAndroidRenderer.d;
                if (rendererState.b) {
                    sVGAndroidRenderer.f2562a.drawText(str, this.f2572a, this.b, rendererState.d);
                }
                RendererState rendererState2 = sVGAndroidRenderer.d;
                if (rendererState2.f2577c) {
                    sVGAndroidRenderer.f2562a.drawText(str, this.f2572a, this.b, rendererState2.e);
                }
            }
            this.f2572a = sVGAndroidRenderer.d.d.measureText(str) + this.f2572a;
        }
    }

    /* loaded from: classes.dex */
    public class PlainTextToPath extends TextProcessor {

        /* renamed from: a, reason: collision with root package name */
        public float f2574a;
        public final float b;

        /* renamed from: c, reason: collision with root package name */
        public final Path f2575c;

        public PlainTextToPath(float f, float f2, Path path) {
            this.f2574a = f;
            this.b = f2;
            this.f2575c = path;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final boolean a(SVG.TextContainer textContainer) {
            if (textContainer instanceof SVG.TextPath) {
                Log.w("SVGAndroidRenderer", "Using <textPath> elements in a clip path is not supported.");
                return false;
            }
            return true;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final void b(String str) {
            String str2;
            SVGAndroidRenderer sVGAndroidRenderer = SVGAndroidRenderer.this;
            if (sVGAndroidRenderer.V()) {
                Path path = new Path();
                str2 = str;
                sVGAndroidRenderer.d.d.getTextPath(str2, 0, str.length(), this.f2574a, this.b, path);
                this.f2575c.addPath(path);
            } else {
                str2 = str;
            }
            this.f2574a = sVGAndroidRenderer.d.d.measureText(str2) + this.f2574a;
        }
    }

    /* loaded from: classes.dex */
    public class TextBoundsCalculator extends TextProcessor {

        /* renamed from: a, reason: collision with root package name */
        public float f2578a;
        public final float b;

        /* renamed from: c, reason: collision with root package name */
        public final RectF f2579c = new RectF();

        public TextBoundsCalculator(float f, float f2) {
            this.f2578a = f;
            this.b = f2;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final boolean a(SVG.TextContainer textContainer) {
            if (!(textContainer instanceof SVG.TextPath)) {
                return true;
            }
            SVG.TextPath textPath = (SVG.TextPath) textContainer;
            SVG.SvgElementBase e = textContainer.f2559a.e(textPath.n);
            if (e == null) {
                SVGAndroidRenderer.o("TextPath path reference '%s' not found", textPath.n);
                return false;
            }
            SVG.Path path = (SVG.Path) e;
            PathConverter pathConverter = new PathConverter(path.o);
            Matrix matrix = path.n;
            Path path2 = pathConverter.f2570a;
            if (matrix != null) {
                path2.transform(matrix);
            }
            RectF rectF = new RectF();
            path2.computeBounds(rectF, true);
            this.f2579c.union(rectF);
            return false;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final void b(String str) {
            SVGAndroidRenderer sVGAndroidRenderer = SVGAndroidRenderer.this;
            if (sVGAndroidRenderer.V()) {
                Rect rect = new Rect();
                sVGAndroidRenderer.d.d.getTextBounds(str, 0, str.length(), rect);
                RectF rectF = new RectF(rect);
                rectF.offset(this.f2578a, this.b);
                this.f2579c.union(rectF);
            }
            this.f2578a = sVGAndroidRenderer.d.d.measureText(str) + this.f2578a;
        }
    }

    /* loaded from: classes.dex */
    public abstract class TextProcessor {
        public boolean a(SVG.TextContainer textContainer) {
            return true;
        }

        public abstract void b(String str);
    }

    /* loaded from: classes.dex */
    public class TextWidthCalculator extends TextProcessor {

        /* renamed from: a, reason: collision with root package name */
        public float f2580a = 0.0f;

        public TextWidthCalculator() {
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.TextProcessor
        public final void b(String str) {
            this.f2580a = SVGAndroidRenderer.this.d.d.measureText(str) + this.f2580a;
        }
    }

    public static Path A(SVG.PolyLine polyLine) {
        Path path = new Path();
        float[] fArr = polyLine.o;
        path.moveTo(fArr[0], fArr[1]);
        int i = 2;
        while (true) {
            float[] fArr2 = polyLine.o;
            if (i >= fArr2.length) {
                break;
            }
            path.lineTo(fArr2[i], fArr2[i + 1]);
            i += 2;
        }
        if (polyLine instanceof SVG.Polygon) {
            path.close();
        }
        if (polyLine.h == null) {
            polyLine.h = c(path);
        }
        return path;
    }

    public static void N(RendererState rendererState, boolean z, SVG.SvgPaint svgPaint) {
        Float f;
        int i;
        SVG.Style style = rendererState.f2576a;
        if (z) {
            f = style.h;
        } else {
            f = style.j;
        }
        float floatValue = f.floatValue();
        if (svgPaint instanceof SVG.Colour) {
            i = ((SVG.Colour) svgPaint).f2541c;
        } else if (svgPaint instanceof SVG.CurrentColor) {
            i = rendererState.f2576a.r.f2541c;
        } else {
            return;
        }
        int i2 = i(floatValue, i);
        if (z) {
            rendererState.d.setColor(i2);
        } else {
            rendererState.e.setColor(i2);
        }
    }

    public static void a(float f, float f2, float f3, float f4, float f5, boolean z, boolean z2, float f6, float f7, SVG.PathInterface pathInterface) {
        double d;
        double d2;
        double d3;
        double acos;
        if (f != f6 || f2 != f7) {
            if (f3 != 0.0f && f4 != 0.0f) {
                float abs = Math.abs(f3);
                float abs2 = Math.abs(f4);
                double radians = Math.toRadians(f5 % 360.0d);
                double cos = Math.cos(radians);
                double sin = Math.sin(radians);
                double d4 = (f - f6) / 2.0d;
                double d5 = (f2 - f7) / 2.0d;
                double d6 = (sin * d5) + (cos * d4);
                double d7 = (cos * d5) + ((-sin) * d4);
                double d8 = abs * abs;
                double d9 = abs2 * abs2;
                double d10 = d6 * d6;
                double d11 = d7 * d7;
                double d12 = (d11 / d9) + (d10 / d8);
                if (d12 > 0.99999d) {
                    double sqrt = Math.sqrt(d12) * 1.00001d;
                    abs = (float) (abs * sqrt);
                    abs2 = (float) (sqrt * abs2);
                    d8 = abs * abs;
                    d9 = abs2 * abs2;
                }
                if (z == z2) {
                    d = -1.0d;
                } else {
                    d = 1.0d;
                }
                double d13 = d8 * d9;
                double d14 = d8 * d11;
                double d15 = d9 * d10;
                double d16 = ((d13 - d14) - d15) / (d14 + d15);
                if (d16 < 0.0d) {
                    d16 = 0.0d;
                }
                double sqrt2 = Math.sqrt(d16) * d;
                double d17 = abs;
                double d18 = abs2;
                double d19 = ((d17 * d7) / d18) * sqrt2;
                double d20 = sqrt2 * (-((d18 * d6) / d17));
                double d21 = ((cos * d19) - (sin * d20)) + ((f + f6) / 2.0d);
                double d22 = (cos * d20) + (sin * d19) + ((f2 + f7) / 2.0d);
                double d23 = (d6 - d19) / d17;
                double d24 = (d7 - d20) / d18;
                double d25 = ((-d6) - d19) / d17;
                double d26 = ((-d7) - d20) / d18;
                double d27 = (d24 * d24) + (d23 * d23);
                double sqrt3 = Math.sqrt(d27);
                if (d24 < 0.0d) {
                    d2 = -1.0d;
                } else {
                    d2 = 1.0d;
                }
                double acos2 = Math.acos(d23 / sqrt3) * d2;
                double sqrt4 = Math.sqrt(((d26 * d26) + (d25 * d25)) * d27);
                double d28 = (d24 * d26) + (d23 * d25);
                if ((d23 * d26) - (d24 * d25) < 0.0d) {
                    d3 = -1.0d;
                } else {
                    d3 = 1.0d;
                }
                double d29 = d28 / sqrt4;
                if (d29 < -1.0d) {
                    acos = 3.141592653589793d;
                } else if (d29 > 1.0d) {
                    acos = 0.0d;
                } else {
                    acos = Math.acos(d29);
                }
                double d30 = d3 * acos;
                if (!z2 && d30 > 0.0d) {
                    d30 -= 6.283185307179586d;
                } else if (z2 && d30 < 0.0d) {
                    d30 += 6.283185307179586d;
                }
                double d31 = d30 % 6.283185307179586d;
                double d32 = acos2 % 6.283185307179586d;
                int ceil = (int) Math.ceil((Math.abs(d31) * 2.0d) / 3.141592653589793d);
                double d33 = d31 / ceil;
                double d34 = d33 / 2.0d;
                double sin2 = (Math.sin(d34) * 1.3333333333333333d) / (Math.cos(d34) + 1.0d);
                int i = ceil * 6;
                float[] fArr = new float[i];
                int i2 = 0;
                int i3 = 0;
                while (i2 < ceil) {
                    double d35 = d32;
                    double d36 = (i2 * d33) + d35;
                    double cos2 = Math.cos(d36);
                    double sin3 = Math.sin(d36);
                    int i4 = i2;
                    int i5 = i3;
                    fArr[i5] = (float) (cos2 - (sin2 * sin3));
                    fArr[i3 + 1] = (float) ((cos2 * sin2) + sin3);
                    double d37 = d36 + d33;
                    double cos3 = Math.cos(d37);
                    double sin4 = Math.sin(d37);
                    fArr[i5 + 2] = (float) ((sin2 * sin4) + cos3);
                    fArr[i5 + 3] = (float) (sin4 - (sin2 * cos3));
                    fArr[i5 + 4] = (float) cos3;
                    i3 = i5 + 6;
                    fArr[i5 + 5] = (float) sin4;
                    i2 = i4 + 1;
                    d32 = d35;
                    ceil = ceil;
                }
                Matrix matrix = new Matrix();
                matrix.postScale(abs, abs2);
                matrix.postRotate(f5);
                matrix.postTranslate((float) d21, (float) d22);
                matrix.mapPoints(fArr);
                fArr[i - 2] = f6;
                fArr[i - 1] = f7;
                for (int i6 = 0; i6 < i; i6 += 6) {
                    pathInterface.c(fArr[i6], fArr[i6 + 1], fArr[i6 + 2], fArr[i6 + 3], fArr[i6 + 4], fArr[i6 + 5]);
                }
                return;
            }
            pathInterface.e(f6, f7);
        }
    }

    public static SVG.Box c(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        return new SVG.Box(rectF.left, rectF.top, rectF.width(), rectF.height());
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
    
        if (r6 != 9) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Matrix e(com.caverock.androidsvg.SVG.Box r9, com.caverock.androidsvg.SVG.Box r10, com.caverock.androidsvg.PreserveAspectRatio r11) {
        /*
            android.graphics.Matrix r0 = new android.graphics.Matrix
            r0.<init>()
            if (r11 == 0) goto L8c
            com.caverock.androidsvg.PreserveAspectRatio$Alignment r1 = r11.f2530a
            if (r1 != 0) goto Ld
            goto L8c
        Ld:
            float r2 = r9.f2538c
            float r3 = r10.f2538c
            float r2 = r2 / r3
            float r3 = r9.d
            float r4 = r10.d
            float r3 = r3 / r4
            float r4 = r10.f2537a
            float r4 = -r4
            float r5 = r10.b
            float r5 = -r5
            com.caverock.androidsvg.PreserveAspectRatio r6 = com.caverock.androidsvg.PreserveAspectRatio.f2529c
            boolean r6 = r11.equals(r6)
            if (r6 == 0) goto L33
            float r10 = r9.f2537a
            float r9 = r9.b
            r0.preTranslate(r10, r9)
            r0.preScale(r2, r3)
            r0.preTranslate(r4, r5)
            return r0
        L33:
            com.caverock.androidsvg.PreserveAspectRatio$Scale r11 = r11.b
            com.caverock.androidsvg.PreserveAspectRatio$Scale r6 = com.caverock.androidsvg.PreserveAspectRatio.Scale.f
            if (r11 != r6) goto L3e
            float r11 = java.lang.Math.max(r2, r3)
            goto L42
        L3e:
            float r11 = java.lang.Math.min(r2, r3)
        L42:
            float r2 = r9.f2538c
            float r2 = r2 / r11
            float r3 = r9.d
            float r3 = r3 / r11
            int r6 = r1.ordinal()
            r7 = 2
            r8 = 1073741824(0x40000000, float:2.0)
            if (r6 == r7) goto L68
            r7 = 3
            if (r6 == r7) goto L63
            r7 = 5
            if (r6 == r7) goto L68
            r7 = 6
            if (r6 == r7) goto L63
            r7 = 8
            if (r6 == r7) goto L68
            r7 = 9
            if (r6 == r7) goto L63
            goto L6d
        L63:
            float r6 = r10.f2538c
            float r6 = r6 - r2
        L66:
            float r4 = r4 - r6
            goto L6d
        L68:
            float r6 = r10.f2538c
            float r6 = r6 - r2
            float r6 = r6 / r8
            goto L66
        L6d:
            int r1 = r1.ordinal()
            switch(r1) {
                case 4: goto L7a;
                case 5: goto L7a;
                case 6: goto L7a;
                case 7: goto L75;
                case 8: goto L75;
                case 9: goto L75;
                default: goto L74;
            }
        L74:
            goto L7f
        L75:
            float r10 = r10.d
            float r10 = r10 - r3
        L78:
            float r5 = r5 - r10
            goto L7f
        L7a:
            float r10 = r10.d
            float r10 = r10 - r3
            float r10 = r10 / r8
            goto L78
        L7f:
            float r10 = r9.f2537a
            float r9 = r9.b
            r0.preTranslate(r10, r9)
            r0.preScale(r11, r11)
            r0.preTranslate(r4, r5)
        L8c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.e(com.caverock.androidsvg.SVG$Box, com.caverock.androidsvg.SVG$Box, com.caverock.androidsvg.PreserveAspectRatio):android.graphics.Matrix");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005d, code lost:
    
        if (r5.equals("sans-serif") == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface h(java.lang.String r5, java.lang.Integer r6, com.caverock.androidsvg.SVG.Style.FontStyle r7) {
        /*
            com.caverock.androidsvg.SVG$Style$FontStyle r0 = com.caverock.androidsvg.SVG.Style.FontStyle.f
            r1 = 0
            r2 = 1
            if (r7 != r0) goto L8
            r7 = r2
            goto L9
        L8:
            r7 = r1
        L9:
            int r6 = r6.intValue()
            r0 = 500(0x1f4, float:7.0E-43)
            r3 = 2
            r4 = 3
            if (r6 <= r0) goto L19
            if (r7 == 0) goto L17
            r6 = r4
            goto L1e
        L17:
            r6 = r2
            goto L1e
        L19:
            if (r7 == 0) goto L1d
            r6 = r3
            goto L1e
        L1d:
            r6 = r1
        L1e:
            r5.getClass()
            int r7 = r5.hashCode()
            r0 = -1
            switch(r7) {
                case -1536685117: goto L57;
                case -1431958525: goto L4c;
                case -1081737434: goto L41;
                case 109326717: goto L36;
                case 1126973893: goto L2b;
                default: goto L29;
            }
        L29:
            r1 = r0
            goto L60
        L2b:
            java.lang.String r7 = "cursive"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L34
            goto L29
        L34:
            r1 = 4
            goto L60
        L36:
            java.lang.String r7 = "serif"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L3f
            goto L29
        L3f:
            r1 = r4
            goto L60
        L41:
            java.lang.String r7 = "fantasy"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L4a
            goto L29
        L4a:
            r1 = r3
            goto L60
        L4c:
            java.lang.String r7 = "monospace"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L55
            goto L29
        L55:
            r1 = r2
            goto L60
        L57:
            java.lang.String r7 = "sans-serif"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L60
            goto L29
        L60:
            switch(r1) {
                case 0: goto L81;
                case 1: goto L7a;
                case 2: goto L73;
                case 3: goto L6c;
                case 4: goto L65;
                default: goto L63;
            }
        L63:
            r5 = 0
            return r5
        L65:
            android.graphics.Typeface r5 = android.graphics.Typeface.SANS_SERIF
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r6)
            return r5
        L6c:
            android.graphics.Typeface r5 = android.graphics.Typeface.SERIF
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r6)
            return r5
        L73:
            android.graphics.Typeface r5 = android.graphics.Typeface.SANS_SERIF
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r6)
            return r5
        L7a:
            android.graphics.Typeface r5 = android.graphics.Typeface.MONOSPACE
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r6)
            return r5
        L81:
            android.graphics.Typeface r5 = android.graphics.Typeface.SANS_SERIF
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.h(java.lang.String, java.lang.Integer, com.caverock.androidsvg.SVG$Style$FontStyle):android.graphics.Typeface");
    }

    public static int i(float f, int i) {
        int i2 = KotlinVersion.MAX_COMPONENT_VALUE;
        int round = Math.round(((i >> 24) & KotlinVersion.MAX_COMPONENT_VALUE) * f);
        if (round < 0) {
            i2 = 0;
        } else if (round <= 255) {
            i2 = round;
        }
        return (i2 << 24) | (i & 16777215);
    }

    public static void o(String str, Object... objArr) {
        Log.e("SVGAndroidRenderer", String.format(str, objArr));
    }

    public static void q(SVG.GradientElement gradientElement, String str) {
        SVG.SvgElementBase e = gradientElement.f2559a.e(str);
        if (e == null) {
            Log.w("SVGAndroidRenderer", "Gradient reference '" + str + "' not found");
            return;
        }
        if (!(e instanceof SVG.GradientElement)) {
            o("Gradient href attributes must point to other gradient elements", new Object[0]);
            return;
        }
        if (e == gradientElement) {
            o("Circular reference in gradient href attribute '%s'", str);
            return;
        }
        SVG.GradientElement gradientElement2 = (SVG.GradientElement) e;
        if (gradientElement.i == null) {
            gradientElement.i = gradientElement2.i;
        }
        if (gradientElement.j == null) {
            gradientElement.j = gradientElement2.j;
        }
        if (gradientElement.k == null) {
            gradientElement.k = gradientElement2.k;
        }
        if (gradientElement.h.isEmpty()) {
            gradientElement.h = gradientElement2.h;
        }
        try {
            if (gradientElement instanceof SVG.SvgLinearGradient) {
                SVG.SvgLinearGradient svgLinearGradient = (SVG.SvgLinearGradient) gradientElement;
                SVG.SvgLinearGradient svgLinearGradient2 = (SVG.SvgLinearGradient) e;
                if (svgLinearGradient.m == null) {
                    svgLinearGradient.m = svgLinearGradient2.m;
                }
                if (svgLinearGradient.n == null) {
                    svgLinearGradient.n = svgLinearGradient2.n;
                }
                if (svgLinearGradient.o == null) {
                    svgLinearGradient.o = svgLinearGradient2.o;
                }
                if (svgLinearGradient.p == null) {
                    svgLinearGradient.p = svgLinearGradient2.p;
                }
            } else {
                r((SVG.SvgRadialGradient) gradientElement, (SVG.SvgRadialGradient) e);
            }
        } catch (ClassCastException unused) {
        }
        String str2 = gradientElement2.l;
        if (str2 != null) {
            q(gradientElement, str2);
        }
    }

    public static void r(SVG.SvgRadialGradient svgRadialGradient, SVG.SvgRadialGradient svgRadialGradient2) {
        if (svgRadialGradient.m == null) {
            svgRadialGradient.m = svgRadialGradient2.m;
        }
        if (svgRadialGradient.n == null) {
            svgRadialGradient.n = svgRadialGradient2.n;
        }
        if (svgRadialGradient.o == null) {
            svgRadialGradient.o = svgRadialGradient2.o;
        }
        if (svgRadialGradient.p == null) {
            svgRadialGradient.p = svgRadialGradient2.p;
        }
        if (svgRadialGradient.q == null) {
            svgRadialGradient.q = svgRadialGradient2.q;
        }
    }

    public static void s(SVG.Pattern pattern, String str) {
        SVG.SvgElementBase e = pattern.f2559a.e(str);
        if (e == null) {
            Log.w("SVGAndroidRenderer", "Pattern reference '" + str + "' not found");
            return;
        }
        if (!(e instanceof SVG.Pattern)) {
            o("Pattern href attributes must point to other pattern elements", new Object[0]);
            return;
        }
        if (e == pattern) {
            o("Circular reference in pattern href attribute '%s'", str);
            return;
        }
        SVG.Pattern pattern2 = (SVG.Pattern) e;
        if (pattern.p == null) {
            pattern.p = pattern2.p;
        }
        if (pattern.q == null) {
            pattern.q = pattern2.q;
        }
        if (pattern.r == null) {
            pattern.r = pattern2.r;
        }
        if (pattern.s == null) {
            pattern.s = pattern2.s;
        }
        if (pattern.t == null) {
            pattern.t = pattern2.t;
        }
        if (pattern.u == null) {
            pattern.u = pattern2.u;
        }
        if (pattern.v == null) {
            pattern.v = pattern2.v;
        }
        if (pattern.i.isEmpty()) {
            pattern.i = pattern2.i;
        }
        if (pattern.o == null) {
            pattern.o = pattern2.o;
        }
        if (pattern.n == null) {
            pattern.n = pattern2.n;
        }
        String str2 = pattern2.w;
        if (str2 != null) {
            s(pattern, str2);
        }
    }

    public static boolean x(SVG.Style style, long j) {
        if ((j & style.f2548c) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Path B(com.caverock.androidsvg.SVG.Rect r20) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.B(com.caverock.androidsvg.SVG$Rect):android.graphics.Path");
    }

    public final SVG.Box C(SVG.Length length, SVG.Length length2, SVG.Length length3, SVG.Length length4) {
        float f;
        float f2;
        float f3;
        float f4 = 0.0f;
        if (length != null) {
            f = length.d(this);
        } else {
            f = 0.0f;
        }
        if (length2 != null) {
            f4 = length2.e(this);
        }
        RendererState rendererState = this.d;
        SVG.Box box = rendererState.g;
        if (box == null) {
            box = rendererState.f;
        }
        if (length3 != null) {
            f2 = length3.d(this);
        } else {
            f2 = box.f2538c;
        }
        if (length4 != null) {
            f3 = length4.e(this);
        } else {
            f3 = box.d;
        }
        return new SVG.Box(f, f4, f2, f3);
    }

    public final Path D(SVG.SvgElement svgElement, boolean z) {
        float f;
        float f2;
        float f3;
        Path path;
        Path b;
        this.e.push(this.d);
        RendererState rendererState = new RendererState(this.d);
        this.d = rendererState;
        T(rendererState, svgElement);
        if (k() && V()) {
            if (svgElement instanceof SVG.Use) {
                if (!z) {
                    o("<use> elements inside a <clipPath> cannot reference another <use>", new Object[0]);
                }
                SVG.Use use = (SVG.Use) svgElement;
                SVG.SvgElementBase e = svgElement.f2559a.e(use.o);
                if (e == null) {
                    o("Use reference '%s' not found", use.o);
                    this.d = (RendererState) this.e.pop();
                    return null;
                }
                if (!(e instanceof SVG.SvgElement)) {
                    this.d = (RendererState) this.e.pop();
                    return null;
                }
                path = D((SVG.SvgElement) e, false);
                if (path != null) {
                    if (use.h == null) {
                        use.h = c(path);
                    }
                    Matrix matrix = use.n;
                    if (matrix != null) {
                        path.transform(matrix);
                    }
                    if (this.d.f2576a.I != null && (b = b(svgElement, svgElement.h)) != null) {
                        path.op(b, Path.Op.INTERSECT);
                    }
                    this.d = (RendererState) this.e.pop();
                    return path;
                }
                return null;
            }
            if (svgElement instanceof SVG.GraphicsElement) {
                SVG.GraphicsElement graphicsElement = (SVG.GraphicsElement) svgElement;
                if (svgElement instanceof SVG.Path) {
                    PathConverter pathConverter = new PathConverter(((SVG.Path) svgElement).o);
                    SVG.Box box = svgElement.h;
                    Path path2 = pathConverter.f2570a;
                    if (box == null) {
                        svgElement.h = c(path2);
                    }
                    path = path2;
                } else if (svgElement instanceof SVG.Rect) {
                    path = B((SVG.Rect) svgElement);
                } else if (svgElement instanceof SVG.Circle) {
                    path = y((SVG.Circle) svgElement);
                } else if (svgElement instanceof SVG.Ellipse) {
                    path = z((SVG.Ellipse) svgElement);
                } else if (svgElement instanceof SVG.PolyLine) {
                    path = A((SVG.PolyLine) svgElement);
                } else {
                    path = null;
                }
                if (path != null) {
                    if (graphicsElement.h == null) {
                        graphicsElement.h = c(path);
                    }
                    Matrix matrix2 = graphicsElement.n;
                    if (matrix2 != null) {
                        path.transform(matrix2);
                    }
                    path.setFillType(w());
                }
                return null;
            }
            if (svgElement instanceof SVG.Text) {
                SVG.Text text = (SVG.Text) svgElement;
                ArrayList arrayList = text.n;
                float f4 = 0.0f;
                if (arrayList != null && arrayList.size() != 0) {
                    f = ((SVG.Length) text.n.get(0)).d(this);
                } else {
                    f = 0.0f;
                }
                ArrayList arrayList2 = text.o;
                if (arrayList2 != null && arrayList2.size() != 0) {
                    f2 = ((SVG.Length) text.o.get(0)).e(this);
                } else {
                    f2 = 0.0f;
                }
                ArrayList arrayList3 = text.p;
                if (arrayList3 != null && arrayList3.size() != 0) {
                    f3 = ((SVG.Length) text.p.get(0)).d(this);
                } else {
                    f3 = 0.0f;
                }
                ArrayList arrayList4 = text.q;
                if (arrayList4 != null && arrayList4.size() != 0) {
                    f4 = ((SVG.Length) text.q.get(0)).e(this);
                }
                if (this.d.f2576a.y != SVG.Style.TextAnchor.f2554c) {
                    float d = d(text);
                    if (this.d.f2576a.y == SVG.Style.TextAnchor.f) {
                        d /= 2.0f;
                    }
                    f -= d;
                }
                if (text.h == null) {
                    TextBoundsCalculator textBoundsCalculator = new TextBoundsCalculator(f, f2);
                    n(text, textBoundsCalculator);
                    RectF rectF = textBoundsCalculator.f2579c;
                    text.h = new SVG.Box(rectF.left, rectF.top, rectF.width(), rectF.height());
                }
                Path path3 = new Path();
                n(text, new PlainTextToPath(f + f3, f2 + f4, path3));
                Matrix matrix3 = text.r;
                if (matrix3 != null) {
                    path3.transform(matrix3);
                }
                path3.setFillType(w());
                path = path3;
            } else {
                o("Invalid %s element found in clipPath definition", svgElement.n());
                return null;
            }
            if (this.d.f2576a.I != null) {
                path.op(b, Path.Op.INTERSECT);
            }
            this.d = (RendererState) this.e.pop();
            return path;
        }
        this.d = (RendererState) this.e.pop();
        return null;
    }

    public final void E(SVG.Box box) {
        Canvas canvas = this.f2562a;
        if (this.d.f2576a.K != null) {
            Paint paint = new Paint();
            PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
            paint.setXfermode(new PorterDuffXfermode(mode));
            canvas.saveLayer(null, paint, 31);
            Paint paint2 = new Paint();
            paint2.setColorFilter(new ColorMatrixColorFilter(new ColorMatrix(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.2127f, 0.7151f, 0.0722f, 0.0f, 0.0f})));
            canvas.saveLayer(null, paint2, 31);
            SVG.Mask mask = (SVG.Mask) this.f2563c.e(this.d.f2576a.K);
            L(mask, box);
            canvas.restore();
            Paint paint3 = new Paint();
            paint3.setXfermode(new PorterDuffXfermode(mode));
            canvas.saveLayer(null, paint3, 31);
            L(mask, box);
            canvas.restore();
            canvas.restore();
        }
        O();
    }

    public final boolean F() {
        SVG.SvgElementBase e;
        if (this.d.f2576a.q.floatValue() >= 1.0f && this.d.f2576a.K == null) {
            return false;
        }
        Canvas canvas = this.f2562a;
        int floatValue = (int) (this.d.f2576a.q.floatValue() * 256.0f);
        if (floatValue < 0) {
            floatValue = 0;
        } else if (floatValue > 255) {
            floatValue = 255;
        }
        canvas.saveLayerAlpha(null, floatValue, 31);
        this.e.push(this.d);
        RendererState rendererState = new RendererState(this.d);
        this.d = rendererState;
        String str = rendererState.f2576a.K;
        if (str != null && ((e = this.f2563c.e(str)) == null || !(e instanceof SVG.Mask))) {
            o("Mask reference '%s' not found", this.d.f2576a.K);
            this.d.f2576a.K = null;
        }
        return true;
    }

    public final void G(SVG.Svg svg, SVG.Box box, SVG.Box box2, PreserveAspectRatio preserveAspectRatio) {
        Canvas canvas = this.f2562a;
        if (box.f2538c != 0.0f && box.d != 0.0f) {
            if (preserveAspectRatio == null && (preserveAspectRatio = svg.n) == null) {
                preserveAspectRatio = PreserveAspectRatio.d;
            }
            T(this.d, svg);
            if (k()) {
                RendererState rendererState = this.d;
                rendererState.f = box;
                if (!rendererState.f2576a.z.booleanValue()) {
                    SVG.Box box3 = this.d.f;
                    M(box3.f2537a, box3.b, box3.f2538c, box3.d);
                }
                f(svg, this.d.f);
                if (box2 != null) {
                    canvas.concat(e(this.d.f, box2, preserveAspectRatio));
                    this.d.g = svg.o;
                } else {
                    SVG.Box box4 = this.d.f;
                    canvas.translate(box4.f2537a, box4.b);
                }
                boolean F = F();
                U();
                I(svg, true);
                if (F) {
                    E(svg.h);
                }
                R(svg);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void H(SVG.SvgObject svgObject) {
        float f;
        float f2;
        float f3;
        Path.FillType fillType;
        float d;
        float e;
        float d2;
        Path.FillType fillType2;
        SVG.Length length;
        String str;
        float f4;
        float f5;
        int indexOf;
        Set b;
        SVG.Length length2;
        float f6;
        float f7;
        Boolean bool;
        if (svgObject instanceof SVG.NotDirectlyRendered) {
            return;
        }
        P();
        if ((svgObject instanceof SVG.SvgElementBase) && (bool = ((SVG.SvgElementBase) svgObject).d) != null) {
            this.d.h = bool.booleanValue();
        }
        if (svgObject instanceof SVG.Svg) {
            SVG.Svg svg = (SVG.Svg) svgObject;
            G(svg, C(svg.p, svg.q, svg.r, svg.s), svg.o, svg.n);
        } else {
            int i = 0;
            Bitmap bitmap = null;
            float f8 = 0.0f;
            if (svgObject instanceof SVG.Use) {
                SVG.Use use = (SVG.Use) svgObject;
                SVG.Unit unit = SVG.Unit.g;
                Canvas canvas = this.f2562a;
                SVG.Length length3 = use.r;
                if ((length3 == null || !length3.g()) && ((length2 = use.s) == null || !length2.g())) {
                    T(this.d, use);
                    if (k()) {
                        SVG.SvgObject e2 = use.f2559a.e(use.o);
                        if (e2 == null) {
                            o("Use reference '%s' not found", use.o);
                        } else {
                            Matrix matrix = use.n;
                            if (matrix != null) {
                                canvas.concat(matrix);
                            }
                            SVG.Length length4 = use.p;
                            if (length4 != null) {
                                f6 = length4.d(this);
                            } else {
                                f6 = 0.0f;
                            }
                            SVG.Length length5 = use.q;
                            if (length5 != null) {
                                f7 = length5.e(this);
                            } else {
                                f7 = 0.0f;
                            }
                            canvas.translate(f6, f7);
                            f(use, use.h);
                            boolean F = F();
                            this.f.push(use);
                            this.g.push(this.f2562a.getMatrix());
                            if (e2 instanceof SVG.Svg) {
                                SVG.Svg svg2 = (SVG.Svg) e2;
                                SVG.Box C = C(null, null, use.r, use.s);
                                P();
                                G(svg2, C, svg2.o, svg2.n);
                                O();
                            } else if (e2 instanceof SVG.Symbol) {
                                SVG.Length length6 = use.r;
                                if (length6 == null) {
                                    length6 = new SVG.Length(100.0f, unit);
                                }
                                SVG.Length length7 = use.s;
                                if (length7 == null) {
                                    length7 = new SVG.Length(100.0f, unit);
                                }
                                SVG.Box C2 = C(null, null, length6, length7);
                                P();
                                SVG.Symbol symbol = (SVG.Symbol) e2;
                                if (C2.f2538c != 0.0f && C2.d != 0.0f) {
                                    PreserveAspectRatio preserveAspectRatio = symbol.n;
                                    if (preserveAspectRatio == null) {
                                        preserveAspectRatio = PreserveAspectRatio.d;
                                    }
                                    T(this.d, symbol);
                                    RendererState rendererState = this.d;
                                    rendererState.f = C2;
                                    if (!rendererState.f2576a.z.booleanValue()) {
                                        SVG.Box box = this.d.f;
                                        M(box.f2537a, box.b, box.f2538c, box.d);
                                    }
                                    SVG.Box box2 = symbol.o;
                                    if (box2 != null) {
                                        canvas.concat(e(this.d.f, box2, preserveAspectRatio));
                                        this.d.g = symbol.o;
                                    } else {
                                        SVG.Box box3 = this.d.f;
                                        canvas.translate(box3.f2537a, box3.b);
                                    }
                                    boolean F2 = F();
                                    I(symbol, true);
                                    if (F2) {
                                        E(symbol.h);
                                    }
                                    R(symbol);
                                }
                                O();
                            } else {
                                H(e2);
                            }
                            this.f.pop();
                            this.g.pop();
                            if (F) {
                                E(use.h);
                            }
                            R(use);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Switch) {
                SVG.Switch r14 = (SVG.Switch) svgObject;
                T(this.d, r14);
                if (k()) {
                    Matrix matrix2 = r14.n;
                    if (matrix2 != null) {
                        this.f2562a.concat(matrix2);
                    }
                    f(r14, r14.h);
                    boolean F3 = F();
                    String language = Locale.getDefault().getLanguage();
                    Iterator it = r14.i.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        SVG.SvgObject svgObject2 = (SVG.SvgObject) it.next();
                        if (svgObject2 instanceof SVG.SvgConditional) {
                            SVG.SvgConditional svgConditional = (SVG.SvgConditional) svgObject2;
                            if (svgConditional.d() == null && ((b = svgConditional.b()) == null || (!b.isEmpty() && b.contains(language)))) {
                                Set requiredFeatures = svgConditional.getRequiredFeatures();
                                if (requiredFeatures != null) {
                                    if (h == null) {
                                        synchronized (SVGAndroidRenderer.class) {
                                            HashSet hashSet = new HashSet();
                                            h = hashSet;
                                            hashSet.add("Structure");
                                            h.add("BasicStructure");
                                            h.add("ConditionalProcessing");
                                            h.add("Image");
                                            h.add("Style");
                                            h.add("ViewportAttribute");
                                            h.add("Shape");
                                            h.add("BasicText");
                                            h.add("PaintAttribute");
                                            h.add("BasicPaintAttribute");
                                            h.add("OpacityAttribute");
                                            h.add("BasicGraphicsAttribute");
                                            h.add("Marker");
                                            h.add("Gradient");
                                            h.add("Pattern");
                                            h.add("Clip");
                                            h.add("BasicClip");
                                            h.add("Mask");
                                            h.add("View");
                                        }
                                    }
                                    if (!requiredFeatures.isEmpty() && h.containsAll(requiredFeatures)) {
                                    }
                                }
                                Set l = svgConditional.l();
                                if (l != null) {
                                    l.isEmpty();
                                } else {
                                    Set m = svgConditional.m();
                                    if (m != null) {
                                        m.isEmpty();
                                    } else {
                                        H(svgObject2);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (F3) {
                        E(r14.h);
                    }
                    R(r14);
                }
            } else if (svgObject instanceof SVG.Group) {
                SVG.Group group = (SVG.Group) svgObject;
                T(this.d, group);
                if (k()) {
                    Matrix matrix3 = group.n;
                    if (matrix3 != null) {
                        this.f2562a.concat(matrix3);
                    }
                    f(group, group.h);
                    boolean F4 = F();
                    I(group, true);
                    if (F4) {
                        E(group.h);
                    }
                    R(group);
                }
            } else if (svgObject instanceof SVG.Image) {
                SVG.Image image = (SVG.Image) svgObject;
                Canvas canvas2 = this.f2562a;
                SVG.Length length8 = image.r;
                if (length8 != null && !length8.g() && (length = image.s) != null && !length.g() && (str = image.o) != null) {
                    PreserveAspectRatio preserveAspectRatio2 = image.n;
                    if (preserveAspectRatio2 == null) {
                        preserveAspectRatio2 = PreserveAspectRatio.d;
                    }
                    if (str.startsWith("data:") && str.length() >= 14 && (indexOf = str.indexOf(44)) >= 12 && ";base64".equals(str.substring(indexOf - 7, indexOf))) {
                        try {
                            byte[] decode = Base64.decode(str.substring(indexOf + 1), 0);
                            bitmap = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                        } catch (Exception e3) {
                            Log.e("SVGAndroidRenderer", "Could not decode bad Data URL", e3);
                        }
                    }
                    if (bitmap != null) {
                        SVG.Box box4 = new SVG.Box(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
                        T(this.d, image);
                        if (k() && V()) {
                            Matrix matrix4 = image.t;
                            if (matrix4 != null) {
                                canvas2.concat(matrix4);
                            }
                            SVG.Length length9 = image.p;
                            if (length9 != null) {
                                f4 = length9.d(this);
                            } else {
                                f4 = 0.0f;
                            }
                            SVG.Length length10 = image.q;
                            if (length10 != null) {
                                f5 = length10.e(this);
                            } else {
                                f5 = 0.0f;
                            }
                            float d3 = image.r.d(this);
                            float d4 = image.s.d(this);
                            RendererState rendererState2 = this.d;
                            rendererState2.f = new SVG.Box(f4, f5, d3, d4);
                            if (!rendererState2.f2576a.z.booleanValue()) {
                                SVG.Box box5 = this.d.f;
                                M(box5.f2537a, box5.b, box5.f2538c, box5.d);
                            }
                            image.h = this.d.f;
                            R(image);
                            f(image, image.h);
                            boolean F5 = F();
                            U();
                            canvas2.save();
                            canvas2.concat(e(this.d.f, box4, preserveAspectRatio2));
                            if (this.d.f2576a.Q != SVG.Style.RenderQuality.g) {
                                i = 2;
                            }
                            canvas2.drawBitmap(bitmap, 0.0f, 0.0f, new Paint(i));
                            canvas2.restore();
                            if (F5) {
                                E(image.h);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Path) {
                SVG.Path path = (SVG.Path) svgObject;
                if (path.o != null) {
                    T(this.d, path);
                    if (k() && V()) {
                        RendererState rendererState3 = this.d;
                        if (rendererState3.f2577c || rendererState3.b) {
                            Matrix matrix5 = path.n;
                            if (matrix5 != null) {
                                this.f2562a.concat(matrix5);
                            }
                            Path path2 = new PathConverter(path.o).f2570a;
                            if (path.h == null) {
                                path.h = c(path2);
                            }
                            R(path);
                            g(path);
                            f(path, path.h);
                            boolean F6 = F();
                            RendererState rendererState4 = this.d;
                            if (rendererState4.b) {
                                SVG.Style.FillRule fillRule = rendererState4.f2576a.g;
                                if (fillRule != null && fillRule == SVG.Style.FillRule.f) {
                                    fillType2 = Path.FillType.EVEN_ODD;
                                } else {
                                    fillType2 = Path.FillType.WINDING;
                                }
                                path2.setFillType(fillType2);
                                l(path, path2);
                            }
                            if (this.d.f2577c) {
                                m(path2);
                            }
                            K(path);
                            if (F6) {
                                E(path.h);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Rect) {
                SVG.Rect rect = (SVG.Rect) svgObject;
                SVG.Length length11 = rect.q;
                if (length11 != null && rect.r != null && !length11.g() && !rect.r.g()) {
                    T(this.d, rect);
                    if (k() && V()) {
                        Matrix matrix6 = rect.n;
                        if (matrix6 != null) {
                            this.f2562a.concat(matrix6);
                        }
                        Path B = B(rect);
                        R(rect);
                        g(rect);
                        f(rect, rect.h);
                        boolean F7 = F();
                        if (this.d.b) {
                            l(rect, B);
                        }
                        if (this.d.f2577c) {
                            m(B);
                        }
                        if (F7) {
                            E(rect.h);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Circle) {
                SVG.Circle circle = (SVG.Circle) svgObject;
                SVG.Length length12 = circle.q;
                if (length12 != null && !length12.g()) {
                    T(this.d, circle);
                    if (k() && V()) {
                        Matrix matrix7 = circle.n;
                        if (matrix7 != null) {
                            this.f2562a.concat(matrix7);
                        }
                        Path y = y(circle);
                        R(circle);
                        g(circle);
                        f(circle, circle.h);
                        boolean F8 = F();
                        if (this.d.b) {
                            l(circle, y);
                        }
                        if (this.d.f2577c) {
                            m(y);
                        }
                        if (F8) {
                            E(circle.h);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Ellipse) {
                SVG.Ellipse ellipse = (SVG.Ellipse) svgObject;
                SVG.Length length13 = ellipse.q;
                if (length13 != null && ellipse.r != null && !length13.g() && !ellipse.r.g()) {
                    T(this.d, ellipse);
                    if (k() && V()) {
                        Matrix matrix8 = ellipse.n;
                        if (matrix8 != null) {
                            this.f2562a.concat(matrix8);
                        }
                        Path z = z(ellipse);
                        R(ellipse);
                        g(ellipse);
                        f(ellipse, ellipse.h);
                        boolean F9 = F();
                        if (this.d.b) {
                            l(ellipse, z);
                        }
                        if (this.d.f2577c) {
                            m(z);
                        }
                        if (F9) {
                            E(ellipse.h);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Line) {
                SVG.Line line = (SVG.Line) svgObject;
                T(this.d, line);
                if (k() && V() && this.d.f2577c) {
                    Matrix matrix9 = line.n;
                    if (matrix9 != null) {
                        this.f2562a.concat(matrix9);
                    }
                    SVG.Length length14 = line.o;
                    if (length14 == null) {
                        d = 0.0f;
                    } else {
                        d = length14.d(this);
                    }
                    SVG.Length length15 = line.p;
                    if (length15 == null) {
                        e = 0.0f;
                    } else {
                        e = length15.e(this);
                    }
                    SVG.Length length16 = line.q;
                    if (length16 == null) {
                        d2 = 0.0f;
                    } else {
                        d2 = length16.d(this);
                    }
                    SVG.Length length17 = line.r;
                    if (length17 != null) {
                        f8 = length17.e(this);
                    }
                    if (line.h == null) {
                        line.h = new SVG.Box(Math.min(d, d2), Math.min(e, f8), Math.abs(d2 - d), Math.abs(f8 - e));
                    }
                    Path path3 = new Path();
                    path3.moveTo(d, e);
                    path3.lineTo(d2, f8);
                    R(line);
                    g(line);
                    f(line, line.h);
                    boolean F10 = F();
                    m(path3);
                    K(line);
                    if (F10) {
                        E(line.h);
                    }
                }
            } else if (svgObject instanceof SVG.Polygon) {
                SVG.Polygon polygon = (SVG.Polygon) svgObject;
                T(this.d, polygon);
                if (k() && V()) {
                    RendererState rendererState5 = this.d;
                    if (rendererState5.f2577c || rendererState5.b) {
                        Matrix matrix10 = polygon.n;
                        if (matrix10 != null) {
                            this.f2562a.concat(matrix10);
                        }
                        if (polygon.o.length >= 2) {
                            Path A = A(polygon);
                            R(polygon);
                            g(polygon);
                            f(polygon, polygon.h);
                            boolean F11 = F();
                            if (this.d.b) {
                                l(polygon, A);
                            }
                            if (this.d.f2577c) {
                                m(A);
                            }
                            K(polygon);
                            if (F11) {
                                E(polygon.h);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.PolyLine) {
                SVG.PolyLine polyLine = (SVG.PolyLine) svgObject;
                T(this.d, polyLine);
                if (k() && V()) {
                    RendererState rendererState6 = this.d;
                    if (rendererState6.f2577c || rendererState6.b) {
                        Matrix matrix11 = polyLine.n;
                        if (matrix11 != null) {
                            this.f2562a.concat(matrix11);
                        }
                        if (polyLine.o.length >= 2) {
                            Path A2 = A(polyLine);
                            R(polyLine);
                            SVG.Style.FillRule fillRule2 = this.d.f2576a.g;
                            if (fillRule2 != null && fillRule2 == SVG.Style.FillRule.f) {
                                fillType = Path.FillType.EVEN_ODD;
                            } else {
                                fillType = Path.FillType.WINDING;
                            }
                            A2.setFillType(fillType);
                            g(polyLine);
                            f(polyLine, polyLine.h);
                            boolean F12 = F();
                            if (this.d.b) {
                                l(polyLine, A2);
                            }
                            if (this.d.f2577c) {
                                m(A2);
                            }
                            K(polyLine);
                            if (F12) {
                                E(polyLine.h);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Text) {
                SVG.Text text = (SVG.Text) svgObject;
                T(this.d, text);
                if (k()) {
                    Matrix matrix12 = text.r;
                    if (matrix12 != null) {
                        this.f2562a.concat(matrix12);
                    }
                    ArrayList arrayList = text.n;
                    if (arrayList != null && arrayList.size() != 0) {
                        f = ((SVG.Length) text.n.get(0)).d(this);
                    } else {
                        f = 0.0f;
                    }
                    ArrayList arrayList2 = text.o;
                    if (arrayList2 != null && arrayList2.size() != 0) {
                        f2 = ((SVG.Length) text.o.get(0)).e(this);
                    } else {
                        f2 = 0.0f;
                    }
                    ArrayList arrayList3 = text.p;
                    if (arrayList3 != null && arrayList3.size() != 0) {
                        f3 = ((SVG.Length) text.p.get(0)).d(this);
                    } else {
                        f3 = 0.0f;
                    }
                    ArrayList arrayList4 = text.q;
                    if (arrayList4 != null && arrayList4.size() != 0) {
                        f8 = ((SVG.Length) text.q.get(0)).e(this);
                    }
                    SVG.Style.TextAnchor v = v();
                    if (v != SVG.Style.TextAnchor.f2554c) {
                        float d5 = d(text);
                        if (v == SVG.Style.TextAnchor.f) {
                            d5 /= 2.0f;
                        }
                        f -= d5;
                    }
                    if (text.h == null) {
                        TextBoundsCalculator textBoundsCalculator = new TextBoundsCalculator(f, f2);
                        n(text, textBoundsCalculator);
                        RectF rectF = textBoundsCalculator.f2579c;
                        text.h = new SVG.Box(rectF.left, rectF.top, rectF.width(), textBoundsCalculator.f2579c.height());
                    }
                    R(text);
                    g(text);
                    f(text, text.h);
                    boolean F13 = F();
                    n(text, new PlainTextDrawer(f + f3, f2 + f8));
                    if (F13) {
                        E(text.h);
                    }
                }
            }
        }
        O();
    }

    public final void I(SVG.SvgConditionalContainer svgConditionalContainer, boolean z) {
        if (z) {
            this.f.push(svgConditionalContainer);
            this.g.push(this.f2562a.getMatrix());
        }
        Iterator it = svgConditionalContainer.i.iterator();
        while (it.hasNext()) {
            H((SVG.SvgObject) it.next());
        }
        if (z) {
            this.f.pop();
            this.g.pop();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0109, code lost:
    
        if (r12.d.f2576a.z.booleanValue() != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x010b, code lost:
    
        M(r1, r2, r3, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x010e, code lost:
    
        r4.reset();
        r4.preScale(r7, r6);
        r0.concat(r4);
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void J(com.caverock.androidsvg.SVG.Marker r13, com.caverock.androidsvg.SVGAndroidRenderer.MarkerVector r14) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.J(com.caverock.androidsvg.SVG$Marker, com.caverock.androidsvg.SVGAndroidRenderer$MarkerVector):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void K(com.caverock.androidsvg.SVG.GraphicsElement r20) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.K(com.caverock.androidsvg.SVG$GraphicsElement):void");
    }

    public final void L(SVG.Mask mask, SVG.Box box) {
        float f;
        float f2;
        float f3;
        Canvas canvas = this.f2562a;
        Boolean bool = mask.n;
        if (bool != null && bool.booleanValue()) {
            SVG.Length length = mask.p;
            if (length != null) {
                f2 = length.d(this);
            } else {
                f2 = box.f2538c;
            }
            SVG.Length length2 = mask.q;
            if (length2 != null) {
                f3 = length2.e(this);
            } else {
                f3 = box.d;
            }
        } else {
            SVG.Length length3 = mask.p;
            float f4 = 1.2f;
            if (length3 != null) {
                f = length3.c(this, 1.0f);
            } else {
                f = 1.2f;
            }
            SVG.Length length4 = mask.q;
            if (length4 != null) {
                f4 = length4.c(this, 1.0f);
            }
            f2 = f * box.f2538c;
            f3 = f4 * box.d;
        }
        if (f2 != 0.0f && f3 != 0.0f) {
            P();
            RendererState t = t(mask);
            this.d = t;
            t.f2576a.q = Float.valueOf(1.0f);
            boolean F = F();
            canvas.save();
            Boolean bool2 = mask.o;
            if (bool2 != null && !bool2.booleanValue()) {
                canvas.translate(box.f2537a, box.b);
                canvas.scale(box.f2538c, box.d);
            }
            I(mask, false);
            canvas.restore();
            if (F) {
                E(box);
            }
            O();
        }
    }

    public final void M(float f, float f2, float f3, float f4) {
        float f5 = f3 + f;
        float f6 = f4 + f2;
        SVG.CSSClipRect cSSClipRect = this.d.f2576a.A;
        if (cSSClipRect != null) {
            f += cSSClipRect.d.d(this);
            f2 += this.d.f2576a.A.f2539a.e(this);
            f5 -= this.d.f2576a.A.b.d(this);
            f6 -= this.d.f2576a.A.f2540c.e(this);
        }
        this.f2562a.clipRect(f, f2, f5, f6);
    }

    public final void O() {
        this.f2562a.restore();
        this.d = (RendererState) this.e.pop();
    }

    public final void P() {
        this.f2562a.save();
        this.e.push(this.d);
        this.d = new RendererState(this.d);
    }

    public final String Q(String str, boolean z, boolean z2) {
        if (this.d.h) {
            return str.replaceAll("[\\n\\t]", " ");
        }
        String replaceAll = str.replaceAll("\\n", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replaceAll("\\t", " ");
        if (z) {
            replaceAll = replaceAll.replaceAll("^\\s+", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        if (z2) {
            replaceAll = replaceAll.replaceAll("\\s+$", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        return replaceAll.replaceAll("\\s{2,}", " ");
    }

    public final void R(SVG.SvgElement svgElement) {
        if (svgElement.b != null && svgElement.h != null) {
            Matrix matrix = new Matrix();
            if (((Matrix) this.g.peek()).invert(matrix)) {
                SVG.Box box = svgElement.h;
                float f = box.f2537a;
                float f2 = box.b;
                float a2 = box.a();
                SVG.Box box2 = svgElement.h;
                float f3 = box2.b;
                float a3 = box2.a();
                float b = svgElement.h.b();
                SVG.Box box3 = svgElement.h;
                float[] fArr = {f, f2, a2, f3, a3, b, box3.f2537a, box3.b()};
                matrix.preConcat(this.f2562a.getMatrix());
                matrix.mapPoints(fArr);
                float f4 = fArr[0];
                float f5 = fArr[1];
                RectF rectF = new RectF(f4, f5, f4, f5);
                for (int i = 2; i <= 6; i += 2) {
                    float f6 = fArr[i];
                    if (f6 < rectF.left) {
                        rectF.left = f6;
                    }
                    if (f6 > rectF.right) {
                        rectF.right = f6;
                    }
                    float f7 = fArr[i + 1];
                    if (f7 < rectF.top) {
                        rectF.top = f7;
                    }
                    if (f7 > rectF.bottom) {
                        rectF.bottom = f7;
                    }
                }
                SVG.SvgElement svgElement2 = (SVG.SvgElement) this.f.peek();
                SVG.Box box4 = svgElement2.h;
                if (box4 == null) {
                    float f8 = rectF.left;
                    float f9 = rectF.top;
                    svgElement2.h = new SVG.Box(f8, f9, rectF.right - f8, rectF.bottom - f9);
                    return;
                }
                float f10 = rectF.left;
                float f11 = rectF.top;
                SVG.Box box5 = new SVG.Box(f10, f11, rectF.right - f10, rectF.bottom - f11);
                if (f10 < box4.f2537a) {
                    box4.f2537a = f10;
                }
                if (f11 < box4.b) {
                    box4.b = f11;
                }
                if (box5.a() > box4.a()) {
                    box4.f2538c = box5.a() - box4.f2537a;
                }
                if (box5.b() > box4.b()) {
                    box4.d = box5.b() - box4.b;
                }
            }
        }
    }

    public final void S(RendererState rendererState, SVG.Style style) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        boolean z4;
        boolean z5;
        if (x(style, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM)) {
            rendererState.f2576a.r = style.r;
        }
        if (x(style, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH)) {
            rendererState.f2576a.q = style.q;
        }
        boolean x = x(style, 1L);
        SVG.Colour colour = SVG.Colour.g;
        boolean z6 = false;
        if (x) {
            rendererState.f2576a.f = style.f;
            SVG.SvgPaint svgPaint = style.f;
            if (svgPaint != null && svgPaint != colour) {
                z5 = true;
            } else {
                z5 = false;
            }
            rendererState.b = z5;
        }
        if (x(style, 4L)) {
            rendererState.f2576a.h = style.h;
        }
        if (x(style, 6149L)) {
            N(rendererState, true, rendererState.f2576a.f);
        }
        if (x(style, 2L)) {
            rendererState.f2576a.g = style.g;
        }
        if (x(style, 8L)) {
            rendererState.f2576a.i = style.i;
            SVG.SvgPaint svgPaint2 = style.i;
            if (svgPaint2 != null && svgPaint2 != colour) {
                z4 = true;
            } else {
                z4 = false;
            }
            rendererState.f2577c = z4;
        }
        if (x(style, 16L)) {
            rendererState.f2576a.j = style.j;
        }
        if (x(style, 6168L)) {
            N(rendererState, false, rendererState.f2576a.i);
        }
        if (x(style, 34359738368L)) {
            rendererState.f2576a.P = style.P;
        }
        if (x(style, 32L)) {
            SVG.Style style2 = rendererState.f2576a;
            SVG.Length length = style.k;
            style2.k = length;
            rendererState.e.setStrokeWidth(length.b(this));
        }
        if (x(style, 64L)) {
            SVG.Style style3 = rendererState.f2576a;
            Paint paint = rendererState.e;
            style3.l = style.l;
            int ordinal = style.l.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        paint.setStrokeCap(Paint.Cap.SQUARE);
                    }
                } else {
                    paint.setStrokeCap(Paint.Cap.ROUND);
                }
            } else {
                paint.setStrokeCap(Paint.Cap.BUTT);
            }
        }
        if (x(style, 128L)) {
            SVG.Style style4 = rendererState.f2576a;
            Paint paint2 = rendererState.e;
            style4.m = style.m;
            int ordinal2 = style.m.ordinal();
            if (ordinal2 != 0) {
                if (ordinal2 != 1) {
                    if (ordinal2 == 2) {
                        paint2.setStrokeJoin(Paint.Join.BEVEL);
                    }
                } else {
                    paint2.setStrokeJoin(Paint.Join.ROUND);
                }
            } else {
                paint2.setStrokeJoin(Paint.Join.MITER);
            }
        }
        if (x(style, 256L)) {
            rendererState.f2576a.n = style.n;
            rendererState.e.setStrokeMiter(style.n.floatValue());
        }
        if (x(style, 512L)) {
            rendererState.f2576a.o = style.o;
        }
        if (x(style, PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)) {
            rendererState.f2576a.p = style.p;
        }
        Typeface typeface = null;
        if (x(style, 1536L)) {
            SVG.Style style5 = rendererState.f2576a;
            Paint paint3 = rendererState.e;
            SVG.Length[] lengthArr = style5.o;
            if (lengthArr == null) {
                paint3.setPathEffect(null);
            } else {
                int length2 = lengthArr.length;
                if (length2 % 2 == 0) {
                    i = length2;
                } else {
                    i = length2 * 2;
                }
                float[] fArr = new float[i];
                float f = 0.0f;
                for (int i2 = 0; i2 < i; i2++) {
                    float b = style5.o[i2 % length2].b(this);
                    fArr[i2] = b;
                    f += b;
                }
                if (f == 0.0f) {
                    paint3.setPathEffect(null);
                } else {
                    float b2 = style5.p.b(this);
                    if (b2 < 0.0f) {
                        b2 = (b2 % f) + f;
                    }
                    paint3.setPathEffect(new DashPathEffect(fArr, b2));
                }
            }
        }
        if (x(style, PlaybackStateCompat.ACTION_PREPARE)) {
            float textSize = this.d.d.getTextSize();
            rendererState.f2576a.t = style.t;
            rendererState.d.setTextSize(style.t.c(this, textSize));
            rendererState.e.setTextSize(style.t.c(this, textSize));
        }
        if (x(style, PlaybackStateCompat.ACTION_PLAY_FROM_URI)) {
            rendererState.f2576a.s = style.s;
        }
        if (x(style, PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID)) {
            if (style.u.intValue() == -1 && rendererState.f2576a.u.intValue() > 100) {
                SVG.Style style6 = rendererState.f2576a;
                style6.u = Integer.valueOf(style6.u.intValue() - 100);
            } else if (style.u.intValue() == 1 && rendererState.f2576a.u.intValue() < 900) {
                SVG.Style style7 = rendererState.f2576a;
                style7.u = Integer.valueOf(style7.u.intValue() + 100);
            } else {
                rendererState.f2576a.u = style.u;
            }
        }
        if (x(style, PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH)) {
            rendererState.f2576a.v = style.v;
        }
        if (x(style, 106496L)) {
            SVG.Style style8 = rendererState.f2576a;
            ArrayList arrayList = style8.s;
            if (arrayList != null && this.f2563c != null) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    typeface = h((String) obj, style8.u, style8.v);
                    if (typeface != null) {
                        break;
                    }
                }
            }
            if (typeface == null) {
                typeface = h("serif", style8.u, style8.v);
            }
            rendererState.d.setTypeface(typeface);
            rendererState.e.setTypeface(typeface);
        }
        if (x(style, PlaybackStateCompat.ACTION_PREPARE_FROM_URI)) {
            SVG.Style style9 = rendererState.f2576a;
            Paint paint4 = rendererState.e;
            Paint paint5 = rendererState.d;
            style9.w = style.w;
            SVG.Style.TextDecoration textDecoration = style.w;
            SVG.Style.TextDecoration textDecoration2 = SVG.Style.TextDecoration.h;
            if (textDecoration == textDecoration2) {
                z = true;
            } else {
                z = false;
            }
            paint5.setStrikeThruText(z);
            SVG.Style.TextDecoration textDecoration3 = style.w;
            SVG.Style.TextDecoration textDecoration4 = SVG.Style.TextDecoration.f;
            if (textDecoration3 == textDecoration4) {
                z2 = true;
            } else {
                z2 = false;
            }
            paint5.setUnderlineText(z2);
            if (style.w == textDecoration2) {
                z3 = true;
            } else {
                z3 = false;
            }
            paint4.setStrikeThruText(z3);
            if (style.w == textDecoration4) {
                z6 = true;
            }
            paint4.setUnderlineText(z6);
        }
        if (x(style, 68719476736L)) {
            rendererState.f2576a.x = style.x;
        }
        if (x(style, PlaybackStateCompat.ACTION_SET_REPEAT_MODE)) {
            rendererState.f2576a.y = style.y;
        }
        if (x(style, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED)) {
            rendererState.f2576a.z = style.z;
        }
        if (x(style, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
            rendererState.f2576a.B = style.B;
        }
        if (x(style, PlaybackStateCompat.ACTION_SET_PLAYBACK_SPEED)) {
            rendererState.f2576a.C = style.C;
        }
        if (x(style, 8388608L)) {
            rendererState.f2576a.D = style.D;
        }
        if (x(style, 16777216L)) {
            rendererState.f2576a.E = style.E;
        }
        if (x(style, 33554432L)) {
            rendererState.f2576a.F = style.F;
        }
        if (x(style, PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
            rendererState.f2576a.A = style.A;
        }
        if (x(style, 268435456L)) {
            rendererState.f2576a.I = style.I;
        }
        if (x(style, 536870912L)) {
            rendererState.f2576a.J = style.J;
        }
        if (x(style, 1073741824L)) {
            rendererState.f2576a.K = style.K;
        }
        if (x(style, 67108864L)) {
            rendererState.f2576a.G = style.G;
        }
        if (x(style, 134217728L)) {
            rendererState.f2576a.H = style.H;
        }
        if (x(style, 8589934592L)) {
            rendererState.f2576a.N = style.N;
        }
        if (x(style, 17179869184L)) {
            rendererState.f2576a.O = style.O;
        }
        if (x(style, 137438953472L)) {
            rendererState.f2576a.Q = style.Q;
        }
    }

    public final void T(RendererState rendererState, SVG.SvgElementBase svgElementBase) {
        boolean z;
        int i = 0;
        if (svgElementBase.b == null) {
            z = true;
        } else {
            z = false;
        }
        SVG.Style style = rendererState.f2576a;
        Float valueOf = Float.valueOf(1.0f);
        Boolean bool = Boolean.TRUE;
        style.E = bool;
        if (!z) {
            bool = Boolean.FALSE;
        }
        style.z = bool;
        style.A = null;
        style.I = null;
        style.q = valueOf;
        style.G = SVG.Colour.f;
        style.H = valueOf;
        style.K = null;
        style.L = null;
        style.M = valueOf;
        style.N = null;
        style.O = valueOf;
        style.P = SVG.Style.VectorEffect.f2557c;
        SVG.Style style2 = svgElementBase.e;
        if (style2 != null) {
            S(rendererState, style2);
        }
        ArrayList arrayList = this.f2563c.b.f2521a;
        if (arrayList != null && !arrayList.isEmpty()) {
            ArrayList arrayList2 = this.f2563c.b.f2521a;
            int size = arrayList2.size();
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                CSSParser.Rule rule = (CSSParser.Rule) obj;
                if (CSSParser.g(rule.f2519a, svgElementBase)) {
                    S(rendererState, rule.b);
                }
            }
        }
        SVG.Style style3 = svgElementBase.f;
        if (style3 != null) {
            S(rendererState, style3);
        }
    }

    public final void U() {
        int i;
        SVG.Style style = this.d.f2576a;
        SVG.SvgPaint svgPaint = style.N;
        if (svgPaint instanceof SVG.Colour) {
            i = ((SVG.Colour) svgPaint).f2541c;
        } else if (svgPaint instanceof SVG.CurrentColor) {
            i = style.r.f2541c;
        } else {
            return;
        }
        Float f = style.O;
        if (f != null) {
            i = i(f.floatValue(), i);
        }
        this.f2562a.drawColor(i);
    }

    public final boolean V() {
        Boolean bool = this.d.f2576a.F;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public final Path b(SVG.SvgElement svgElement, SVG.Box box) {
        Path D;
        SVG.SvgElementBase e = svgElement.f2559a.e(this.d.f2576a.I);
        boolean z = false;
        if (e == null) {
            o("ClipPath reference '%s' not found", this.d.f2576a.I);
            return null;
        }
        SVG.ClipPath clipPath = (SVG.ClipPath) e;
        this.e.push(this.d);
        this.d = t(clipPath);
        Boolean bool = clipPath.o;
        if (bool == null || bool.booleanValue()) {
            z = true;
        }
        Matrix matrix = new Matrix();
        if (!z) {
            matrix.preTranslate(box.f2537a, box.b);
            matrix.preScale(box.f2538c, box.d);
        }
        Matrix matrix2 = clipPath.n;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        Path path = new Path();
        for (SVG.SvgObject svgObject : clipPath.i) {
            if ((svgObject instanceof SVG.SvgElement) && (D = D((SVG.SvgElement) svgObject, true)) != null) {
                path.op(D, Path.Op.UNION);
            }
        }
        if (this.d.f2576a.I != null) {
            if (clipPath.h == null) {
                clipPath.h = c(path);
            }
            Path b = b(clipPath, clipPath.h);
            if (b != null) {
                path.op(b, Path.Op.INTERSECT);
            }
        }
        path.transform(matrix);
        this.d = (RendererState) this.e.pop();
        return path;
    }

    public final float d(SVG.TextContainer textContainer) {
        TextWidthCalculator textWidthCalculator = new TextWidthCalculator();
        n(textContainer, textWidthCalculator);
        return textWidthCalculator.f2580a;
    }

    public final void f(SVG.SvgElement svgElement, SVG.Box box) {
        Path b;
        if (this.d.f2576a.I != null && (b = b(svgElement, box)) != null) {
            this.f2562a.clipPath(b);
        }
    }

    public final void g(SVG.SvgElement svgElement) {
        SVG.SvgPaint svgPaint = this.d.f2576a.f;
        if (svgPaint instanceof SVG.PaintReference) {
            j(true, svgElement.h, (SVG.PaintReference) svgPaint);
        }
        SVG.SvgPaint svgPaint2 = this.d.f2576a.i;
        if (svgPaint2 instanceof SVG.PaintReference) {
            j(false, svgElement.h, (SVG.PaintReference) svgPaint2);
        }
    }

    public final void j(boolean z, SVG.Box box, SVG.PaintReference paintReference) {
        boolean z2;
        Paint paint;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float d;
        float b;
        boolean z3;
        Paint paint2;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        int i;
        float f15;
        float f16;
        float f17;
        float f18;
        String str;
        SVG.SvgElementBase e = this.f2563c.e(paintReference.f2545c);
        boolean z4 = true;
        if (e == null) {
            if (z) {
                str = "Fill";
            } else {
                str = "Stroke";
            }
            o("%s reference '%s' not found", str, paintReference.f2545c);
            SVG.SvgPaint svgPaint = paintReference.f;
            if (svgPaint != null) {
                N(this.d, z, svgPaint);
                return;
            } else if (z) {
                this.d.b = false;
                return;
            } else {
                this.d.f2577c = false;
                return;
            }
        }
        boolean z5 = e instanceof SVG.SvgLinearGradient;
        SVG.GradientSpread gradientSpread = SVG.GradientSpread.f;
        SVG.GradientSpread gradientSpread2 = SVG.GradientSpread.f2543c;
        SVG.Colour colour = SVG.Colour.f;
        if (z5) {
            SVG.SvgLinearGradient svgLinearGradient = (SVG.SvgLinearGradient) e;
            String str2 = svgLinearGradient.l;
            if (str2 != null) {
                q(svgLinearGradient, str2);
            }
            Boolean bool = svgLinearGradient.i;
            if (bool != null && bool.booleanValue()) {
                z3 = true;
            } else {
                z3 = false;
            }
            RendererState rendererState = this.d;
            if (z) {
                paint2 = rendererState.d;
            } else {
                paint2 = rendererState.e;
            }
            if (z3) {
                RendererState rendererState2 = this.d;
                f6 = 256.0f;
                SVG.Box box2 = rendererState2.g;
                if (box2 == null) {
                    box2 = rendererState2.f;
                }
                SVG.Length length = svgLinearGradient.m;
                if (length != null) {
                    f16 = length.d(this);
                } else {
                    f16 = 0.0f;
                }
                SVG.Length length2 = svgLinearGradient.n;
                if (length2 != null) {
                    f9 = length2.e(this);
                } else {
                    f9 = 0.0f;
                }
                f7 = 0.0f;
                SVG.Length length3 = svgLinearGradient.o;
                if (length3 != null) {
                    f17 = length3.d(this);
                } else {
                    f17 = box2.f2538c;
                }
                SVG.Length length4 = svgLinearGradient.p;
                if (length4 != null) {
                    f18 = length4.e(this);
                } else {
                    f18 = 0.0f;
                }
                f14 = f17;
                f13 = f18;
                f12 = f16;
            } else {
                f6 = 256.0f;
                f7 = 0.0f;
                SVG.Length length5 = svgLinearGradient.m;
                if (length5 != null) {
                    f8 = length5.c(this, 1.0f);
                } else {
                    f8 = 0.0f;
                }
                SVG.Length length6 = svgLinearGradient.n;
                if (length6 != null) {
                    f9 = length6.c(this, 1.0f);
                } else {
                    f9 = 0.0f;
                }
                SVG.Length length7 = svgLinearGradient.o;
                if (length7 != null) {
                    f10 = length7.c(this, 1.0f);
                } else {
                    f10 = 1.0f;
                }
                SVG.Length length8 = svgLinearGradient.p;
                if (length8 != null) {
                    f11 = length8.c(this, 1.0f);
                } else {
                    f11 = 0.0f;
                }
                f12 = f8;
                f13 = f11;
                f14 = f10;
            }
            float f19 = f9;
            P();
            this.d = t(svgLinearGradient);
            Matrix matrix = new Matrix();
            if (!z3) {
                matrix.preTranslate(box.f2537a, box.b);
                matrix.preScale(box.f2538c, box.d);
            }
            Matrix matrix2 = svgLinearGradient.j;
            if (matrix2 != null) {
                matrix.preConcat(matrix2);
            }
            int size = svgLinearGradient.h.size();
            if (size == 0) {
                O();
                if (z) {
                    this.d.b = false;
                    return;
                } else {
                    this.d.f2577c = false;
                    return;
                }
            }
            int[] iArr = new int[size];
            float[] fArr = new float[size];
            Iterator it = svgLinearGradient.h.iterator();
            int i2 = 0;
            float f20 = -1.0f;
            while (it.hasNext()) {
                SVG.Stop stop = (SVG.Stop) ((SVG.SvgObject) it.next());
                Float f21 = stop.h;
                if (f21 != null) {
                    f15 = f21.floatValue();
                } else {
                    f15 = f7;
                }
                if (i2 != 0 && f15 < f20) {
                    fArr[i2] = f20;
                } else {
                    fArr[i2] = f15;
                    f20 = f15;
                }
                P();
                T(this.d, stop);
                SVG.Style style = this.d.f2576a;
                SVG.Colour colour2 = (SVG.Colour) style.G;
                if (colour2 == null) {
                    colour2 = colour;
                }
                iArr[i2] = i(style.H.floatValue(), colour2.f2541c);
                i2++;
                O();
            }
            if ((f12 == f14 && f19 == f13) || size == 1) {
                O();
                paint2.setColor(iArr[size - 1]);
                return;
            }
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            SVG.GradientSpread gradientSpread3 = svgLinearGradient.k;
            if (gradientSpread3 != null) {
                if (gradientSpread3 == gradientSpread2) {
                    tileMode = Shader.TileMode.MIRROR;
                } else if (gradientSpread3 == gradientSpread) {
                    tileMode = Shader.TileMode.REPEAT;
                }
            }
            Shader.TileMode tileMode2 = tileMode;
            O();
            LinearGradient linearGradient = new LinearGradient(f12, f19, f14, f13, iArr, fArr, tileMode2);
            linearGradient.setLocalMatrix(matrix);
            paint2.setShader(linearGradient);
            int floatValue = (int) (this.d.f2576a.h.floatValue() * f6);
            if (floatValue < 0) {
                i = 0;
            } else if (floatValue > 255) {
                i = KotlinVersion.MAX_COMPONENT_VALUE;
            } else {
                i = floatValue;
            }
            paint2.setAlpha(i);
            return;
        }
        if (e instanceof SVG.SvgRadialGradient) {
            SVG.SvgRadialGradient svgRadialGradient = (SVG.SvgRadialGradient) e;
            String str3 = svgRadialGradient.l;
            if (str3 != null) {
                q(svgRadialGradient, str3);
            }
            Boolean bool2 = svgRadialGradient.i;
            if (bool2 != null && bool2.booleanValue()) {
                z2 = true;
            } else {
                z2 = false;
            }
            RendererState rendererState3 = this.d;
            if (z) {
                paint = rendererState3.d;
            } else {
                paint = rendererState3.e;
            }
            if (z2) {
                SVG.Length length9 = new SVG.Length(50.0f, SVG.Unit.g);
                SVG.Length length10 = svgRadialGradient.m;
                if (length10 != null) {
                    d = length10.d(this);
                } else {
                    d = length9.d(this);
                }
                SVG.Length length11 = svgRadialGradient.n;
                if (length11 != null) {
                    f2 = length11.e(this);
                } else {
                    f2 = length9.e(this);
                }
                SVG.Length length12 = svgRadialGradient.o;
                if (length12 != null) {
                    b = length12.b(this);
                } else {
                    b = length9.b(this);
                }
                f4 = b;
                f3 = d;
            } else {
                SVG.Length length13 = svgRadialGradient.m;
                float f22 = 0.5f;
                if (length13 != null) {
                    f = length13.c(this, 1.0f);
                } else {
                    f = 0.5f;
                }
                SVG.Length length14 = svgRadialGradient.n;
                if (length14 != null) {
                    f2 = length14.c(this, 1.0f);
                } else {
                    f2 = 0.5f;
                }
                SVG.Length length15 = svgRadialGradient.o;
                if (length15 != null) {
                    f22 = length15.c(this, 1.0f);
                }
                f3 = f;
                f4 = f22;
            }
            float f23 = f2;
            P();
            this.d = t(svgRadialGradient);
            Matrix matrix3 = new Matrix();
            if (!z2) {
                matrix3.preTranslate(box.f2537a, box.b);
                matrix3.preScale(box.f2538c, box.d);
            }
            Matrix matrix4 = svgRadialGradient.j;
            if (matrix4 != null) {
                matrix3.preConcat(matrix4);
            }
            int size2 = svgRadialGradient.h.size();
            if (size2 == 0) {
                O();
                if (z) {
                    this.d.b = false;
                    return;
                } else {
                    this.d.f2577c = false;
                    return;
                }
            }
            int[] iArr2 = new int[size2];
            float[] fArr2 = new float[size2];
            Iterator it2 = svgRadialGradient.h.iterator();
            int i3 = 0;
            float f24 = -1.0f;
            while (it2.hasNext()) {
                SVG.Stop stop2 = (SVG.Stop) ((SVG.SvgObject) it2.next());
                Float f25 = stop2.h;
                if (f25 != null) {
                    f5 = f25.floatValue();
                } else {
                    f5 = 0.0f;
                }
                if (i3 != 0 && f5 < f24) {
                    fArr2[i3] = f24;
                } else {
                    fArr2[i3] = f5;
                    f24 = f5;
                }
                P();
                T(this.d, stop2);
                SVG.Style style2 = this.d.f2576a;
                SVG.Colour colour3 = (SVG.Colour) style2.G;
                if (colour3 == null) {
                    colour3 = colour;
                }
                iArr2[i3] = i(style2.H.floatValue(), colour3.f2541c);
                i3++;
                O();
            }
            if (f4 != 0.0f && size2 != 1) {
                Shader.TileMode tileMode3 = Shader.TileMode.CLAMP;
                SVG.GradientSpread gradientSpread4 = svgRadialGradient.k;
                if (gradientSpread4 != null) {
                    if (gradientSpread4 == gradientSpread2) {
                        tileMode3 = Shader.TileMode.MIRROR;
                    } else if (gradientSpread4 == gradientSpread) {
                        tileMode3 = Shader.TileMode.REPEAT;
                    }
                }
                Shader.TileMode tileMode4 = tileMode3;
                O();
                RadialGradient radialGradient = new RadialGradient(f3, f23, f4, iArr2, fArr2, tileMode4);
                radialGradient.setLocalMatrix(matrix3);
                paint.setShader(radialGradient);
                int floatValue2 = (int) (this.d.f2576a.h.floatValue() * 256.0f);
                if (floatValue2 < 0) {
                    floatValue2 = 0;
                } else if (floatValue2 > 255) {
                    floatValue2 = 255;
                }
                paint.setAlpha(floatValue2);
                return;
            }
            O();
            paint.setColor(iArr2[size2 - 1]);
            return;
        }
        if (e instanceof SVG.SolidColor) {
            SVG.SolidColor solidColor = (SVG.SolidColor) e;
            if (z) {
                if (x(solidColor.e, 2147483648L)) {
                    RendererState rendererState4 = this.d;
                    SVG.Style style3 = rendererState4.f2576a;
                    SVG.SvgPaint svgPaint2 = solidColor.e.L;
                    style3.f = svgPaint2;
                    if (svgPaint2 == null) {
                        z4 = false;
                    }
                    rendererState4.b = z4;
                }
                if (x(solidColor.e, 4294967296L)) {
                    this.d.f2576a.h = solidColor.e.M;
                }
                if (x(solidColor.e, 6442450944L)) {
                    RendererState rendererState5 = this.d;
                    N(rendererState5, z, rendererState5.f2576a.f);
                    return;
                }
                return;
            }
            if (x(solidColor.e, 2147483648L)) {
                RendererState rendererState6 = this.d;
                SVG.Style style4 = rendererState6.f2576a;
                SVG.SvgPaint svgPaint3 = solidColor.e.L;
                style4.i = svgPaint3;
                if (svgPaint3 == null) {
                    z4 = false;
                }
                rendererState6.f2577c = z4;
            }
            if (x(solidColor.e, 4294967296L)) {
                this.d.f2576a.j = solidColor.e.M;
            }
            if (x(solidColor.e, 6442450944L)) {
                RendererState rendererState7 = this.d;
                N(rendererState7, z, rendererState7.f2576a.i);
            }
        }
    }

    public final boolean k() {
        Boolean bool = this.d.f2576a.E;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0224  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(com.caverock.androidsvg.SVG.SvgElement r23, android.graphics.Path r24) {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.l(com.caverock.androidsvg.SVG$SvgElement, android.graphics.Path):void");
    }

    public final void m(Path path) {
        Canvas canvas = this.f2562a;
        RendererState rendererState = this.d;
        if (rendererState.f2576a.P == SVG.Style.VectorEffect.f) {
            Matrix matrix = canvas.getMatrix();
            Path path2 = new Path();
            path.transform(matrix, path2);
            canvas.setMatrix(new Matrix());
            Shader shader = this.d.e.getShader();
            Matrix matrix2 = new Matrix();
            if (shader != null) {
                shader.getLocalMatrix(matrix2);
                Matrix matrix3 = new Matrix(matrix2);
                matrix3.postConcat(matrix);
                shader.setLocalMatrix(matrix3);
            }
            canvas.drawPath(path2, this.d.e);
            canvas.setMatrix(matrix);
            if (shader != null) {
                shader.setLocalMatrix(matrix2);
                return;
            }
            return;
        }
        canvas.drawPath(path, rendererState.e);
    }

    public final void n(SVG.TextContainer textContainer, TextProcessor textProcessor) {
        boolean z;
        float f;
        float f2;
        float f3;
        SVG.Style.TextAnchor v;
        float d;
        if (k()) {
            Iterator it = textContainer.i.iterator();
            boolean z2 = true;
            while (it.hasNext()) {
                SVG.SvgObject svgObject = (SVG.SvgObject) it.next();
                if (svgObject instanceof SVG.TextSequence) {
                    textProcessor.b(Q(((SVG.TextSequence) svgObject).f2560c, z2, !it.hasNext()));
                } else if (textProcessor.a((SVG.TextContainer) svgObject)) {
                    boolean z3 = svgObject instanceof SVG.TextPath;
                    SVG.Style.TextAnchor textAnchor = SVG.Style.TextAnchor.f;
                    SVG.Style.TextAnchor textAnchor2 = SVG.Style.TextAnchor.f2554c;
                    float f4 = 0.0f;
                    if (z3) {
                        P();
                        SVG.TextPath textPath = (SVG.TextPath) svgObject;
                        T(this.d, textPath);
                        if (k() && V()) {
                            SVG.SvgElementBase e = textPath.f2559a.e(textPath.n);
                            if (e == null) {
                                o("TextPath reference '%s' not found", textPath.n);
                            } else {
                                SVG.Path path = (SVG.Path) e;
                                PathConverter pathConverter = new PathConverter(path.o);
                                Matrix matrix = path.n;
                                Path path2 = pathConverter.f2570a;
                                if (matrix != null) {
                                    path2.transform(matrix);
                                }
                                PathMeasure pathMeasure = new PathMeasure(path2, false);
                                SVG.Length length = textPath.o;
                                if (length != null) {
                                    f4 = length.c(this, pathMeasure.getLength());
                                }
                                SVG.Style.TextAnchor v2 = v();
                                if (v2 != textAnchor2) {
                                    float d2 = d(textPath);
                                    if (v2 == textAnchor) {
                                        d2 /= 2.0f;
                                    }
                                    f4 -= d2;
                                }
                                g((SVG.SvgElement) textPath.p);
                                boolean F = F();
                                n(textPath, new PathTextDrawer(path2, f4));
                                if (F) {
                                    E(textPath.h);
                                }
                            }
                        }
                        O();
                    } else if (svgObject instanceof SVG.TSpan) {
                        P();
                        SVG.TSpan tSpan = (SVG.TSpan) svgObject;
                        T(this.d, tSpan);
                        if (k()) {
                            ArrayList arrayList = tSpan.n;
                            if (arrayList != null && arrayList.size() > 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            boolean z4 = textProcessor instanceof PlainTextDrawer;
                            if (z4) {
                                if (!z) {
                                    d = ((PlainTextDrawer) textProcessor).f2572a;
                                } else {
                                    d = ((SVG.Length) tSpan.n.get(0)).d(this);
                                }
                                ArrayList arrayList2 = tSpan.o;
                                if (arrayList2 != null && arrayList2.size() != 0) {
                                    f2 = ((SVG.Length) tSpan.o.get(0)).e(this);
                                } else {
                                    f2 = ((PlainTextDrawer) textProcessor).b;
                                }
                                ArrayList arrayList3 = tSpan.p;
                                if (arrayList3 != null && arrayList3.size() != 0) {
                                    f3 = ((SVG.Length) tSpan.p.get(0)).d(this);
                                } else {
                                    f3 = 0.0f;
                                }
                                ArrayList arrayList4 = tSpan.q;
                                if (arrayList4 != null && arrayList4.size() != 0) {
                                    f4 = ((SVG.Length) tSpan.q.get(0)).e(this);
                                }
                                float f5 = d;
                                f = f4;
                                f4 = f5;
                            } else {
                                f = 0.0f;
                                f2 = 0.0f;
                                f3 = 0.0f;
                            }
                            if (z && (v = v()) != textAnchor2) {
                                float d3 = d(tSpan);
                                if (v == textAnchor) {
                                    d3 /= 2.0f;
                                }
                                f4 -= d3;
                            }
                            g((SVG.SvgElement) tSpan.r);
                            if (z4) {
                                PlainTextDrawer plainTextDrawer = (PlainTextDrawer) textProcessor;
                                plainTextDrawer.f2572a = f4 + f3;
                                plainTextDrawer.b = f2 + f;
                            }
                            boolean F2 = F();
                            n(tSpan, textProcessor);
                            if (F2) {
                                E(tSpan.h);
                            }
                        }
                        O();
                    } else if (svgObject instanceof SVG.TRef) {
                        P();
                        SVG.TRef tRef = (SVG.TRef) svgObject;
                        T(this.d, tRef);
                        if (k()) {
                            g((SVG.SvgElement) tRef.o);
                            SVG.SvgElementBase e2 = svgObject.f2559a.e(tRef.n);
                            if (e2 != null && (e2 instanceof SVG.TextContainer)) {
                                StringBuilder sb = new StringBuilder();
                                p((SVG.TextContainer) e2, sb);
                                if (sb.length() > 0) {
                                    textProcessor.b(sb.toString());
                                }
                            } else {
                                o("Tref reference '%s' not found", tRef.n);
                            }
                        }
                        O();
                    }
                }
                z2 = false;
            }
        }
    }

    public final void p(SVG.TextContainer textContainer, StringBuilder sb) {
        Iterator it = textContainer.i.iterator();
        boolean z = true;
        while (it.hasNext()) {
            SVG.SvgObject svgObject = (SVG.SvgObject) it.next();
            if (svgObject instanceof SVG.TextContainer) {
                p((SVG.TextContainer) svgObject, sb);
            } else if (svgObject instanceof SVG.TextSequence) {
                sb.append(Q(((SVG.TextSequence) svgObject).f2560c, z, !it.hasNext()));
            }
            z = false;
        }
    }

    public final RendererState t(SVG.SvgElementBase svgElementBase) {
        RendererState rendererState = new RendererState();
        S(rendererState, SVG.Style.a());
        u(svgElementBase, rendererState);
        return rendererState;
    }

    public final void u(SVG.SvgObject svgObject, RendererState rendererState) {
        int i;
        ArrayList arrayList = new ArrayList();
        while (true) {
            i = 0;
            if (svgObject instanceof SVG.SvgElementBase) {
                arrayList.add(0, (SVG.SvgElementBase) svgObject);
            }
            Object obj = svgObject.b;
            if (obj == null) {
                break;
            } else {
                svgObject = (SVG.SvgObject) obj;
            }
        }
        int size = arrayList.size();
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            T(rendererState, (SVG.SvgElementBase) obj2);
        }
        RendererState rendererState2 = this.d;
        rendererState.g = rendererState2.g;
        rendererState.f = rendererState2.f;
    }

    public final SVG.Style.TextAnchor v() {
        SVG.Style.TextAnchor textAnchor;
        SVG.Style style = this.d.f2576a;
        if (style.x != SVG.Style.TextDirection.f2556c && (textAnchor = style.y) != SVG.Style.TextAnchor.f) {
            SVG.Style.TextAnchor textAnchor2 = SVG.Style.TextAnchor.f2554c;
            if (textAnchor == textAnchor2) {
                return SVG.Style.TextAnchor.g;
            }
            return textAnchor2;
        }
        return style.y;
    }

    public final Path.FillType w() {
        SVG.Style.FillRule fillRule = this.d.f2576a.J;
        if (fillRule != null && fillRule == SVG.Style.FillRule.f) {
            return Path.FillType.EVEN_ODD;
        }
        return Path.FillType.WINDING;
    }

    public final Path y(SVG.Circle circle) {
        float f;
        SVG.Length length = circle.o;
        float f2 = 0.0f;
        if (length != null) {
            f = length.d(this);
        } else {
            f = 0.0f;
        }
        SVG.Length length2 = circle.p;
        if (length2 != null) {
            f2 = length2.e(this);
        }
        float f3 = f2;
        float b = circle.q.b(this);
        float f4 = f - b;
        float f5 = f3 - b;
        float f6 = f + b;
        float f7 = f3 + b;
        if (circle.h == null) {
            float f8 = 2.0f * b;
            circle.h = new SVG.Box(f4, f5, f8, f8);
        }
        float f9 = b * 0.5522848f;
        Path path = new Path();
        path.moveTo(f, f5);
        float f10 = f + f9;
        float f11 = f3 - f9;
        path.cubicTo(f10, f5, f6, f11, f6, f3);
        float f12 = f3 + f9;
        path.cubicTo(f6, f12, f10, f7, f, f7);
        float f13 = f - f9;
        path.cubicTo(f13, f7, f4, f12, f4, f3);
        path.cubicTo(f4, f11, f13, f5, f, f5);
        path.close();
        return path;
    }

    public final Path z(SVG.Ellipse ellipse) {
        float f;
        SVG.Length length = ellipse.o;
        float f2 = 0.0f;
        if (length != null) {
            f = length.d(this);
        } else {
            f = 0.0f;
        }
        SVG.Length length2 = ellipse.p;
        if (length2 != null) {
            f2 = length2.e(this);
        }
        float f3 = f2;
        float d = ellipse.q.d(this);
        float e = ellipse.r.e(this);
        float f4 = f - d;
        float f5 = f3 - e;
        float f6 = f + d;
        float f7 = f3 + e;
        if (ellipse.h == null) {
            ellipse.h = new SVG.Box(f4, f5, d * 2.0f, 2.0f * e);
        }
        float f8 = d * 0.5522848f;
        float f9 = e * 0.5522848f;
        Path path = new Path();
        path.moveTo(f, f5);
        float f10 = f + f8;
        float f11 = f3 - f9;
        path.cubicTo(f10, f5, f6, f11, f6, f3);
        float f12 = f3 + f9;
        path.cubicTo(f6, f12, f10, f7, f, f7);
        float f13 = f - f8;
        path.cubicTo(f13, f7, f4, f12, f4, f3);
        path.cubicTo(f4, f11, f13, f5, f, f5);
        path.close();
        return path;
    }

    /* loaded from: classes.dex */
    public class RendererState {

        /* renamed from: a, reason: collision with root package name */
        public final SVG.Style f2576a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2577c;
        public final Paint d;
        public final Paint e;
        public SVG.Box f;
        public SVG.Box g;
        public boolean h;

        public RendererState() {
            Paint paint = new Paint();
            this.d = paint;
            paint.setFlags(193);
            paint.setHinting(0);
            paint.setStyle(Paint.Style.FILL);
            Typeface typeface = Typeface.DEFAULT;
            paint.setTypeface(typeface);
            Paint paint2 = new Paint();
            this.e = paint2;
            paint2.setFlags(193);
            paint2.setHinting(0);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setTypeface(typeface);
            this.f2576a = SVG.Style.a();
        }

        public RendererState(RendererState rendererState) {
            this.b = rendererState.b;
            this.f2577c = rendererState.f2577c;
            this.d = new Paint(rendererState.d);
            this.e = new Paint(rendererState.e);
            SVG.Box box = rendererState.f;
            if (box != null) {
                this.f = new SVG.Box(box);
            }
            SVG.Box box2 = rendererState.g;
            if (box2 != null) {
                this.g = new SVG.Box(box2);
            }
            this.h = rendererState.h;
            try {
                this.f2576a = (SVG.Style) rendererState.f2576a.clone();
            } catch (CloneNotSupportedException e) {
                Log.e("SVGAndroidRenderer", "Unexpected clone error", e);
                this.f2576a = SVG.Style.a();
            }
        }
    }
}
