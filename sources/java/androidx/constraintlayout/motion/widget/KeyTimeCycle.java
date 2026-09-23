package androidx.constraintlayout.motion.widget;

import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;

/* loaded from: classes.dex */
public class KeyTimeCycle extends Key {
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public float f562c;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public float l;
    public float m;
    public float n;

    /* loaded from: classes.dex */
    public static class Loader {
        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_alpha, 1);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_elevation, 2);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_rotation, 4);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_rotationX, 5);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_rotationY, 6);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_scaleX, 7);
            sparseIntArray.append(R.styleable.KeyTimeCycle_transitionPathRotate, 8);
            sparseIntArray.append(R.styleable.KeyTimeCycle_transitionEasing, 9);
            sparseIntArray.append(R.styleable.KeyTimeCycle_motionTarget, 10);
            sparseIntArray.append(R.styleable.KeyTimeCycle_framePosition, 12);
            sparseIntArray.append(R.styleable.KeyTimeCycle_curveFit, 13);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_scaleY, 14);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_translationX, 15);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_translationY, 16);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_translationZ, 17);
            sparseIntArray.append(R.styleable.KeyTimeCycle_motionProgress, 18);
            sparseIntArray.append(R.styleable.KeyTimeCycle_wavePeriod, 20);
            sparseIntArray.append(R.styleable.KeyTimeCycle_waveOffset, 21);
            sparseIntArray.append(R.styleable.KeyTimeCycle_waveShape, 19);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.motion.widget.Key, java.lang.Object, androidx.constraintlayout.motion.widget.KeyTimeCycle] */
    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: a */
    public final Key clone() {
        ?? obj = new Object();
        obj.b = -1;
        obj.f562c = Float.NaN;
        obj.d = Float.NaN;
        obj.e = Float.NaN;
        obj.f = Float.NaN;
        obj.g = Float.NaN;
        obj.h = Float.NaN;
        obj.i = Float.NaN;
        obj.j = Float.NaN;
        obj.k = Float.NaN;
        obj.l = Float.NaN;
        obj.m = Float.NaN;
        obj.n = Float.NaN;
        obj.f559a = new HashMap();
        obj.f559a = this.f559a;
        obj.b = this.b;
        obj.n = this.n;
        obj.f562c = this.f562c;
        obj.d = this.d;
        obj.e = this.e;
        obj.h = this.h;
        obj.f = this.f;
        obj.g = this.g;
        obj.i = this.i;
        obj.j = this.j;
        obj.k = this.k;
        obj.l = this.l;
        obj.m = this.m;
        return obj;
    }
}
