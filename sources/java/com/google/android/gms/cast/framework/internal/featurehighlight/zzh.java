package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.GestureDetectorCompat;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.internal.cast.zzgy;

/* loaded from: classes.dex */
public final class zzh extends ViewGroup {

    /* renamed from: c, reason: collision with root package name */
    public final int[] f3491c;
    public final Rect f;
    public final Rect g;
    public final OuterHighlightDrawable h;
    public final InnerZoneDrawable i;
    public View j;
    public AnimatorSet k;
    public final zzi l;
    public final GestureDetectorCompat m;
    public GestureDetectorCompat n;
    public zzg o;
    public boolean p;
    public HelpTextView q;

    public zzh(Context context) {
        super(context);
        this.f3491c = new int[2];
        this.f = new Rect();
        this.g = new Rect();
        setId(R.id.cast_featurehighlight_view);
        setWillNotDraw(false);
        InnerZoneDrawable innerZoneDrawable = new InnerZoneDrawable(context);
        this.i = innerZoneDrawable;
        innerZoneDrawable.setCallback(this);
        OuterHighlightDrawable outerHighlightDrawable = new OuterHighlightDrawable(context);
        this.h = outerHighlightDrawable;
        outerHighlightDrawable.setCallback(this);
        this.l = new zzi(this);
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(context, new zza(this));
        this.m = gestureDetectorCompat;
        gestureDetectorCompat.f775a.setIsLongpressEnabled(false);
        setVisibility(8);
    }

    public final void a(View view, zzg zzgVar) {
        this.j = view;
        this.o = zzgVar;
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(getContext(), new zzb(this, view, zzgVar));
        this.n = gestureDetectorCompat;
        gestureDetectorCompat.f775a.setIsLongpressEnabled(false);
        setVisibility(4);
    }

    public final void b() {
        addOnLayoutChangeListener(new zzc(this));
    }

