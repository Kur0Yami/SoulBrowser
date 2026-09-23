package com.caverock.androidsvg;

import android.graphics.Matrix;
import android.graphics.Picture;
import android.support.v4.media.a;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.xml.sax.SAXException;

/* loaded from: classes.dex */
public class SVG {

    /* renamed from: a, reason: collision with root package name */
    public Svg f2534a;
    public CSSParser.Ruleset b;

    /* renamed from: c, reason: collision with root package name */
    public HashMap f2535c;

    /* renamed from: com.caverock.androidsvg.SVG$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2536a;

        static {
            int[] iArr = new int[Unit.values().length];
            f2536a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2536a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2536a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2536a[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2536a[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2536a[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2536a[6] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2536a[7] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2536a[8] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class CSSClipRect {

        /* renamed from: a, reason: collision with root package name */
        public Length f2539a;
        public Length b;

        /* renamed from: c, reason: collision with root package name */
        public Length f2540c;
        public Length d;
    }

    /* loaded from: classes.dex */
    public static class Circle extends GraphicsElement {
        public Length o;
        public Length p;
        public Length q;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "circle";
        }
    }

    /* loaded from: classes.dex */
    public static class ClipPath extends Group implements NotDirectlyRendered {
        public Boolean o;

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "clipPath";
        }
    }

    /* loaded from: classes.dex */
    public static class Colour extends SvgPaint {
        public static final Colour f = new Colour(-16777216);
        public static final Colour g = new Colour(0);

        /* renamed from: c, reason: collision with root package name */
        public final int f2541c;

        public Colour(int i) {
            this.f2541c = i;
        }

        public final String toString() {
            return String.format("#%08x", Integer.valueOf(this.f2541c));
        }
    }

    /* loaded from: classes.dex */
    public static class CurrentColor extends SvgPaint {

        /* renamed from: c, reason: collision with root package name */
        public static final CurrentColor f2542c = new Object();
    }

    /* loaded from: classes.dex */
    public static class Defs extends Group implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "defs";
        }
    }

    /* loaded from: classes.dex */
    public static class Ellipse extends GraphicsElement {
        public Length o;
        public Length p;
        public Length q;
        public Length r;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "ellipse";
        }
    }

    /* loaded from: classes.dex */
    public static abstract class GradientElement extends SvgElementBase implements SvgContainer {
        public List h = new ArrayList();
        public Boolean i;
        public Matrix j;
        public GradientSpread k;
        public String l;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List a() {
            return this.h;
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final void c(SvgObject svgObject) {
            if (svgObject instanceof Stop) {
                this.h.add(svgObject);
                return;
            }
            throw new SAXException("Gradient elements cannot contain " + svgObject + " elements.");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class GradientSpread {

        /* renamed from: c, reason: collision with root package name */
        public static final GradientSpread f2543c;
        public static final GradientSpread f;
        public static final /* synthetic */ GradientSpread[] g;

        /* JADX INFO: Fake field, exist only in values array */
        GradientSpread EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.caverock.androidsvg.SVG$GradientSpread, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [com.caverock.androidsvg.SVG$GradientSpread, java.lang.Enum] */
        static {
            Enum r0 = new Enum("pad", 0);
            ?? r1 = new Enum("reflect", 1);
            f2543c = r1;
            ?? r3 = new Enum("repeat", 2);
            f = r3;
            g = new GradientSpread[]{r0, r1, r3};
        }

        public static GradientSpread valueOf(String str) {
            return (GradientSpread) Enum.valueOf(GradientSpread.class, str);
        }

        public static GradientSpread[] values() {
            return (GradientSpread[]) g.clone();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class GraphicsElement extends SvgConditionalElement implements HasTransform {
        public Matrix n;

        public GraphicsElement() {
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            this.m = null;
        }

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void k(Matrix matrix) {
            this.n = matrix;
        }
    }

    /* loaded from: classes.dex */
    public static class Group extends SvgConditionalContainer implements HasTransform {
        public Matrix n;

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void k(Matrix matrix) {
            this.n = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String n() {
            return "group";
        }
    }

    /* loaded from: classes.dex */
    public interface HasTransform {
        void k(Matrix matrix);
    }

    /* loaded from: classes.dex */
    public static class Image extends SvgPreserveAspectRatioContainer implements HasTransform {
        public String o;
        public Length p;
        public Length q;
        public Length r;
        public Length s;
        public Matrix t;

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void k(Matrix matrix) {
            this.t = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "image";
        }
    }

    /* loaded from: classes.dex */
    public static class Line extends GraphicsElement {
        public Length o;
        public Length p;
        public Length q;
        public Length r;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "line";
        }
    }

    /* loaded from: classes.dex */
    public static class Marker extends SvgViewBoxContainer implements NotDirectlyRendered {
        public boolean p;
        public Length q;
        public Length r;
        public Length s;
        public Length t;
        public Float u;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "marker";
        }
    }

    /* loaded from: classes.dex */
    public static class Mask extends SvgConditionalContainer implements NotDirectlyRendered {
        public Boolean n;
        public Boolean o;
        public Length p;
        public Length q;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "mask";
        }
    }

    /* loaded from: classes.dex */
    public interface NotDirectlyRendered {
    }

    /* loaded from: classes.dex */
    public static class PaintReference extends SvgPaint {

        /* renamed from: c, reason: collision with root package name */
        public final String f2545c;
        public final SvgPaint f;

        public PaintReference(String str, SvgPaint svgPaint) {
            this.f2545c = str;
            this.f = svgPaint;
        }

        public final String toString() {
            return this.f2545c + " " + this.f;
        }
    }

    /* loaded from: classes.dex */
    public static class Path extends GraphicsElement {
        public PathDefinition o;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "path";
        }
    }

    /* loaded from: classes.dex */
    public static class PathDefinition implements PathInterface {

        /* renamed from: a, reason: collision with root package name */
        public byte[] f2546a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public float[] f2547c;
        public int d;

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void a(float f, float f2, float f3, float f4) {
            f((byte) 3);
            g(4);
            float[] fArr = this.f2547c;
            int i = this.d;
            int i2 = i + 1;
            this.d = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.d = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.d = i4;
            fArr[i3] = f3;
            this.d = i + 4;
            fArr[i4] = f4;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void b(float f, float f2) {
            f((byte) 0);
            g(2);
            float[] fArr = this.f2547c;
            int i = this.d;
            int i2 = i + 1;
            this.d = i2;
            fArr[i] = f;
            this.d = i + 2;
            fArr[i2] = f2;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void c(float f, float f2, float f3, float f4, float f5, float f6) {
            f((byte) 2);
            g(6);
            float[] fArr = this.f2547c;
            int i = this.d;
            int i2 = i + 1;
            this.d = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.d = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.d = i4;
            fArr[i3] = f3;
            int i5 = i + 4;
            this.d = i5;
            fArr[i4] = f4;
            int i6 = i + 5;
            this.d = i6;
            fArr[i5] = f5;
            this.d = i + 6;
            fArr[i6] = f6;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void close() {
            f((byte) 8);
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void d(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            int i;
            if (z) {
                i = 2;
            } else {
                i = 0;
            }
            f((byte) (i | 4 | (z2 ? 1 : 0)));
            g(5);
            float[] fArr = this.f2547c;
            int i2 = this.d;
            int i3 = i2 + 1;
            this.d = i3;
            fArr[i2] = f;
            int i4 = i2 + 2;
            this.d = i4;
            fArr[i3] = f2;
            int i5 = i2 + 3;
            this.d = i5;
            fArr[i4] = f3;
            int i6 = i2 + 4;
            this.d = i6;
            fArr[i5] = f4;
            this.d = i2 + 5;
            fArr[i6] = f5;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void e(float f, float f2) {
            f((byte) 1);
            g(2);
            float[] fArr = this.f2547c;
            int i = this.d;
            int i2 = i + 1;
            this.d = i2;
            fArr[i] = f;
            this.d = i + 2;
            fArr[i2] = f2;
        }

        public final void f(byte b) {
            int i = this.b;
            byte[] bArr = this.f2546a;
            if (i == bArr.length) {
                byte[] bArr2 = new byte[bArr.length * 2];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                this.f2546a = bArr2;
            }
            byte[] bArr3 = this.f2546a;
            int i2 = this.b;
            this.b = i2 + 1;
            bArr3[i2] = b;
        }

        public final void g(int i) {
            float[] fArr = this.f2547c;
            if (fArr.length < this.d + i) {
                float[] fArr2 = new float[fArr.length * 2];
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                this.f2547c = fArr2;
            }
        }

        public final void h(PathInterface pathInterface) {
            boolean z;
            boolean z2;
            int i = 0;
            for (int i2 = 0; i2 < this.b; i2++) {
                byte b = this.f2546a[i2];
                if (b != 0) {
                    if (b != 1) {
                        if (b != 2) {
                            if (b != 3) {
                                if (b != 8) {
                                    if ((b & 2) != 0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if ((b & 1) != 0) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    float[] fArr = this.f2547c;
                                    pathInterface.d(fArr[i], fArr[i + 1], fArr[i + 2], z, z2, fArr[i + 3], fArr[i + 4]);
                                    i += 5;
                                } else {
                                    pathInterface.close();
                                }
                            } else {
                                float[] fArr2 = this.f2547c;
                                float f = fArr2[i];
                                float f2 = fArr2[i + 1];
                                int i3 = i + 3;
                                float f3 = fArr2[i + 2];
                                i += 4;
                                pathInterface.a(f, f2, f3, fArr2[i3]);
                            }
                        } else {
                            float[] fArr3 = this.f2547c;
                            pathInterface.c(fArr3[i], fArr3[i + 1], fArr3[i + 2], fArr3[i + 3], fArr3[i + 4], fArr3[i + 5]);
                            i += 6;
                        }
                    } else {
                        float[] fArr4 = this.f2547c;
                        int i4 = i + 1;
                        float f4 = fArr4[i];
                        i += 2;
                        pathInterface.e(f4, fArr4[i4]);
                    }
                } else {
                    float[] fArr5 = this.f2547c;
                    int i5 = i + 1;
                    float f5 = fArr5[i];
                    i += 2;
                    pathInterface.b(f5, fArr5[i5]);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public interface PathInterface {
        void a(float f, float f2, float f3, float f4);

        void b(float f, float f2);

        void c(float f, float f2, float f3, float f4, float f5, float f6);

        void close();

        void d(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5);

        void e(float f, float f2);
    }

    /* loaded from: classes.dex */
    public static class Pattern extends SvgViewBoxContainer implements NotDirectlyRendered {
        public Boolean p;
        public Boolean q;
        public Matrix r;
        public Length s;
        public Length t;
        public Length u;
        public Length v;
        public String w;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "pattern";
        }
    }

    /* loaded from: classes.dex */
    public static class PolyLine extends GraphicsElement {
        public float[] o;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String n() {
            return "polyline";
        }
    }

    /* loaded from: classes.dex */
    public static class Polygon extends PolyLine {
        @Override // com.caverock.androidsvg.SVG.PolyLine, com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "polygon";
        }
    }

    /* loaded from: classes.dex */
    public static class Rect extends GraphicsElement {
        public Length o;
        public Length p;
        public Length q;
        public Length r;
        public Length s;
        public Length t;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "rect";
        }
    }

    /* loaded from: classes.dex */
    public static class SolidColor extends SvgElementBase implements SvgContainer {
        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List a() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final void c(SvgObject svgObject) {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "solidColor";
        }
    }

    /* loaded from: classes.dex */
    public static class Stop extends SvgElementBase implements SvgContainer {
        public Float h;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List a() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final void c(SvgObject svgObject) {
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "stop";
        }
    }

    /* loaded from: classes.dex */
    public static class Style implements Cloneable {
        public CSSClipRect A;
        public String B;
        public String C;
        public String D;
        public Boolean E;
        public Boolean F;
        public SvgPaint G;
        public Float H;
        public String I;
        public FillRule J;
        public String K;
        public SvgPaint L;
        public Float M;
        public SvgPaint N;
        public Float O;
        public VectorEffect P;
        public RenderQuality Q;

        /* renamed from: c, reason: collision with root package name */
        public long f2548c = 0;
        public SvgPaint f;
        public FillRule g;
        public Float h;
        public SvgPaint i;
        public Float j;
        public Length k;
        public LineCap l;
        public LineJoin m;
        public Float n;
        public Length[] o;
        public Length p;
        public Float q;
        public Colour r;
        public ArrayList s;
        public Length t;
        public Integer u;
        public FontStyle v;
        public TextDecoration w;
        public TextDirection x;
        public TextAnchor y;
        public Boolean z;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public static final class FillRule {

            /* renamed from: c, reason: collision with root package name */
            public static final FillRule f2549c;
            public static final FillRule f;
            public static final /* synthetic */ FillRule[] g;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.caverock.androidsvg.SVG$Style$FillRule, java.lang.Enum] */
            /* JADX WARN: Type inference failed for: r1v1, types: [com.caverock.androidsvg.SVG$Style$FillRule, java.lang.Enum] */
            static {
                ?? r0 = new Enum("NonZero", 0);
                f2549c = r0;
                ?? r1 = new Enum("EvenOdd", 1);
                f = r1;
                g = new FillRule[]{r0, r1};
            }

            public static FillRule valueOf(String str) {
                return (FillRule) Enum.valueOf(FillRule.class, str);
            }

            public static FillRule[] values() {
                return (FillRule[]) g.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public static final class FontStyle {

            /* renamed from: c, reason: collision with root package name */
            public static final FontStyle f2550c;
            public static final FontStyle f;
            public static final FontStyle g;
            public static final /* synthetic */ FontStyle[] h;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$FontStyle] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$FontStyle] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$FontStyle] */
            static {
                ?? r0 = new Enum("Normal", 0);
                f2550c = r0;
                ?? r1 = new Enum("Italic", 1);
                f = r1;
                ?? r3 = new Enum("Oblique", 2);
                g = r3;
                h = new FontStyle[]{r0, r1, r3};
            }

            public static FontStyle valueOf(String str) {
                return (FontStyle) Enum.valueOf(FontStyle.class, str);
            }

            public static FontStyle[] values() {
                return (FontStyle[]) h.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public static final class LineCap {

            /* renamed from: c, reason: collision with root package name */
            public static final LineCap f2551c;
            public static final LineCap f;
            public static final LineCap g;
            public static final /* synthetic */ LineCap[] h;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.caverock.androidsvg.SVG$Style$LineCap, java.lang.Enum] */
            /* JADX WARN: Type inference failed for: r1v1, types: [com.caverock.androidsvg.SVG$Style$LineCap, java.lang.Enum] */
            /* JADX WARN: Type inference failed for: r3v1, types: [com.caverock.androidsvg.SVG$Style$LineCap, java.lang.Enum] */
            static {
                ?? r0 = new Enum("Butt", 0);
                f2551c = r0;
                ?? r1 = new Enum("Round", 1);
                f = r1;
                ?? r3 = new Enum("Square", 2);
                g = r3;
                h = new LineCap[]{r0, r1, r3};
            }

            public static LineCap valueOf(String str) {
                return (LineCap) Enum.valueOf(LineCap.class, str);
            }

            public static LineCap[] values() {
                return (LineCap[]) h.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public static final class LineJoin {

            /* renamed from: c, reason: collision with root package name */
            public static final LineJoin f2552c;
            public static final LineJoin f;
            public static final LineJoin g;
            public static final /* synthetic */ LineJoin[] h;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.caverock.androidsvg.SVG$Style$LineJoin, java.lang.Enum] */
            /* JADX WARN: Type inference failed for: r1v1, types: [com.caverock.androidsvg.SVG$Style$LineJoin, java.lang.Enum] */
            /* JADX WARN: Type inference failed for: r3v1, types: [com.caverock.androidsvg.SVG$Style$LineJoin, java.lang.Enum] */
            static {
                ?? r0 = new Enum("Miter", 0);
                f2552c = r0;
                ?? r1 = new Enum("Round", 1);
                f = r1;
                ?? r3 = new Enum("Bevel", 2);
                g = r3;
                h = new LineJoin[]{r0, r1, r3};
            }

            public static LineJoin valueOf(String str) {
                return (LineJoin) Enum.valueOf(LineJoin.class, str);
            }

            public static LineJoin[] values() {
                return (LineJoin[]) h.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public static final class RenderQuality {

            /* renamed from: c, reason: collision with root package name */
            public static final RenderQuality f2553c;
            public static final RenderQuality f;
            public static final RenderQuality g;
            public static final /* synthetic */ RenderQuality[] h;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$RenderQuality] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$RenderQuality] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$RenderQuality] */
            static {
                ?? r0 = new Enum("auto", 0);
                f2553c = r0;
                ?? r1 = new Enum("optimizeQuality", 1);
                f = r1;
                ?? r3 = new Enum("optimizeSpeed", 2);
                g = r3;
                h = new RenderQuality[]{r0, r1, r3};
            }

            public static RenderQuality valueOf(String str) {
                return (RenderQuality) Enum.valueOf(RenderQuality.class, str);
            }

            public static RenderQuality[] values() {
                return (RenderQuality[]) h.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public static final class TextAnchor {

            /* renamed from: c, reason: collision with root package name */
            public static final TextAnchor f2554c;
            public static final TextAnchor f;
            public static final TextAnchor g;
            public static final /* synthetic */ TextAnchor[] h;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$TextAnchor] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$TextAnchor] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$TextAnchor] */
            static {
                ?? r0 = new Enum("Start", 0);
                f2554c = r0;
                ?? r1 = new Enum("Middle", 1);
                f = r1;
                ?? r3 = new Enum("End", 2);
                g = r3;
                h = new TextAnchor[]{r0, r1, r3};
            }

            public static TextAnchor valueOf(String str) {
                return (TextAnchor) Enum.valueOf(TextAnchor.class, str);
            }

            public static TextAnchor[] values() {
                return (TextAnchor[]) h.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public static final class TextDecoration {

            /* renamed from: c, reason: collision with root package name */
            public static final TextDecoration f2555c;
            public static final TextDecoration f;
            public static final TextDecoration g;
            public static final TextDecoration h;
            public static final TextDecoration i;
            public static final /* synthetic */ TextDecoration[] j;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$TextDecoration] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$TextDecoration] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$TextDecoration] */
            /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$TextDecoration] */
            /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Style$TextDecoration] */
            static {
                ?? r0 = new Enum("None", 0);
                f2555c = r0;
                ?? r1 = new Enum("Underline", 1);
                f = r1;
                ?? r3 = new Enum("Overline", 2);
                g = r3;
                ?? r5 = new Enum("LineThrough", 3);
                h = r5;
                ?? r7 = new Enum("Blink", 4);
                i = r7;
                j = new TextDecoration[]{r0, r1, r3, r5, r7};
            }

            public static TextDecoration valueOf(String str) {
                return (TextDecoration) Enum.valueOf(TextDecoration.class, str);
            }

            public static TextDecoration[] values() {
                return (TextDecoration[]) j.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public static final class TextDirection {

            /* renamed from: c, reason: collision with root package name */
            public static final TextDirection f2556c;
            public static final TextDirection f;
            public static final /* synthetic */ TextDirection[] g;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.caverock.androidsvg.SVG$Style$TextDirection, java.lang.Enum] */
            /* JADX WARN: Type inference failed for: r1v1, types: [com.caverock.androidsvg.SVG$Style$TextDirection, java.lang.Enum] */
            static {
                ?? r0 = new Enum("LTR", 0);
                f2556c = r0;
                ?? r1 = new Enum("RTL", 1);
                f = r1;
                g = new TextDirection[]{r0, r1};
            }

            public static TextDirection valueOf(String str) {
                return (TextDirection) Enum.valueOf(TextDirection.class, str);
            }

            public static TextDirection[] values() {
                return (TextDirection[]) g.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public static final class VectorEffect {

            /* renamed from: c, reason: collision with root package name */
            public static final VectorEffect f2557c;
            public static final VectorEffect f;
            public static final /* synthetic */ VectorEffect[] g;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.caverock.androidsvg.SVG$Style$VectorEffect, java.lang.Enum] */
            /* JADX WARN: Type inference failed for: r1v1, types: [com.caverock.androidsvg.SVG$Style$VectorEffect, java.lang.Enum] */
            static {
                ?? r0 = new Enum("None", 0);
                f2557c = r0;
                ?? r1 = new Enum("NonScalingStroke", 1);
                f = r1;
                g = new VectorEffect[]{r0, r1};
            }

            public static VectorEffect valueOf(String str) {
                return (VectorEffect) Enum.valueOf(VectorEffect.class, str);
            }

            public static VectorEffect[] values() {
                return (VectorEffect[]) g.clone();
            }
        }

        public static Style a() {
            Style style = new Style();
            style.f2548c = -1L;
            Colour colour = Colour.f;
            style.f = colour;
            FillRule fillRule = FillRule.f2549c;
            style.g = fillRule;
            Float valueOf = Float.valueOf(1.0f);
            style.h = valueOf;
            style.i = null;
            style.j = valueOf;
            style.k = new Length(1.0f);
            style.l = LineCap.f2551c;
            style.m = LineJoin.f2552c;
            style.n = Float.valueOf(4.0f);
            style.o = null;
            style.p = new Length(0.0f);
            style.q = valueOf;
            style.r = colour;
            style.s = null;
            style.t = new Length(12.0f, Unit.f);
            style.u = Integer.valueOf(HttpStatusCodes.STATUS_CODE_BAD_REQUEST);
            style.v = FontStyle.f2550c;
            style.w = TextDecoration.f2555c;
            style.x = TextDirection.f2556c;
            style.y = TextAnchor.f2554c;
            Boolean bool = Boolean.TRUE;
            style.z = bool;
            style.A = null;
            style.B = null;
            style.C = null;
            style.D = null;
            style.E = bool;
            style.F = bool;
            style.G = colour;
            style.H = valueOf;
            style.I = null;
            style.J = fillRule;
            style.K = null;
            style.L = null;
            style.M = valueOf;
            style.N = null;
            style.O = valueOf;
            style.P = VectorEffect.f2557c;
            style.Q = RenderQuality.f2553c;
            return style;
        }

        public final Object clone() {
            Style style = (Style) super.clone();
            Length[] lengthArr = this.o;
            if (lengthArr != null) {
                style.o = (Length[]) lengthArr.clone();
            }
            return style;
        }
    }

    /* loaded from: classes.dex */
    public static class Svg extends SvgViewBoxContainer {
        public Length p;
        public Length q;
        public Length r;
        public Length s;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "svg";
        }
    }

    /* loaded from: classes.dex */
    public interface SvgConditional {
        Set b();

        String d();

        void f(HashSet hashSet);

        void g(HashSet hashSet);

        Set getRequiredFeatures();

        void h(String str);

        void i(HashSet hashSet);

        void j(HashSet hashSet);

        Set l();

        Set m();
    }

    /* loaded from: classes.dex */
    public static abstract class SvgConditionalElement extends SvgElement implements SvgConditional {
        public HashSet i;
        public String j;
        public HashSet k;
        public HashSet l;
        public HashSet m;

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set b() {
            return this.k;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final String d() {
            return this.j;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void f(HashSet hashSet) {
            this.i = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void g(HashSet hashSet) {
            this.m = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set getRequiredFeatures() {
            return this.i;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void h(String str) {
            this.j = str;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void i(HashSet hashSet) {
            this.l = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void j(HashSet hashSet) {
            this.k = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set l() {
            return this.l;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set m() {
            return this.m;
        }
    }

    /* loaded from: classes.dex */
    public interface SvgContainer {
        List a();

        void c(SvgObject svgObject);
    }

    /* loaded from: classes.dex */
    public static abstract class SvgElement extends SvgElementBase {
        public Box h = null;
    }

    /* loaded from: classes.dex */
    public static abstract class SvgElementBase extends SvgObject {

        /* renamed from: c, reason: collision with root package name */
        public String f2558c = null;
        public Boolean d = null;
        public Style e = null;
        public Style f = null;
        public ArrayList g = null;

        public final String toString() {
            return n();
        }
    }

    /* loaded from: classes.dex */
    public static class SvgLinearGradient extends GradientElement {
        public Length m;
        public Length n;
        public Length o;
        public Length p;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "linearGradient";
        }
    }

    /* loaded from: classes.dex */
    public static class SvgObject {

        /* renamed from: a, reason: collision with root package name */
        public SVG f2559a;
        public SvgContainer b;

        public String n() {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class SvgPaint implements Cloneable {
    }

    /* loaded from: classes.dex */
    public static abstract class SvgPreserveAspectRatioContainer extends SvgConditionalContainer {
        public PreserveAspectRatio n = null;
    }

    /* loaded from: classes.dex */
    public static class SvgRadialGradient extends GradientElement {
        public Length m;
        public Length n;
        public Length o;
        public Length p;
        public Length q;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "radialGradient";
        }
    }

    /* loaded from: classes.dex */
    public static abstract class SvgViewBoxContainer extends SvgPreserveAspectRatioContainer {
        public Box o;
    }

    /* loaded from: classes.dex */
    public static class Switch extends Group {
        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "switch";
        }
    }

    /* loaded from: classes.dex */
    public static class Symbol extends SvgViewBoxContainer implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "symbol";
        }
    }

    /* loaded from: classes.dex */
    public static class TRef extends TextContainer implements TextChild {
        public String n;
        public TextRoot o;

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final TextRoot e() {
            return this.o;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "tref";
        }
    }

    /* loaded from: classes.dex */
    public static class TSpan extends TextPositionedContainer implements TextChild {
        public TextRoot r;

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final TextRoot e() {
            return this.r;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "tspan";
        }
    }

    /* loaded from: classes.dex */
    public static class Text extends TextPositionedContainer implements TextRoot, HasTransform {
        public Matrix r;

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void k(Matrix matrix) {
            this.r = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "text";
        }
    }

    /* loaded from: classes.dex */
    public interface TextChild {
        TextRoot e();
    }

    /* loaded from: classes.dex */
    public static abstract class TextContainer extends SvgConditionalContainer {
        @Override // com.caverock.androidsvg.SVG.SvgConditionalContainer, com.caverock.androidsvg.SVG.SvgContainer
        public final void c(SvgObject svgObject) {
            if (svgObject instanceof TextChild) {
                this.i.add(svgObject);
                return;
            }
            throw new SAXException("Text content elements cannot contain " + svgObject + " elements.");
        }
    }

    /* loaded from: classes.dex */
    public static class TextPath extends TextContainer implements TextChild {
        public String n;
        public Length o;
        public TextRoot p;

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final TextRoot e() {
            return this.p;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "textPath";
        }
    }

    /* loaded from: classes.dex */
    public static abstract class TextPositionedContainer extends TextContainer {
        public ArrayList n;
        public ArrayList o;
        public ArrayList p;
        public ArrayList q;
    }

    /* loaded from: classes.dex */
    public interface TextRoot {
    }

    /* loaded from: classes.dex */
    public static class TextSequence extends SvgObject implements TextChild {

        /* renamed from: c, reason: collision with root package name */
        public String f2560c;

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final TextRoot e() {
            return null;
        }

        public final String toString() {
            return a.p(new StringBuilder("TextChild: '"), this.f2560c, "'");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Unit {

        /* renamed from: c, reason: collision with root package name */
        public static final Unit f2561c;
        public static final Unit f;
        public static final Unit g;
        public static final /* synthetic */ Unit[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Unit] */
        /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Unit] */
        /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, com.caverock.androidsvg.SVG$Unit] */
        static {
            ?? r0 = new Enum("px", 0);
            f2561c = r0;
            Enum r1 = new Enum("em", 1);
            Enum r3 = new Enum("ex", 2);
            Enum r5 = new Enum("in", 3);
            Enum r7 = new Enum("cm", 4);
            Enum r9 = new Enum("mm", 5);
            ?? r11 = new Enum("pt", 6);
            f = r11;
            Enum r13 = new Enum("pc", 7);
            ?? r15 = new Enum("percent", 8);
            g = r15;
            h = new Unit[]{r0, r1, r3, r5, r7, r9, r11, r13, r15};
        }

        public static Unit valueOf(String str) {
            return (Unit) Enum.valueOf(Unit.class, str);
        }

        public static Unit[] values() {
            return (Unit[]) h.clone();
        }
    }

    /* loaded from: classes.dex */
    public static class Use extends Group {
        public String o;
        public Length p;
        public Length q;
        public Length r;
        public Length s;

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "use";
        }
    }

    /* loaded from: classes.dex */
    public static class View extends SvgViewBoxContainer implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String n() {
            return "view";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SvgElementBase a(SvgContainer svgContainer, String str) {
        SvgElementBase a2;
        SvgElementBase svgElementBase = (SvgElementBase) svgContainer;
        if (str.equals(svgElementBase.f2558c)) {
            return svgElementBase;
        }
        for (Object obj : svgContainer.a()) {
            if (obj instanceof SvgElementBase) {
                SvgElementBase svgElementBase2 = (SvgElementBase) obj;
                if (str.equals(svgElementBase2.f2558c)) {
                    return svgElementBase2;
                }
                if ((obj instanceof SvgContainer) && (a2 = a((SvgContainer) obj, str)) != null) {
                    return a2;
                }
            }
        }
        return null;
    }

    public static SVG b(InputStream inputStream) {
        return new SVGParser().f(inputStream);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ce, code lost:
    
        if (r11 > 0) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e3  */
    /* JADX WARN: Type inference failed for: r11v2, types: [com.caverock.androidsvg.SVGAndroidRenderer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, com.caverock.androidsvg.RenderOptions] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Picture c(int r11, int r12) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVG.c(int, int):android.graphics.Picture");
    }

    public final Picture d() {
        Length length;
        Svg svg = this.f2534a;
        Box box = svg.o;
        Length length2 = svg.r;
        if (length2 != null) {
            Unit unit = length2.f;
            Unit unit2 = Unit.g;
            if (unit != unit2 && (length = svg.s) != null && length.f != unit2) {
                return c((int) Math.ceil(length2.a(96.0f)), (int) Math.ceil(this.f2534a.s.a(96.0f)));
            }
        }
        if (length2 != null && box != null) {
            return c((int) Math.ceil(length2.a(96.0f)), (int) Math.ceil((box.d * r0) / box.f2538c));
        }
        Length length3 = svg.s;
        if (length3 != null && box != null) {
            return c((int) Math.ceil((box.f2538c * r0) / box.d), (int) Math.ceil(length3.a(96.0f)));
        }
        return c(512, 512);
    }

    public final SvgElementBase e(String str) {
        if (str != null) {
            if (str.startsWith("\"") && str.endsWith("\"")) {
                str = str.substring(1, str.length() - 1).replace("\\\"", "\"");
            } else if (str.startsWith("'") && str.endsWith("'")) {
                str = str.substring(1, str.length() - 1).replace("\\'", "'");
            }
            String replace = str.replace("\\\n", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replace("\\A", "\n");
            if (replace.length() > 1 && replace.startsWith("#")) {
                String substring = replace.substring(1);
                HashMap hashMap = this.f2535c;
                if (substring != null && substring.length() != 0) {
                    if (substring.equals(this.f2534a.f2558c)) {
                        return this.f2534a;
                    }
                    if (hashMap.containsKey(substring)) {
                        return (SvgElementBase) hashMap.get(substring);
                    }
                    SvgElementBase a2 = a(this.f2534a, substring);
                    hashMap.put(substring, a2);
                    return a2;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public final void f(float f) {
        Svg svg = this.f2534a;
        if (svg != null) {
            svg.s = new Length(f);
            return;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public final void g(float f) {
        Svg svg = this.f2534a;
        if (svg != null) {
            svg.r = new Length(f);
            return;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    /* loaded from: classes.dex */
    public static class Length implements Cloneable {

        /* renamed from: c, reason: collision with root package name */
        public final float f2544c;
        public final Unit f;

        public Length(float f, Unit unit) {
            this.f2544c = f;
            this.f = unit;
        }

        public final float a(float f) {
            float f2;
            float f3;
            int ordinal = this.f.ordinal();
            float f4 = this.f2544c;
            if (ordinal != 0) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal != 5) {
                            if (ordinal != 6) {
                                if (ordinal != 7) {
                                    return f4;
                                }
                                f2 = f4 * f;
                                f3 = 6.0f;
                            } else {
                                f2 = f4 * f;
                                f3 = 72.0f;
                            }
                        } else {
                            f2 = f4 * f;
                            f3 = 25.4f;
                        }
                    } else {
                        f2 = f4 * f;
                        f3 = 2.54f;
                    }
                    return f2 / f3;
                }
                return f4 * f;
            }
            return f4;
        }

        public final float b(SVGAndroidRenderer sVGAndroidRenderer) {
            float sqrt;
            if (this.f == Unit.g) {
                SVGAndroidRenderer.RendererState rendererState = sVGAndroidRenderer.d;
                Box box = rendererState.g;
                if (box == null) {
                    box = rendererState.f;
                }
                float f = this.f2544c;
                if (box == null) {
                    return f;
                }
                float f2 = box.f2538c;
                if (f2 == box.d) {
                    sqrt = f * f2;
                } else {
                    sqrt = f * ((float) (Math.sqrt((r0 * r0) + (f2 * f2)) / 1.414213562373095d));
                }
                return sqrt / 100.0f;
            }
            return d(sVGAndroidRenderer);
        }

        public final float c(SVGAndroidRenderer sVGAndroidRenderer, float f) {
            if (this.f == Unit.g) {
                return (this.f2544c * f) / 100.0f;
            }
            return d(sVGAndroidRenderer);
        }

        public final float d(SVGAndroidRenderer sVGAndroidRenderer) {
            float textSize;
            int ordinal = this.f.ordinal();
            float f = this.f2544c;
            switch (ordinal) {
                case 1:
                    textSize = sVGAndroidRenderer.d.d.getTextSize();
                    break;
                case 2:
                    textSize = sVGAndroidRenderer.d.d.getTextSize() / 2.0f;
                    break;
                case 3:
                    return f * sVGAndroidRenderer.b;
                case 4:
                    return (f * sVGAndroidRenderer.b) / 2.54f;
                case 5:
                    return (f * sVGAndroidRenderer.b) / 25.4f;
                case 6:
                    return (f * sVGAndroidRenderer.b) / 72.0f;
                case 7:
                    return (f * sVGAndroidRenderer.b) / 6.0f;
                case 8:
                    SVGAndroidRenderer.RendererState rendererState = sVGAndroidRenderer.d;
                    Box box = rendererState.g;
                    if (box == null) {
                        box = rendererState.f;
                    }
                    if (box != null) {
                        return (f * box.f2538c) / 100.0f;
                    }
                default:
                    return f;
            }
            return textSize * f;
        }

        public final float e(SVGAndroidRenderer sVGAndroidRenderer) {
            if (this.f == Unit.g) {
                SVGAndroidRenderer.RendererState rendererState = sVGAndroidRenderer.d;
                Box box = rendererState.g;
                if (box == null) {
                    box = rendererState.f;
                }
                float f = this.f2544c;
                if (box == null) {
                    return f;
                }
                return (f * box.d) / 100.0f;
            }
            return d(sVGAndroidRenderer);
        }

        public final boolean f() {
            if (this.f2544c < 0.0f) {
                return true;
            }
            return false;
        }

        public final boolean g() {
            if (this.f2544c == 0.0f) {
                return true;
            }
            return false;
        }

        public final String toString() {
            return String.valueOf(this.f2544c) + this.f;
        }

        public Length(float f) {
            this.f2544c = f;
            this.f = Unit.f2561c;
        }
    }

    /* loaded from: classes.dex */
    public static class Box {

        /* renamed from: a, reason: collision with root package name */
        public float f2537a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public float f2538c;
        public float d;

        public Box(float f, float f2, float f3, float f4) {
            this.f2537a = f;
            this.b = f2;
            this.f2538c = f3;
            this.d = f4;
        }

        public final float a() {
            return this.f2537a + this.f2538c;
        }

        public final float b() {
            return this.b + this.d;
        }

        public final String toString() {
            return "[" + this.f2537a + " " + this.b + " " + this.f2538c + " " + this.d + "]";
        }

        public Box(Box box) {
            this.f2537a = box.f2537a;
            this.b = box.b;
            this.f2538c = box.f2538c;
            this.d = box.d;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class SvgConditionalContainer extends SvgElement implements SvgContainer, SvgConditional {
        public List i = new ArrayList();
        public HashSet j = null;
        public String k = null;
        public HashSet l = null;
        public HashSet m = null;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List a() {
            return this.i;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set b() {
            return null;
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void c(SvgObject svgObject) {
            this.i.add(svgObject);
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final String d() {
            return this.k;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void f(HashSet hashSet) {
            this.j = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void g(HashSet hashSet) {
            this.m = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set getRequiredFeatures() {
            return this.j;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void h(String str) {
            this.k = str;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void i(HashSet hashSet) {
            this.l = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set l() {
            return this.l;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set m() {
            return this.m;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void j(HashSet hashSet) {
        }
    }
}
