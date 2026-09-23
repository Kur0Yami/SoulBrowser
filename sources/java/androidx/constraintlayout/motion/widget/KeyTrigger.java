package androidx.constraintlayout.motion.widget;

import android.graphics.RectF;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;

/* loaded from: classes.dex */
public class KeyTrigger extends Key {
    public View b;

    /* renamed from: c, reason: collision with root package name */
    public HashMap f563c;

    /* loaded from: classes.dex */
    public static class Loader {
        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            sparseIntArray.append(R.styleable.KeyTrigger_onCross, 4);
            sparseIntArray.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            sparseIntArray.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            sparseIntArray.append(R.styleable.KeyTrigger_motionTarget, 7);
            sparseIntArray.append(R.styleable.KeyTrigger_triggerId, 6);
            sparseIntArray.append(R.styleable.KeyTrigger_triggerSlack, 5);
            sparseIntArray.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            sparseIntArray.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            sparseIntArray.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            sparseIntArray.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            sparseIntArray.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            sparseIntArray.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.motion.widget.Key, java.lang.Object, androidx.constraintlayout.motion.widget.KeyTrigger] */
    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: a */
    public final Key clone() {
        ?? obj = new Object();
        obj.b = null;
        new RectF();
        new RectF();
        obj.f563c = new HashMap();
        obj.f559a = new HashMap();
        obj.f559a = this.f559a;
        obj.b = this.b;
        obj.f563c = this.f563c;
        return obj;
    }
}
