package androidx.transition;

import android.animation.TypeEvaluator;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
class TransitionUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f1709a;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
        @DoNotInline
        public static Bitmap a(Picture picture) {
            return Bitmap.createBitmap(picture);
        }
    }

    /* loaded from: classes.dex */
    public static class MatrixEvaluator implements TypeEvaluator<Matrix> {

        /* renamed from: a, reason: collision with root package name */
        public final float[] f1710a = new float[9];
        public final float[] b = new float[9];

        /* renamed from: c, reason: collision with root package name */
        public final Matrix f1711c = new Matrix();

        @Override // android.animation.TypeEvaluator
        public final Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            float[] fArr = this.f1710a;
            matrix.getValues(fArr);
            float[] fArr2 = this.b;
            matrix2.getValues(fArr2);
            for (int i = 0; i < 9; i++) {
                float f2 = fArr2[i];
                float f3 = fArr[i];
                fArr2[i] = android.support.v4.media.a.a(f2, f3, f, f3);
            }
            Matrix matrix3 = this.f1711c;
            matrix3.setValues(fArr2);
            return matrix3;
        }
    }

    static {
        boolean z;
        if (Build.VERSION.SDK_INT >= 28) {
            z = true;
        } else {
            z = false;
        }
        f1709a = z;
    }
}
