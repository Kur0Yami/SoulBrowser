package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatBackgroundHelper {

    /* renamed from: a, reason: collision with root package name */
    public final View f220a;
    public TintInfo d;
    public TintInfo e;
    public TintInfo f;

    /* renamed from: c, reason: collision with root package name */
    public int f221c = -1;
    public final AppCompatDrawableManager b = AppCompatDrawableManager.a();

    public AppCompatBackgroundHelper(View view) {
        this.f220a = view;
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void a() {
        View view = this.f220a;
        Drawable background = view.getBackground();
        if (background != null) {
            if (this.d != null) {
                if (this.f == null) {
                    this.f = new Object();
                }
                TintInfo tintInfo = this.f;
                tintInfo.f329a = null;
                tintInfo.d = false;
                tintInfo.b = null;
                tintInfo.f330c = false;
                ColorStateList i = ViewCompat.i(view);
                if (i != null) {
                    tintInfo.d = true;
                    tintInfo.f329a = i;
                }
                PorterDuff.Mode j = ViewCompat.j(view);
                if (j != null) {
                    tintInfo.f330c = true;
                    tintInfo.b = j;
                }
                if (tintInfo.d || tintInfo.f330c) {
                    AppCompatDrawableManager.e(background, tintInfo, view.getDrawableState());
                    return;
                }
            }
            TintInfo tintInfo2 = this.e;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.e(background, tintInfo2, view.getDrawableState());
                return;
            }
            TintInfo tintInfo3 = this.d;
            if (tintInfo3 != null) {
                AppCompatDrawableManager.e(background, tintInfo3, view.getDrawableState());
            }
        }
    }

    public final ColorStateList b() {
        TintInfo tintInfo = this.e;
        if (tintInfo != null) {
            return tintInfo.f329a;
        }
        return null;
    }

    public final PorterDuff.Mode c() {
        TintInfo tintInfo = this.e;
        if (tintInfo != null) {
            return tintInfo.b;
        }
        return null;
    }

    public final void d(AttributeSet attributeSet, int i) {
        ColorStateList h;
        View view = this.f220a;
        TintTypedArray e = TintTypedArray.e(view.getContext(), attributeSet, R.styleable.ViewBackgroundHelper, i);
        TypedArray typedArray = e.b;
        View view2 = this.f220a;
        ViewCompat.y(view2, view2.getContext(), R.styleable.ViewBackgroundHelper, attributeSet, e.b, i);
        try {
            if (typedArray.hasValue(R.styleable.ViewBackgroundHelper_android_background)) {
                this.f221c = typedArray.getResourceId(R.styleable.ViewBackgroundHelper_android_background, -1);
                AppCompatDrawableManager appCompatDrawableManager = this.b;
                Context context = view.getContext();
                int i2 = this.f221c;
                synchronized (appCompatDrawableManager) {
                    h = appCompatDrawableManager.f236a.h(context, i2);
                }
                if (h != null) {
                    g(h);
                }
            }
            if (typedArray.hasValue(R.styleable.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.C(view, e.a(R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (typedArray.hasValue(R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.D(view, DrawableUtils.c(typedArray.getInt(R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
            e.f();
        } catch (Throwable th) {
            e.f();
            throw th;
        }
    }

    public final void e() {
        this.f221c = -1;
        g(null);
        a();
    }

    public final void f(int i) {
        ColorStateList colorStateList;
        this.f221c = i;
        AppCompatDrawableManager appCompatDrawableManager = this.b;
        if (appCompatDrawableManager != null) {
            Context context = this.f220a.getContext();
            synchronized (appCompatDrawableManager) {
                colorStateList = appCompatDrawableManager.f236a.h(context, i);
            }
        } else {
            colorStateList = null;
        }
        g(colorStateList);
        a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new Object();
            }
            TintInfo tintInfo = this.d;
            tintInfo.f329a = colorStateList;
            tintInfo.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void h(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new Object();
        }
        TintInfo tintInfo = this.e;
        tintInfo.f329a = colorStateList;
        tintInfo.d = true;
        a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void i(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new Object();
        }
        TintInfo tintInfo = this.e;
        tintInfo.b = mode;
        tintInfo.f330c = true;
        a();
    }
}
