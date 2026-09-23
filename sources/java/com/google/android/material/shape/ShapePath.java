package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.shadow.ShadowRenderer;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ShapePath {

    /* renamed from: a, reason: collision with root package name */
    public float f11894a;
    public float b;

    /* renamed from: c, reason: collision with root package name */
    public float f11895c;
    public float d;
    public float e;
    public float f;
    public final ArrayList g = new ArrayList();
    public final ArrayList h = new ArrayList();

    /* renamed from: com.google.android.material.shape.ShapePath$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends ShadowCompatOperation {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ArrayList f11896c;
        public final /* synthetic */ Matrix d;

        public AnonymousClass1(ArrayList arrayList, Matrix matrix) {
            this.f11896c = arrayList;
            this.d = matrix;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        public final void a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            ArrayList arrayList = this.f11896c;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                ((ShadowCompatOperation) obj).a(this.d, shadowRenderer, i, canvas);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ArcShadowOperation extends ShadowCompatOperation {

        /* renamed from: c, reason: collision with root package name */
        public final PathArcOperation f11897c;

        public ArcShadowOperation(PathArcOperation pathArcOperation) {
            this.f11897c = pathArcOperation;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        public final void a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            PathArcOperation pathArcOperation = this.f11897c;
            shadowRenderer.a(canvas, matrix, new RectF(pathArcOperation.b, pathArcOperation.f11900c, pathArcOperation.d, pathArcOperation.e), i, pathArcOperation.f, pathArcOperation.g);
        }
    }

    /* loaded from: classes3.dex */
    public static class InnerCornerShadowOperation extends ShadowCompatOperation {

        /* renamed from: c, reason: collision with root package name */
        public final PathLineOperation f11898c;
        public final PathLineOperation d;
        public final float e;
        public final float f;

        public InnerCornerShadowOperation(PathLineOperation pathLineOperation, PathLineOperation pathLineOperation2, float f, float f2) {
            this.f11898c = pathLineOperation;
            this.d = pathLineOperation2;
            this.e = f;
            this.f = f2;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        public final void a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            float f;
            float f2;
            Canvas canvas2;
            float f3;
            int i2;
            ShadowRenderer shadowRenderer2;
            float b = ((b() - c()) + 360.0f) % 360.0f;
            if (b > 180.0f) {
                b -= 360.0f;
            }
            if (b <= 0.0f) {
                PathLineOperation pathLineOperation = this.f11898c;
                float f4 = pathLineOperation.b;
                float f5 = this.e;
                double d = f4 - f5;
                float f6 = pathLineOperation.f11901c;
                float f7 = this.f;
                double hypot = Math.hypot(d, f6 - f7);
                PathLineOperation pathLineOperation2 = this.d;
                double hypot2 = Math.hypot(pathLineOperation2.b - pathLineOperation.b, pathLineOperation2.f11901c - pathLineOperation.f11901c);
                float min = (float) Math.min(i, Math.min(hypot, hypot2));
                double d2 = min;
                float f8 = -b;
                float f9 = b;
                double tan = Math.tan(Math.toRadians(f8 / 2.0f)) * d2;
                Matrix matrix2 = this.f11903a;
                if (hypot > tan) {
                    f = 0.0f;
                    RectF rectF = new RectF(0.0f, 0.0f, (float) (hypot - tan), 0.0f);
                    matrix2.set(matrix);
                    matrix2.preTranslate(f5, f7);
                    matrix2.preRotate(c());
                    shadowRenderer.b(canvas, matrix2, rectF, i);
                } else {
                    f = 0.0f;
                }
                float f10 = min * 2.0f;
                RectF rectF2 = new RectF(f, f, f10, f10);
                matrix2.set(matrix);
                matrix2.preTranslate(pathLineOperation.b, pathLineOperation.f11901c);
                matrix2.preRotate(c());
                matrix2.preTranslate((float) ((-tan) - d2), (-2.0f) * min);
                int i3 = (int) min;
                float[] fArr = {(float) (d2 + tan), f10};
                shadowRenderer.getClass();
                if (b > 0.0f) {
                    f2 = f8;
                    canvas2 = canvas;
                    f3 = 450.0f + f9;
                    shadowRenderer2 = shadowRenderer;
                    i2 = i3;
                } else {
                    f2 = f9;
                    canvas2 = canvas;
                    f3 = 450.0f;
                    i2 = i3;
                    shadowRenderer2 = shadowRenderer;
                }
                shadowRenderer2.a(canvas2, matrix2, rectF2, i2, f3, f2);
                Path path = shadowRenderer2.g;
                path.rewind();
                path.moveTo(fArr[0], fArr[1]);
                path.arcTo(rectF2, f3, f2);
                path.close();
                canvas2.save();
                canvas2.concat(matrix2);
                canvas2.scale(1.0f, rectF2.height() / rectF2.width());
                canvas2.drawPath(path, shadowRenderer2.h);
                canvas2.drawPath(path, shadowRenderer2.f11872a);
                canvas2.restore();
                if (hypot2 > tan) {
                    RectF rectF3 = new RectF(0.0f, 0.0f, (float) (hypot2 - tan), 0.0f);
                    matrix2.set(matrix);
                    matrix2.preTranslate(pathLineOperation.b, pathLineOperation.f11901c);
                    matrix2.preRotate(b());
                    matrix2.preTranslate((float) tan, 0.0f);
                    shadowRenderer2.b(canvas2, matrix2, rectF3, i);
                }
            }
        }

        public final float b() {
            float f = this.d.f11901c;
            PathLineOperation pathLineOperation = this.f11898c;
            return (float) Math.toDegrees(Math.atan((f - pathLineOperation.f11901c) / (r0.b - pathLineOperation.b)));
        }

        public final float c() {
            PathLineOperation pathLineOperation = this.f11898c;
            return (float) Math.toDegrees(Math.atan((pathLineOperation.f11901c - this.f) / (pathLineOperation.b - this.e)));
        }
    }

    /* loaded from: classes3.dex */
    public static class LineShadowOperation extends ShadowCompatOperation {

        /* renamed from: c, reason: collision with root package name */
        public final PathLineOperation f11899c;
        public final float d;
        public final float e;

        public LineShadowOperation(PathLineOperation pathLineOperation, float f, float f2) {
            this.f11899c = pathLineOperation;
            this.d = f;
            this.e = f2;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        public final void a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            PathLineOperation pathLineOperation = this.f11899c;
            float f = pathLineOperation.f11901c;
            float f2 = this.e;
            float f3 = pathLineOperation.b;
            float f4 = this.d;
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f2, f3 - f4), 0.0f);
            Matrix matrix2 = this.f11903a;
            matrix2.set(matrix);
            matrix2.preTranslate(f4, f2);
            matrix2.preRotate(b());
            shadowRenderer.b(canvas, matrix2, rectF, i);
        }

        public final float b() {
            PathLineOperation pathLineOperation = this.f11899c;
            return (float) Math.toDegrees(Math.atan((pathLineOperation.f11901c - this.e) / (pathLineOperation.b - this.d)));
        }
    }

    /* loaded from: classes3.dex */
    public static class PathArcOperation extends PathOperation {
        public static final RectF h = new RectF();
        public final float b;

        /* renamed from: c, reason: collision with root package name */
        public final float f11900c;
        public final float d;
        public final float e;
        public float f;
        public float g;

        public PathArcOperation(float f, float f2, float f3, float f4) {
            this.b = f;
            this.f11900c = f2;
            this.d = f3;
            this.e = f4;
        }

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f11902a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            float f = this.d;
            float f2 = this.e;
            RectF rectF = h;
            rectF.set(this.b, this.f11900c, f, f2);
            path.arcTo(rectF, this.f, this.g, false);
            path.transform(matrix);
        }
    }

    /* loaded from: classes3.dex */
    public static class PathCubicOperation extends PathOperation {
        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f11902a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.cubicTo(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
            path.transform(matrix);
        }
    }

    /* loaded from: classes3.dex */
    public static class PathLineOperation extends PathOperation {
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public float f11901c;

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f11902a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.b, this.f11901c);
            path.transform(matrix);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class PathOperation {

        /* renamed from: a, reason: collision with root package name */
        public final Matrix f11902a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    /* loaded from: classes3.dex */
    public static class PathQuadOperation extends PathOperation {
        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f11902a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.quadTo(0.0f, 0.0f, 0.0f, 0.0f);
            path.transform(matrix);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ShadowCompatOperation {
        public static final Matrix b = new Matrix();

        /* renamed from: a, reason: collision with root package name */
        public final Matrix f11903a = new Matrix();

        public abstract void a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas);
    }

    public ShapePath() {
        e(0.0f, 0.0f, 270.0f, 0.0f);
    }

    public final void a(float f) {
        float f2 = this.e;
        if (f2 != f) {
            float f3 = ((f - f2) + 360.0f) % 360.0f;
            if (f3 > 180.0f) {
                return;
            }
            float f4 = this.f11895c;
            float f5 = this.d;
            PathArcOperation pathArcOperation = new PathArcOperation(f4, f5, f4, f5);
            pathArcOperation.f = this.e;
            pathArcOperation.g = f3;
            this.h.add(new ArcShadowOperation(pathArcOperation));
            this.e = f;
        }
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.g;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((PathOperation) arrayList.get(i)).a(matrix, path);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.shape.ShapePath$PathOperation, com.google.android.material.shape.ShapePath$PathLineOperation, java.lang.Object] */
    public final void c(float f, float f2) {
        ?? pathOperation = new PathOperation();
        pathOperation.b = f;
        pathOperation.f11901c = f2;
        this.g.add(pathOperation);
        LineShadowOperation lineShadowOperation = new LineShadowOperation(pathOperation, this.f11895c, this.d);
        float b = lineShadowOperation.b() + 270.0f;
        float b2 = lineShadowOperation.b() + 270.0f;
        a(b);
        this.h.add(lineShadowOperation);
        this.e = b2;
        this.f11895c = f;
        this.d = f2;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.material.shape.ShapePath$PathOperation, com.google.android.material.shape.ShapePath$PathLineOperation, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.material.shape.ShapePath$PathOperation, com.google.android.material.shape.ShapePath$PathLineOperation, java.lang.Object] */
    public final void d(float f, float f2, float f3) {
        if ((Math.abs(f - this.f11895c) < 0.001f && Math.abs(0.0f - this.d) < 0.001f) || (Math.abs(f - f2) < 0.001f && Math.abs(0.0f - f3) < 0.001f)) {
            c(f2, f3);
            return;
        }
        ?? pathOperation = new PathOperation();
        pathOperation.b = f;
        pathOperation.f11901c = 0.0f;
        ArrayList arrayList = this.g;
        arrayList.add(pathOperation);
        ?? pathOperation2 = new PathOperation();
        pathOperation2.b = f2;
        pathOperation2.f11901c = f3;
        arrayList.add(pathOperation2);
        InnerCornerShadowOperation innerCornerShadowOperation = new InnerCornerShadowOperation(pathOperation, pathOperation2, this.f11895c, this.d);
        float b = ((innerCornerShadowOperation.b() - innerCornerShadowOperation.c()) + 360.0f) % 360.0f;
        if (b > 180.0f) {
            b -= 360.0f;
        }
        if (b > 0.0f) {
            c(f, 0.0f);
            c(f2, f3);
            return;
        }
        float c2 = innerCornerShadowOperation.c() + 270.0f;
        float b2 = innerCornerShadowOperation.b() + 270.0f;
        a(c2);
        this.h.add(innerCornerShadowOperation);
        this.e = b2;
        this.f11895c = f2;
        this.d = f3;
    }

    public final void e(float f, float f2, float f3, float f4) {
        this.f11894a = f;
        this.b = f2;
        this.f11895c = f;
        this.d = f2;
        this.e = f3;
        this.f = (f3 + f4) % 360.0f;
        this.g.clear();
        this.h.clear();
    }
}