    public final void c(Runnable runnable) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.q.asView(), "alpha", 0.0f).setDuration(200L);
        duration.setInterpolator(zzgy.b());
        Rect rect = this.f;
        float exactCenterX = rect.exactCenterX();
        OuterHighlightDrawable outerHighlightDrawable = this.h;
        float f = exactCenterX - outerHighlightDrawable.i;
        float exactCenterY = rect.exactCenterY() - outerHighlightDrawable.j;
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(outerHighlightDrawable, PropertyValuesHolder.ofFloat("scale", 0.0f), PropertyValuesHolder.ofFloat("translationX", 0.0f, f), PropertyValuesHolder.ofFloat("translationY", 0.0f, exactCenterY), PropertyValuesHolder.ofInt("alpha", 0));
        ofPropertyValuesHolder.setInterpolator(zzgy.b());
        Animator duration2 = ofPropertyValuesHolder.setDuration(200L);
        Animator a2 = this.i.a();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, duration2, a2);
        animatorSet.addListener(new zzf(this, runnable));
        AnimatorSet animatorSet2 = this.k;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.k = animatorSet;
        animatorSet.start();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    public final void d(Runnable runnable) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.q.asView(), "alpha", 0.0f).setDuration(200L);
        duration.setInterpolator(zzgy.b());
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.h, PropertyValuesHolder.ofFloat("scale", 1.125f), PropertyValuesHolder.ofInt("alpha", 0));
        ofPropertyValuesHolder.setInterpolator(zzgy.b());
        Animator duration2 = ofPropertyValuesHolder.setDuration(200L);
        Animator a2 = this.i.a();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, duration2, a2);
        animatorSet.addListener(new zze(this, runnable));
        AnimatorSet animatorSet2 = this.k;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.k = animatorSet;
        animatorSet.start();
    }

    public final void e(int i) {
        OuterHighlightDrawable outerHighlightDrawable = this.h;
        Paint paint = outerHighlightDrawable.f;
        paint.setColor(i);
        outerHighlightDrawable.m = paint.getAlpha();
        outerHighlightDrawable.invalidateSelf();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.save();
        OuterHighlightDrawable outerHighlightDrawable = this.h;
        outerHighlightDrawable.draw(canvas);
        this.i.draw(canvas);
        View view = this.j;
        if (view != null) {
            if (view.getParent() != null) {
                Bitmap createBitmap = Bitmap.createBitmap(this.j.getWidth(), this.j.getHeight(), Bitmap.Config.ARGB_8888);
                this.j.draw(new Canvas(createBitmap));
                int color = outerHighlightDrawable.f.getColor();
                int red = Color.red(color);
                int green = Color.green(color);
                int blue = Color.blue(color);
                for (int i = 0; i < createBitmap.getHeight(); i++) {
                    for (int i2 = 0; i2 < createBitmap.getWidth(); i2++) {
                        int pixel = createBitmap.getPixel(i2, i);
                        if (Color.alpha(pixel) != 0) {
                            createBitmap.setPixel(i2, i, Color.argb(Color.alpha(pixel), red, green, blue));
                        }
                    }
                }
                Rect rect = this.f;
                canvas.drawBitmap(createBitmap, rect.left, rect.top, (Paint) null);
            }
            canvas.restore();
            return;
        }
        throw new IllegalStateException("Neither target view nor drawable was set");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float exactCenterX;
        View view = this.j;
        if (view != null) {
            ViewParent parent = view.getParent();
            int[] iArr = this.f3491c;
            if (parent != null) {
                View view2 = this.j;
                getLocationInWindow(iArr);
                int i5 = iArr[0];
                int i6 = iArr[1];
                view2.getLocationInWindow(iArr);
                iArr[0] = iArr[0] - i5;
                iArr[1] = iArr[1] - i6;
            }
            int i7 = iArr[0];
            int i8 = iArr[1];
            int width = this.j.getWidth() + i7;
            int height = this.j.getHeight() + iArr[1];
            Rect rect = this.f;
            rect.set(i7, i8, width, height);
            Rect rect2 = this.g;
            rect2.set(i, i2, i3, i4);
            this.h.setBounds(rect2);
            this.i.setBounds(rect2);
            zzi zziVar = this.l;
            zzh zzhVar = zziVar.f;
            View asView = zzhVar.q.asView();
            if (!rect.isEmpty() && !rect2.isEmpty()) {
                int centerY = rect.centerY();
                int centerX = rect.centerX();
                int centerY2 = rect2.centerY();
                int height2 = rect.height();
                int i9 = zziVar.b;
                int max = Math.max(i9 + i9, height2) / 2;
                int i10 = centerY + max;
                int i11 = zziVar.f3493c;
                if (centerY < centerY2) {
                    int i12 = i10 + i11;
                    zziVar.b(asView, rect2.width(), rect2.bottom - i12);
                    int a2 = zziVar.a(asView, rect2.left, rect2.right, asView.getMeasuredWidth(), centerX);
                    asView.layout(a2, i12, asView.getMeasuredWidth() + a2, asView.getMeasuredHeight() + i12);
                } else {
                    int i13 = (centerY - max) - i11;
                    zziVar.b(asView, rect2.width(), i13 - rect2.top);
                    int a3 = zziVar.a(asView, rect2.left, rect2.right, asView.getMeasuredWidth(), centerX);
                    asView.layout(a3, i13 - asView.getMeasuredHeight(), asView.getMeasuredWidth() + a3, i13);
                }
            } else {
                asView.layout(0, 0, 0, 0);
            }
            Rect rect3 = zziVar.f3492a;
            rect3.set(asView.getLeft(), asView.getTop(), asView.getRight(), asView.getBottom());
            OuterHighlightDrawable outerHighlightDrawable = zzhVar.h;
            int i14 = outerHighlightDrawable.b;
            outerHighlightDrawable.d.set(rect);
            outerHighlightDrawable.e.set(rect3);
            float exactCenterX2 = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            Rect bounds = outerHighlightDrawable.getBounds();
            if (Math.min(exactCenterY - bounds.top, bounds.bottom - exactCenterY) < outerHighlightDrawable.f3483a) {
                outerHighlightDrawable.i = exactCenterX2;
                outerHighlightDrawable.j = exactCenterY;
            } else {
                if (exactCenterX2 <= bounds.exactCenterX()) {
                    exactCenterX = rect3.exactCenterX() + i14;
                } else {
                    exactCenterX = rect3.exactCenterX() - i14;
                }
                outerHighlightDrawable.i = exactCenterX;
                exactCenterY = rect3.exactCenterY();
                outerHighlightDrawable.j = exactCenterY;
            }
            outerHighlightDrawable.g = outerHighlightDrawable.f3484c + Math.max(OuterHighlightDrawable.a(outerHighlightDrawable.i, exactCenterY, rect), OuterHighlightDrawable.a(outerHighlightDrawable.i, outerHighlightDrawable.j, rect3));
            outerHighlightDrawable.invalidateSelf();
            InnerZoneDrawable innerZoneDrawable = zzhVar.i;
            Rect rect4 = innerZoneDrawable.f3482c;
            rect4.set(rect);
            innerZoneDrawable.h = rect4.exactCenterX();
            innerZoneDrawable.i = rect4.exactCenterY();
            innerZoneDrawable.f = Math.max(innerZoneDrawable.d, Math.max(rect4.width() / 2.0f, rect4.height() / 2.0f));
            innerZoneDrawable.invalidateSelf();
            return;
        }
        throw new IllegalStateException("Target view must be set before layout");
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(View.resolveSize(View.MeasureSpec.getSize(i), i), View.resolveSize(View.MeasureSpec.getSize(i2), i2));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.p = this.f.contains((int) motionEvent.getX(), (int) motionEvent.getY());
            actionMasked = 0;
        }
        if (this.p) {
            GestureDetectorCompat gestureDetectorCompat = this.n;
            if (gestureDetectorCompat != null) {
                gestureDetectorCompat.f775a.onTouchEvent(motionEvent);
                if (actionMasked == 1) {
                    motionEvent = MotionEvent.obtain(motionEvent);
                    motionEvent.setAction(3);
                }
            }
            if (this.j.getParent() != null) {
                this.j.onTouchEvent(motionEvent);
            }
            return true;
        }
        this.m.f775a.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.h && drawable != this.i && drawable != null) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }
}
