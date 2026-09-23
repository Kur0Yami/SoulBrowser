package androidx.dynamicanimation.animation;

import android.animation.ValueAnimator;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.SimpleArrayMap;
import androidx.dynamicanimation.animation.AnimationHandler;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AnimationHandler {
    public static final ThreadLocal i = new ThreadLocal();
    public final FrameCallbackScheduler e;
    public DurationScaleChangeListener33 h;

    /* renamed from: a, reason: collision with root package name */
    public final SimpleArrayMap f985a = new SimpleArrayMap(0);
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final AnimationCallbackDispatcher f986c = new AnimationCallbackDispatcher();
    public final a d = new Runnable() { // from class: androidx.dynamicanimation.animation.a
        @Override // java.lang.Runnable
        public final void run() {
            AnimationHandler animationHandler = AnimationHandler.this;
            long uptimeMillis = SystemClock.uptimeMillis();
            ArrayList arrayList = animationHandler.b;
            long uptimeMillis2 = SystemClock.uptimeMillis();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                AnimationHandler.AnimationFrameCallback animationFrameCallback = (AnimationHandler.AnimationFrameCallback) arrayList.get(i2);
                if (animationFrameCallback != null) {
                    SimpleArrayMap simpleArrayMap = animationHandler.f985a;
                    Long l = (Long) simpleArrayMap.get(animationFrameCallback);
                    if (l != null) {
                        if (l.longValue() < uptimeMillis2) {
                            simpleArrayMap.remove(animationFrameCallback);
                        }
                    }
                    animationFrameCallback.a(uptimeMillis);
                }
            }
            if (animationHandler.f) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (arrayList.get(size) == null) {
                        arrayList.remove(size);
                    }
                }
                if (arrayList.size() == 0 && Build.VERSION.SDK_INT >= 33) {
                    animationHandler.h.a();
                }
                animationHandler.f = false;
            }
            if (arrayList.size() > 0) {
                ((AnimationHandler.FrameCallbackScheduler16) animationHandler.e).b(animationHandler.d);
            }
        }
    };
    public boolean f = false;
    public float g = 1.0f;

    /* loaded from: classes.dex */
    public class AnimationCallbackDispatcher {
        public AnimationCallbackDispatcher() {
        }
    }

    /* loaded from: classes.dex */
    public interface AnimationFrameCallback {
        boolean a(long j);
    }

    @RestrictTo
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface DurationScaleChangeListener {
    }

    @VisibleForTesting
    @RequiresApi
    @RestrictTo
    /* loaded from: classes.dex */
    public class DurationScaleChangeListener33 implements DurationScaleChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public b f988a;

        public DurationScaleChangeListener33() {
        }

        public final boolean a() {
            boolean unregisterDurationScaleChangeListener = ValueAnimator.unregisterDurationScaleChangeListener(this.f988a);
            this.f988a = null;
            return unregisterDurationScaleChangeListener;
        }
    }

    /* loaded from: classes.dex */
    public static final class FrameCallbackScheduler16 implements FrameCallbackScheduler {

        /* renamed from: a, reason: collision with root package name */
        public final Choreographer f989a = Choreographer.getInstance();
        public final Looper b = Looper.myLooper();

        public final boolean a() {
            if (Thread.currentThread() == this.b.getThread()) {
                return true;
            }
            return false;
        }

        public final void b(final a aVar) {
            this.f989a.postFrameCallback(new Choreographer.FrameCallback() { // from class: androidx.dynamicanimation.animation.c
                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j) {
                    aVar.run();
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.dynamicanimation.animation.a] */
    public AnimationHandler(FrameCallbackScheduler frameCallbackScheduler) {
        this.e = frameCallbackScheduler;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.dynamicanimation.animation.b, android.animation.ValueAnimator$DurationScaleChangeListener] */
    public final void a(SpringAnimation springAnimation) {
        ArrayList arrayList = this.b;
        if (arrayList.size() == 0) {
            ((FrameCallbackScheduler16) this.e).b(this.d);
            if (Build.VERSION.SDK_INT >= 33) {
                this.g = ValueAnimator.getDurationScale();
                if (this.h == null) {
                    this.h = new DurationScaleChangeListener33();
                }
                final DurationScaleChangeListener33 durationScaleChangeListener33 = this.h;
                if (durationScaleChangeListener33.f988a == null) {
                    ?? r2 = new ValueAnimator.DurationScaleChangeListener() { // from class: androidx.dynamicanimation.animation.b
                        @Override // android.animation.ValueAnimator.DurationScaleChangeListener
                        public final void onChanged(float f) {
                            AnimationHandler.this.g = f;
                        }
                    };
                    durationScaleChangeListener33.f988a = r2;
                    ValueAnimator.registerDurationScaleChangeListener(r2);
                }
            }
        }
        if (!arrayList.contains(springAnimation)) {
            arrayList.add(springAnimation);
        }
    }
}
