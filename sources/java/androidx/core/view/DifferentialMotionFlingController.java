package androidx.core.view;

import android.content.Context;
import android.view.VelocityTracker;
import androidx.annotation.VisibleForTesting;

/* loaded from: classes.dex */
public class DifferentialMotionFlingController {

    /* renamed from: a, reason: collision with root package name */
    public final Context f772a;
    public final DifferentialMotionFlingTarget b;

    /* renamed from: c, reason: collision with root package name */
    public VelocityTracker f773c;
    public float d;
    public int e = -1;
    public int f = -1;
    public int g = -1;
    public final int[] h = {Integer.MAX_VALUE, 0};

    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface DifferentialVelocityProvider {
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface FlingVelocityThresholdCalculator {
    }

    public DifferentialMotionFlingController(Context context, DifferentialMotionFlingTarget differentialMotionFlingTarget) {
        this.f772a = context;
        this.b = differentialMotionFlingTarget;
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x00bc, code lost:
    
        if (r5 >= 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0075, code lost:
    
        if (r14 >= 0) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0238  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.view.MotionEvent r28, int r29) {
        /*
            Method dump skipped, instructions count: 705
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.DifferentialMotionFlingController.a(android.view.MotionEvent, int):void");
    }
}
