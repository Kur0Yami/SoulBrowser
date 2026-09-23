package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.MultiAutoCompleteTextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableCompoundDrawablesView;

/* loaded from: classes.dex */
public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView implements TintableBackgroundView, EmojiCompatConfigurationView, TintableCompoundDrawablesView {
    public static final int[] h = {R.attr.popupBackground};

    /* renamed from: c, reason: collision with root package name */
    public final AppCompatBackgroundHelper f253c;
    public final AppCompatTextHelper f;
    public final AppCompatEmojiEditTextHelper g;

    @RequiresApi
    @RestrictTo
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {

        /* renamed from: a, reason: collision with root package name */
        public int f254a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f255c;
        public int d;

        public final void mapProperties(PropertyMapper propertyMapper) {
            this.f254a = propertyMapper.mapObject("backgroundTint", androidx.appcompat.R.attr.backgroundTint);
            this.b = propertyMapper.mapObject("backgroundTintMode", androidx.appcompat.R.attr.backgroundTintMode);
            this.f255c = propertyMapper.mapObject("drawableTint", androidx.appcompat.R.attr.drawableTint);
            this.d = propertyMapper.mapObject("drawableTintMode", androidx.appcompat.R.attr.drawableTintMode);
        }

        public final void readProperties(Object obj, PropertyReader propertyReader) {
            AppCompatMultiAutoCompleteTextView appCompatMultiAutoCompleteTextView = (AppCompatMultiAutoCompleteTextView) obj;
            propertyReader.readObject(this.f254a, appCompatMultiAutoCompleteTextView.getBackgroundTintList());
            propertyReader.readObject(this.b, appCompatMultiAutoCompleteTextView.getBackgroundTintMode());
            propertyReader.readObject(this.f255c, appCompatMultiAutoCompleteTextView.getCompoundDrawableTintList());
            propertyReader.readObject(this.d, appCompatMultiAutoCompleteTextView.getCompoundDrawableTintMode());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatMultiAutoCompleteTextView(android.content.Context r5, android.util.AttributeSet r6) {
        /*
            r4 = this;
            int r0 = androidx.appcompat.R.attr.autoCompleteTextViewStyle
            androidx.appcompat.widget.TintContextWrapper.a(r5)
            r4.<init>(r5, r6, r0)
            android.content.Context r5 = r4.getContext()
            androidx.appcompat.widget.ThemeUtils.a(r5, r4)
            android.content.Context r5 = r4.getContext()
            int[] r1 = androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView.h
            androidx.appcompat.widget.TintTypedArray r5 = androidx.appcompat.widget.TintTypedArray.e(r5, r6, r1, r0)
            android.content.res.TypedArray r1 = r5.b
            r2 = 0
            boolean r1 = r1.hasValue(r2)
            if (r1 == 0) goto L29
            android.graphics.drawable.Drawable r1 = r5.b(r2)
            r4.setDropDownBackgroundDrawable(r1)
        L29:
            r5.f()
            androidx.appcompat.widget.AppCompatBackgroundHelper r5 = new androidx.appcompat.widget.AppCompatBackgroundHelper
            r5.<init>(r4)
            r4.f253c = r5
            r5.d(r6, r0)
            androidx.appcompat.widget.AppCompatTextHelper r5 = new androidx.appcompat.widget.AppCompatTextHelper
            r5.<init>(r4)
            r4.f = r5
            r5.f(r6, r0)
            r5.b()
            androidx.appcompat.widget.AppCompatEmojiEditTextHelper r5 = new androidx.appcompat.widget.AppCompatEmojiEditTextHelper
            r5.<init>(r4)
            r4.g = r5
            r5.b(r6, r0)
            android.text.method.KeyListener r6 = r4.getKeyListener()
            boolean r0 = r6 instanceof android.text.method.NumberKeyListener
            if (r0 != 0) goto L7b
            boolean r0 = super.isFocusable()
            boolean r1 = super.isClickable()
            boolean r2 = super.isLongClickable()
            int r3 = super.getInputType()
            android.text.method.KeyListener r5 = r5.a(r6)
            if (r5 != r6) goto L6c
            goto L7b
        L6c:
            super.setKeyListener(r5)
            super.setRawInputType(r3)
            super.setFocusable(r0)
            super.setClickable(r1)
            super.setLongClickable(r2)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f253c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.a();
        }
        AppCompatTextHelper appCompatTextHelper = this.f;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f253c;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.b();
        }
        return null;
    }

    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f253c;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Nullable
    @RestrictTo
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f.d();
    }

    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AppCompatHintHelper.a(onCreateInputConnection, editorInfo, this);
        return this.g.b.b(onCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f253c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f253c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(@DrawableRes int i) {
        setDropDownBackgroundDrawable(AppCompatResources.a(getContext(), i));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.g.b.c(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(@Nullable KeyListener keyListener) {
        super.setKeyListener(this.g.a(keyListener));
    }

    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f253c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.h(colorStateList);
        }
    }

    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f253c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        AppCompatTextHelper appCompatTextHelper = this.f;
        appCompatTextHelper.k(colorStateList);
        appCompatTextHelper.b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatTextHelper appCompatTextHelper = this.f;
        appCompatTextHelper.l(mode);
        appCompatTextHelper.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        AppCompatTextHelper appCompatTextHelper = this.f;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.g(context, i);
        }
    }
}
