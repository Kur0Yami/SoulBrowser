package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.res.Resources;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import androidx.appcompat.graphics.drawable.DrawableContainerCompat;
import androidx.appcompat.graphics.drawable.StateListDrawableCompat;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public class AnimatedStateListDrawableCompat extends StateListDrawableCompat implements TintAwareDrawable {
    public AnimatedStateListState t;
    public Transition u;
    public int v = -1;
    public int w = -1;
    public boolean x;

    /* loaded from: classes.dex */
    public static class AnimatableTransition extends Transition {

        /* renamed from: a, reason: collision with root package name */
        public final Animatable f130a;

        public AnimatableTransition(Animatable animatable) {
            this.f130a = animatable;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void c() {
            this.f130a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void d() {
            this.f130a.stop();
        }
    }

    /* loaded from: classes.dex */
    public static class AnimatedStateListState extends StateListDrawableCompat.StateListState {
        public LongSparseArray J;
        public SparseArrayCompat K;

        public AnimatedStateListState(AnimatedStateListState animatedStateListState, AnimatedStateListDrawableCompat animatedStateListDrawableCompat, Resources resources) {
            super(animatedStateListState, animatedStateListDrawableCompat, resources);
            if (animatedStateListState != null) {
                this.J = animatedStateListState.J;
                this.K = animatedStateListState.K;
            } else {
                this.J = new LongSparseArray();
                this.K = new SparseArrayCompat();
            }
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.StateListState, androidx.appcompat.graphics.drawable.DrawableContainerCompat.DrawableContainerState
        public final void f() {
            this.J = this.J.clone();
            this.K = this.K.clone();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[]] */
        /* JADX WARN: Type inference failed for: r5v3 */
        public final int h(int i) {
            ?? r5;
            if (i < 0) {
                return 0;
            }
            SparseArrayCompat sparseArrayCompat = this.K;
            int i2 = 0;
            sparseArrayCompat.getClass();
            Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
            int a2 = ContainerHelpersKt.a(sparseArrayCompat.f474c, sparseArrayCompat.g, i);
            if (a2 >= 0 && (r5 = sparseArrayCompat.f[a2]) != SparseArrayCompatKt.f475a) {
                i2 = r5;
            }
            return i2.intValue();
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.StateListState, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new AnimatedStateListDrawableCompat(this, null);
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.StateListState, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new AnimatedStateListDrawableCompat(this, resources);
        }
    }

    /* loaded from: classes.dex */
    public static class AnimatedVectorDrawableTransition extends Transition {

        /* renamed from: a, reason: collision with root package name */
        public final AnimatedVectorDrawableCompat f131a;

        public AnimatedVectorDrawableTransition(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
            this.f131a = animatedVectorDrawableCompat;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void c() {
            this.f131a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void d() {
            this.f131a.stop();
        }
    }

    /* loaded from: classes.dex */
    public static class AnimationDrawableTransition extends Transition {

        /* renamed from: a, reason: collision with root package name */
        public final ObjectAnimator f132a;
        public final boolean b;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0, types: [androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$FrameInterpolator, android.animation.TimeInterpolator, java.lang.Object] */
        public AnimationDrawableTransition(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            int i;
            int i2;
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i3 = z ? numberOfFrames - 1 : 0;
            if (z) {
                i = 0;
            } else {
                i = numberOfFrames - 1;
            }
            ?? obj = new Object();
            int numberOfFrames2 = animationDrawable.getNumberOfFrames();
            obj.b = numberOfFrames2;
            int[] iArr = obj.f133a;
            if (iArr == null || iArr.length < numberOfFrames2) {
                obj.f133a = new int[numberOfFrames2];
            }
            int[] iArr2 = obj.f133a;
            int i4 = 0;
            for (int i5 = 0; i5 < numberOfFrames2; i5++) {
                if (z) {
                    i2 = (numberOfFrames2 - i5) - 1;
                } else {
                    i2 = i5;
                }
                int duration = animationDrawable.getDuration(i2);
                iArr2[i5] = duration;
                i4 += duration;
            }
            obj.f134c = i4;
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i3, i);
            ofInt.setAutoCancel(true);
            ofInt.setDuration(obj.f134c);
            ofInt.setInterpolator(obj);
            this.b = z2;
            this.f132a = ofInt;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final boolean a() {
            return this.b;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void b() {
            this.f132a.reverse();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void c() {
            this.f132a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void d() {
            this.f132a.cancel();
        }
    }

    /* loaded from: classes.dex */
    public static class FrameInterpolator implements TimeInterpolator {

        /* renamed from: a, reason: collision with root package name */
        public int[] f133a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f134c;

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2;
            int i = (int) ((f * this.f134c) + 0.5f);
            int i2 = this.b;
            int[] iArr = this.f133a;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i3];
                if (i < i4) {
                    break;
                }
                i -= i4;
                i3++;
            }
            if (i3 < i2) {
                f2 = i / this.f134c;
            } else {
                f2 = 0.0f;
            }
            return (i3 / i2) + f2;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Transition {
        public boolean a() {
            return false;
        }

        public void b() {
        }

        public abstract void c();

        public abstract void d();
    }

    public AnimatedStateListDrawableCompat(AnimatedStateListState animatedStateListState, Resources resources) {
        e(new AnimatedStateListState(animatedStateListState, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0108, code lost:
    
        r9 = r27.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x010d, code lost:
    
        if (r9 != 4) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0111, code lost:
    
        if (r9 != 2) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x011d, code lost:
    
        if (r27.getName().equals("vector") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x011f, code lost:
    
        r13 = new androidx.vectordrawable.graphics.drawable.VectorDrawableCompat();
        r13.inflate(r1, r27, r28, r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0128, code lost:
    
        r13 = androidx.appcompat.resources.Compatibility.Api21Impl.a(r26, r27, r28, r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0145, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r27.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0146, code lost:
    
        if (r13 == null) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0148, code lost:
    
        r8 = r5.t;
        r9 = r8.a(r13);
        r8.I[r9] = r6;
        r8.K.d(r9, java.lang.Integer.valueOf(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0177, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r27.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0281, code lost:
    
        r5.onStateChange(r5.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0288, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x01b3, code lost:
    
        if (r11 == null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01b5, code lost:
    
        r11 = r27.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01ba, code lost:
    
        if (r11 != 4) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01be, code lost:
    
        if (r11 != 2) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x01ca, code lost:
    
        if (r27.getName().equals("animated-vector") == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01cc, code lost:
    
        r11 = new androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat(r0, r10 ? 1 : 0);
        r11.inflate(r1, r27, r28, r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01d5, code lost:
    
        r11 = androidx.appcompat.resources.Compatibility.Api21Impl.a(r26, r27, r28, r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01f2, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r27.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01f3, code lost:
    
        if (r11 == null) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01f5, code lost:
    
        if (r8 == (-1)) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01f7, code lost:
    
        if (r9 == (-1)) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01f9, code lost:
    
        r6 = r5.t;
        r11 = r6.a(r11);
        r13 = r8;
        r8 = r9;
        r10 = (r13 << 32) | r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x020a, code lost:
    
        if (r12 == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x020c, code lost:
    
        r16 = 8589934592L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0217, code lost:
    
        r0 = r11;
        r6.J.a(r10, java.lang.Long.valueOf(r0 | r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0227, code lost:
    
        if (r12 == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0229, code lost:
    
        r6.J.a((r8 << 32) | r13, java.lang.Long.valueOf((r0 | 4294967296L) | r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x023e, code lost:
    
        r0 = r25;
        r1 = r26;
        r6 = null;
        r9 = 1;
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0214, code lost:
    
        r16 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x027a, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r27.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0106, code lost:
    
        if (r13 == null) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat g(android.content.Context r25, android.content.res.Resources r26, android.content.res.XmlResourceParser r27, android.util.AttributeSet r28, android.content.res.Resources.Theme r29) {
        /*
            Method dump skipped, instructions count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.g(android.content.Context, android.content.res.Resources, android.content.res.XmlResourceParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat");
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat
    public final DrawableContainerCompat.DrawableContainerState b() {
        return new AnimatedStateListState(this.t, this, null);
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat
    public final void e(DrawableContainerCompat.DrawableContainerState drawableContainerState) {
        super.e(drawableContainerState);
        if (drawableContainerState instanceof AnimatedStateListState) {
            this.t = (AnimatedStateListState) drawableContainerState;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat
    /* renamed from: f */
    public final StateListDrawableCompat.StateListState b() {
        return new AnimatedStateListState(this.t, this, null);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        Transition transition = this.u;
        if (transition != null) {
            transition.d();
            this.u = null;
            d(this.v);
            this.v = -1;
            this.w = -1;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.x) {
            super.mutate();
            this.t.f();
            this.x = true;
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cf, code lost:
    
        if (d(r1) != false) goto L45;
     */
    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onStateChange(int[] r15) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.onStateChange(int[]):boolean");
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Transition transition = this.u;
        if (transition != null && (visible || z2)) {
            if (z) {
                transition.c();
                return visible;
            }
            jumpToCurrentState();
        }
        return visible;
    }
}
