package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.RestrictTo;

/* loaded from: classes3.dex */
public class ShapeAppearancePathProvider {

    /* renamed from: a, reason: collision with root package name */
    public final ShapePath[] f11891a = new ShapePath[4];
    public final Matrix[] b = new Matrix[4];

    /* renamed from: c, reason: collision with root package name */
    public final Matrix[] f11892c = new Matrix[4];
    public final PointF d = new PointF();
    public final Path e = new Path();
    public final Path f = new Path();
    public final ShapePath g = new ShapePath();
    public final float[] h = new float[2];
    public final float[] i = new float[2];
    public final Path j = new Path();
    public final Path k = new Path();
    public final boolean l = true;

    /* loaded from: classes3.dex */
    public static class Lazy {

        /* renamed from: a, reason: collision with root package name */
        public static final ShapeAppearancePathProvider f11893a = new ShapeAppearancePathProvider();
    }

    @RestrictTo
    /* loaded from: classes3.dex */
    public interface PathListener {
        void a(ShapePath shapePath, Matrix matrix, int i);

        void b(ShapePath shapePath, Matrix matrix, int i);
    }

    /* loaded from: classes3.dex */
    public static final class ShapeAppearancePathSpec {
    }

    public ShapeAppearancePathProvider() {
        for (int i = 0; i < 4; i++) {
            this.f11891a[i] = new ShapePath();
            this.b[i] = new Matrix();
            this.f11892c[i] = new Matrix();
        }
    }

    public static ShapeAppearancePathProvider b() {
        return Lazy.f11893a;
    }

