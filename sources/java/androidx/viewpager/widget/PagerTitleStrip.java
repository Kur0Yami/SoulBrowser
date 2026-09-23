package androidx.viewpager.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;

@ViewPager.DecorView
/* loaded from: classes.dex */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: c, reason: collision with root package name */
    public ViewPager f1757c;
    public int f;
    public WeakReference g;

    /* loaded from: classes.dex */
    public class PageListener extends DataSetObserver implements ViewPager.OnPageChangeListener, ViewPager.OnAdapterChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public int f1758a;

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public final void a(ViewPager viewPager, PagerAdapter pagerAdapter) {
            throw null;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void b(float f, int i) {
            throw null;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void c(int i) {
            this.f1758a = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void d(int i) {
            if (this.f1758a != 0) {
            } else {
                throw null;
            }
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class SingleLineAllCapsTransform extends SingleLineTransformationMethod {

        /* renamed from: c, reason: collision with root package name */
        public Locale f1759c;

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public final CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f1759c);
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.viewpager.widget.PagerTitleStrip$SingleLineAllCapsTransform, android.text.method.SingleLineTransformationMethod, android.text.method.TransformationMethod] */
    private static void setSingleLineAllCaps(TextView textView) {
        Context context = textView.getContext();
        ?? singleLineTransformationMethod = new SingleLineTransformationMethod();
        singleLineTransformationMethod.f1759c = context.getResources().getConfiguration().locale;
        textView.setTransformationMethod(singleLineTransformationMethod);
    }

    public final void a(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        if (pagerAdapter != null) {
            pagerAdapter.f1756a.unregisterObserver(null);
            this.g = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.f1756a.registerObserver(null);
            this.g = new WeakReference(pagerAdapter2);
        }
        ViewPager viewPager = this.f1757c;
        if (viewPager == null) {
            return;
        }
        viewPager.getCurrentItem();
        throw null;
    }

    public void b(float f) {
        throw null;
    }

    public int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            PagerAdapter adapter = viewPager.getAdapter();
            if (viewPager.a0 == null) {
                viewPager.a0 = new ArrayList();
            }
            PagerAdapter pagerAdapter = null;
            viewPager.a0.add(null);
            this.f1757c = viewPager;
            WeakReference weakReference = this.g;
            if (weakReference != null) {
                pagerAdapter = (PagerAdapter) weakReference.get();
            }
            a(pagerAdapter, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f1757c;
        if (viewPager != null) {
            a(viewPager.getAdapter(), null);
            ViewPager viewPager2 = this.f1757c;
            viewPager2.getClass();
            ArrayList arrayList = viewPager2.a0;
            if (arrayList != null) {
                arrayList.remove((Object) null);
            }
            this.f1757c = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f1757c != null) {
            b(0.0f);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), -2);
        ViewGroup.getChildMeasureSpec(i, (int) (View.MeasureSpec.getSize(i) * 0.2f), -2);
        throw null;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
    }

    public void setGravity(int i) {
    }

    public void setNonPrimaryAlpha(@FloatRange float f) {
        throw null;
    }

    public void setTextColor(@ColorInt int i) {
        throw null;
    }

    public void setTextSpacing(int i) {
        this.f = i;
    }
}
