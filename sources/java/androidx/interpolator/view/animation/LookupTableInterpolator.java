package androidx.interpolator.view.animation;

import android.support.v4.media.a;
import android.view.animation.Interpolator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class LookupTableInterpolator implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f1189a;
    public final float b;

    public LookupTableInterpolator(float[] fArr) {
        this.f1189a = fArr;
        this.b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f1189a;
        int min = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.b;
        float f3 = (f - (min * f2)) / f2;
        float f4 = fArr[min];
        return a.a(fArr[min + 1], f4, f3, f4);
    }
}
