package androidx.constraintlayout.motion.widget;

import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R;

/* loaded from: classes.dex */
public class KeyPosition extends KeyPositionBase {

    /* loaded from: classes.dex */
    public static class Loader {
        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sparseIntArray.append(R.styleable.KeyPosition_motionTarget, 1);
            sparseIntArray.append(R.styleable.KeyPosition_framePosition, 2);
            sparseIntArray.append(R.styleable.KeyPosition_transitionEasing, 3);
            sparseIntArray.append(R.styleable.KeyPosition_curveFit, 4);
            sparseIntArray.append(R.styleable.KeyPosition_drawPath, 5);
            sparseIntArray.append(R.styleable.KeyPosition_percentX, 6);
            sparseIntArray.append(R.styleable.KeyPosition_percentY, 7);
            sparseIntArray.append(R.styleable.KeyPosition_keyPositionType, 9);
            sparseIntArray.append(R.styleable.KeyPosition_sizePercent, 8);
            sparseIntArray.append(R.styleable.KeyPosition_percentWidth, 11);
            sparseIntArray.append(R.styleable.KeyPosition_percentHeight, 12);
            sparseIntArray.append(R.styleable.KeyPosition_pathMotionArc, 10);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.motion.widget.Key, java.lang.Object] */
    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: a */
    public final Key clone() {
        ?? obj = new Object();
        obj.f559a = this.f559a;
        return obj;
    }
}
