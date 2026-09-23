package androidx.constraintlayout.motion.widget;

import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;

/* loaded from: classes.dex */
public class KeyCycle extends Key {
    public float b;

    /* renamed from: c, reason: collision with root package name */
    public float f561c;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public float l;

    /* loaded from: classes.dex */
    public static class Loader {
        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sparseIntArray.append(R.styleable.KeyCycle_motionTarget, 1);
            sparseIntArray.append(R.styleable.KeyCycle_framePosition, 2);
            sparseIntArray.append(R.styleable.KeyCycle_transitionEasing, 3);
            sparseIntArray.append(R.styleable.KeyCycle_curveFit, 4);
            sparseIntArray.append(R.styleable.KeyCycle_waveShape, 5);
            sparseIntArray.append(R.styleable.KeyCycle_wavePeriod, 6);
            sparseIntArray.append(R.styleable.KeyCycle_waveOffset, 7);
            sparseIntArray.append(R.styleable.KeyCycle_waveVariesBy, 8);
            sparseIntArray.append(R.styleable.KeyCycle_android_alpha, 9);
            sparseIntArray.append(R.styleable.KeyCycle_android_elevation, 10);
            sparseIntArray.append(R.styleable.KeyCycle_android_rotation, 11);
            sparseIntArray.append(R.styleable.KeyCycle_android_rotationX, 12);
            sparseIntArray.append(R.styleable.KeyCycle_android_rotationY, 13);
            sparseIntArray.append(R.styleable.KeyCycle_transitionPathRotate, 14);
            sparseIntArray.append(R.styleable.KeyCycle_android_scaleX, 15);
            sparseIntArray.append(R.styleable.KeyCycle_android_scaleY, 16);
            sparseIntArray.append(R.styleable.KeyCycle_android_translationX, 17);
            sparseIntArray.append(R.styleable.KeyCycle_android_translationY, 18);
            sparseIntArray.append(R.styleable.KeyCycle_android_translationZ, 19);
            sparseIntArray.append(R.styleable.KeyCycle_motionProgress, 20);
            sparseIntArray.append(R.styleable.KeyCycle_wavePhase, 21);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.motion.widget.Key, java.lang.Object, androidx.constraintlayout.motion.widget.KeyCycle] */
    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: a */
    public final Key clone() {
        ?? obj = new Object();
        obj.b = Float.NaN;
        obj.f561c = Float.NaN;
        obj.d = Float.NaN;
        obj.e = Float.NaN;
        obj.f = Float.NaN;
        obj.g = Float.NaN;
        obj.h = Float.NaN;
        obj.i = Float.NaN;
        obj.j = Float.NaN;
        obj.k = Float.NaN;
        obj.l = Float.NaN;
        obj.f559a = new HashMap();
        obj.f559a = this.f559a;
        obj.b = this.b;
        obj.f561c = this.f561c;
        obj.d = this.d;
        obj.e = this.e;
        obj.f = this.f;
        obj.g = this.g;
        obj.h = this.h;
        obj.i = this.i;
        obj.j = this.j;
        obj.k = this.k;
        obj.l = this.l;
        return obj;
    }
}