    public final void a(ShapeAppearanceModel shapeAppearanceModel, float[] fArr, float f, RectF rectF, PathListener pathListener, Path path) {
        Matrix[] matrixArr;
        float[] fArr2;
        int i;
        ShapePath[] shapePathArr;
        Matrix[] matrixArr2;
        float abs;
        EdgeTreatment edgeTreatment;
        CornerSize clampedCornerSize;
        CornerTreatment cornerTreatment;
        int i2;
        path.rewind();
        Path path2 = this.e;
        path2.rewind();
        Path path3 = this.f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i3 = 0;
        while (true) {
            matrixArr = this.f11892c;
            fArr2 = this.h;
            shapePathArr = this.f11891a;
            matrixArr2 = this.b;
            if (i3 >= 4) {
                break;
            }
            if (fArr == null) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            clampedCornerSize = shapeAppearanceModel.f;
                        } else {
                            clampedCornerSize = shapeAppearanceModel.e;
                        }
                    } else {
                        clampedCornerSize = shapeAppearanceModel.h;
                    }
                } else {
                    clampedCornerSize = shapeAppearanceModel.g;
                }
            } else {
                clampedCornerSize = new ClampedCornerSize(fArr[i3]);
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        cornerTreatment = shapeAppearanceModel.b;
                    } else {
                        cornerTreatment = shapeAppearanceModel.f11887a;
                    }
                } else {
                    cornerTreatment = shapeAppearanceModel.d;
                }
            } else {
                cornerTreatment = shapeAppearanceModel.f11888c;
            }
            ShapePath shapePath = shapePathArr[i3];
            cornerTreatment.getClass();
            cornerTreatment.a(shapePath, f, clampedCornerSize.a(rectF));
            int i4 = i3 + 1;
            float f2 = (i4 % 4) * 90;
            matrixArr2[i3].reset();
            PointF pointF = this.d;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        i2 = i3;
                        pointF.set(rectF.right, rectF.top);
                    } else {
                        i2 = i3;
                        pointF.set(rectF.left, rectF.top);
                    }
                } else {
                    i2 = i3;
                    pointF.set(rectF.left, rectF.bottom);
                }
            } else {
                i2 = i3;
                pointF.set(rectF.right, rectF.bottom);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f2);
            ShapePath shapePath2 = shapePathArr[i2];
            fArr2[0] = shapePath2.f11895c;
            fArr2[1] = shapePath2.d;
            matrixArr2[i2].mapPoints(fArr2);
            matrixArr[i2].reset();
            matrixArr[i2].setTranslate(fArr2[0], fArr2[1]);
            matrixArr[i2].preRotate(f2);
            i3 = i4;
        }
        char c2 = 1;
        int i5 = 0;
        for (i = 4; i5 < i; i = 4) {
            ShapePath shapePath3 = shapePathArr[i5];
            fArr2[0] = shapePath3.f11894a;
            fArr2[c2] = shapePath3.b;
            matrixArr2[i5].mapPoints(fArr2);
            if (i5 == 0) {
                path.moveTo(fArr2[0], fArr2[c2]);
            } else {
                path.lineTo(fArr2[0], fArr2[c2]);
            }
            shapePathArr[i5].b(matrixArr2[i5], path);
            if (pathListener != null) {
                pathListener.a(shapePathArr[i5], matrixArr2[i5], i5);
            }
            int i6 = i5 + 1;
            int i7 = i6 % 4;
            ShapePath shapePath4 = shapePathArr[i5];
            fArr2[0] = shapePath4.f11895c;
            fArr2[1] = shapePath4.d;
            matrixArr2[i5].mapPoints(fArr2);
            ShapePath shapePath5 = shapePathArr[i7];
            float f3 = shapePath5.f11894a;
            float[] fArr3 = this.i;
            fArr3[0] = f3;
            fArr3[1] = shapePath5.b;
            matrixArr2[i7].mapPoints(fArr3);
            Matrix[] matrixArr3 = matrixArr;
            double d = fArr2[0] - fArr3[0];
            float f4 = fArr2[1] - fArr3[1];
            ShapePath[] shapePathArr2 = shapePathArr;
            float max = Math.max(((float) Math.hypot(d, f4)) - 0.001f, 0.0f);
            ShapePath shapePath6 = shapePathArr2[i5];
            fArr2[0] = shapePath6.f11895c;
            fArr2[1] = shapePath6.d;
            matrixArr2[i5].mapPoints(fArr2);
            if (i5 != 1 && i5 != 3) {
                abs = Math.abs(rectF.centerY() - fArr2[1]);
            } else {
                abs = Math.abs(rectF.centerX() - fArr2[0]);
            }
            ShapePath shapePath7 = this.g;
            shapePath7.e(0.0f, 0.0f, 270.0f, 0.0f);
            if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        edgeTreatment = shapeAppearanceModel.j;
                    } else {
                        edgeTreatment = shapeAppearanceModel.i;
                    }
                } else {
                    edgeTreatment = shapeAppearanceModel.l;
                }
            } else {
                edgeTreatment = shapeAppearanceModel.k;
            }
            edgeTreatment.b(max, abs, f, shapePath7);
            Path path4 = this.j;
            path4.reset();
            shapePath7.b(matrixArr3[i5], path4);
            if (!this.l || (!edgeTreatment.a() && !c(path4, i5) && !c(path4, i7))) {
                c2 = 1;
                shapePath7.b(matrixArr3[i5], path);
            } else {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr2[0] = shapePath7.f11894a;
                c2 = 1;
                fArr2[1] = shapePath7.b;
                matrixArr3[i5].mapPoints(fArr2);
                path2.moveTo(fArr2[0], fArr2[1]);
                shapePath7.b(matrixArr3[i5], path2);
            }
            if (pathListener != null) {
                pathListener.b(shapePath7, matrixArr3[i5], i5);
            }
            i5 = i6;
            shapePathArr = shapePathArr2;
            matrixArr = matrixArr3;
        }
        path.close();
        path2.close();
        if (!path2.isEmpty()) {
            path.op(path2, Path.Op.UNION);
        }
    }

    public final boolean c(Path path, int i) {
        Path path2 = this.k;
        path2.reset();
        this.f11891a[i].b(this.b[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (!rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f)) {
            return true;
        }
        return false;
    }
}
