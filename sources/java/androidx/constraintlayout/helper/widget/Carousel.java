package androidx.constraintlayout.helper.widget;

import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;

/* loaded from: classes.dex */
public class Carousel extends MotionHelper {
    public Adapter o;

    /* renamed from: androidx.constraintlayout.helper.widget.Carousel$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: androidx.constraintlayout.helper.widget.Carousel$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC00011 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface Adapter {
        int count();
    }

    public int getCount() {
        Adapter adapter = this.o;
        if (adapter != null) {
            return adapter.count();
        }
        return 0;
    }

    public int getCurrentIndex() {
        return 0;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof MotionLayout) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            if (this.f <= 0) {
                Adapter adapter = this.o;
                if (adapter != null && motionLayout != null && adapter.count() != 0) {
                    throw null;
                }
                return;
            }
            motionLayout.b(this.f576c[0]);
            throw null;
        }
    }

    public void setAdapter(Adapter adapter) {
        this.o = adapter;
    }
}
