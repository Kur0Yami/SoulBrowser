package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class AnimatedVectorDrawableCompat extends VectorDrawableCommon implements Animatable2Compat {
    public final Context g;
    public Animator.AnimatorListener h = null;
    public ArrayList i = null;
    public final Drawable.Callback j = new Drawable.Callback() { // from class: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.1
        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
            AnimatedVectorDrawableCompat.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            AnimatedVectorDrawableCompat.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            AnimatedVectorDrawableCompat.this.unscheduleSelf(runnable);
        }
    };
    public final AnimatedVectorDrawableCompatState f = new Drawable.ConstantState();

    /* loaded from: classes.dex */
    public static class AnimatedVectorDrawableCompatState extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public VectorDrawableCompat f1735a;
        public AnimatorSet b;

        /* renamed from: c, reason: collision with root package name */
        public ArrayList f1736c;
        public ArrayMap d;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState, android.graphics.drawable.Drawable$ConstantState] */
    public AnimatedVectorDrawableCompat(Context context, int i) {
        this.g = context;
    }

    public static AnimatedVectorDrawableCompat a(Context context, int i) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context, 0);
            Resources resources = context.getResources();
            Resources.Theme theme = context.getTheme();
            ThreadLocal threadLocal = ResourcesCompat.f668a;
            Drawable drawable = resources.getDrawable(i, theme);
            animatedVectorDrawableCompat.f1740c = drawable;
            drawable.setCallback(animatedVectorDrawableCompat.j);
            new AnimatedVectorDrawableDelegateState(animatedVectorDrawableCompat.f1740c.getConstantState());
            return animatedVectorDrawableCompat;
        }
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                Resources resources2 = context.getResources();
                Resources.Theme theme2 = context.getTheme();
                AnimatedVectorDrawableCompat animatedVectorDrawableCompat2 = new AnimatedVectorDrawableCompat(context, 0);
                animatedVectorDrawableCompat2.inflate(resources2, xml, asAttributeSet, theme2);
                return animatedVectorDrawableCompat2;
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e) {
            Log.e("AnimatedVDCompat", "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e("AnimatedVDCompat", "parser error", e2);
            return null;
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.applyTheme(theme);
        }
    }

    public final void b(Animatable2Compat.AnimationCallback animationCallback) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
            if (animationCallback.f1731a == null) {
                animationCallback.f1731a = new Animatable2Compat.AnimationCallback.AnonymousClass1();
            }
            animatedVectorDrawable.registerAnimationCallback(animationCallback.f1731a);
            return;
        }
        if (animationCallback != null) {
            if (this.i == null) {
                this.i = new ArrayList();
            }
            if (this.i.contains(animationCallback)) {
                return;
            }
            this.i.add(animationCallback);
            if (this.h == null) {
                this.h = new AnimatorListenerAdapter() { // from class: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = AnimatedVectorDrawableCompat.this;
                        ArrayList arrayList = new ArrayList(animatedVectorDrawableCompat.i);
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            ((Animatable2Compat.AnimationCallback) arrayList.get(i)).a(animatedVectorDrawableCompat);
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = AnimatedVectorDrawableCompat.this;
                        ArrayList arrayList = new ArrayList(animatedVectorDrawableCompat.i);
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            ((Animatable2Compat.AnimationCallback) arrayList.get(i)).b(animatedVectorDrawableCompat);
                        }
                    }
                };
            }
            this.f.b.addListener(this.h);
        }
    }

    public final boolean c(Animatable2Compat.AnimationCallback animationCallback) {
        Animator.AnimatorListener animatorListener;
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
            if (animationCallback.f1731a == null) {
                animationCallback.f1731a = new Animatable2Compat.AnimationCallback.AnonymousClass1();
            }
            animatedVectorDrawable.unregisterAnimationCallback(animationCallback.f1731a);
        }
        ArrayList arrayList = this.i;
        if (arrayList != null && animationCallback != null) {
            boolean remove = arrayList.remove(animationCallback);
            if (this.i.size() == 0 && (animatorListener = this.h) != null) {
                this.f.b.removeListener(animatorListener);
                this.h = null;
            }
            return remove;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState = this.f;
        animatedVectorDrawableCompatState.f1735a.draw(canvas);
        if (animatedVectorDrawableCompatState.b.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getAlpha();
        }
        return this.f.f1735a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f.getClass();
        return changingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getColorFilter();
        }
        return this.f.f1735a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f1740c != null && Build.VERSION.SDK_INT >= 24) {
            return new AnimatedVectorDrawableDelegateState(this.f1740c.getConstantState());
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return this.f.f1735a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return this.f.f1735a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return this.f.f1735a.getOpacity();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0182, code lost:
    
        if (r8.b != null) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0184, code lost:
    
        r8.b = new android.animation.AnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x018b, code lost:
    
        r8.b.playTogether(r8.f1736c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0192, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a7  */
    /* JADX WARN: Type inference failed for: r11v10, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void inflate(android.content.res.Resources r22, org.xmlpull.v1.XmlPullParser r23, android.util.AttributeSet r24, android.content.res.Resources.Theme r25) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.isAutoMirrored();
        }
        return this.f.f1735a.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return ((AnimatedVectorDrawable) drawable).isRunning();
        }
        return this.f.b.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return this.f.f1735a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f.f1735a.setBounds(rect);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        return this.f.f1735a.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        return this.f.f1735a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f.f1735a.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f.f1735a.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f.f1735a.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            DrawableCompat.a(drawable, i);
        } else {
            this.f.f1735a.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            DrawableCompat.b(drawable, colorStateList);
        } else {
            this.f.f1735a.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            DrawableCompat.c(drawable, mode);
        } else {
            this.f.f1735a.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f.f1735a.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState = this.f;
        if (animatedVectorDrawableCompatState.b.isStarted()) {
            return;
        }
        animatedVectorDrawableCompatState.b.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f.b.end();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class AnimatedVectorDrawableDelegateState extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final Drawable.ConstantState f1737a;

        public AnimatedVectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.f1737a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f1737a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f1737a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(null, 0);
            Drawable newDrawable = this.f1737a.newDrawable();
            animatedVectorDrawableCompat.f1740c = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.j);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(null, 0);
            Drawable newDrawable = this.f1737a.newDrawable(resources);
            animatedVectorDrawableCompat.f1740c = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.j);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(null, 0);
            Drawable newDrawable = this.f1737a.newDrawable(resources, theme);
            animatedVectorDrawableCompat.f1740c = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.j);
            return animatedVectorDrawableCompat;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
