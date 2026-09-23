package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.CheckedTextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCheckedTextView;
import androidx.core.widget.TintableCompoundDrawablesView;

/* loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView implements TintableCheckedTextView, TintableBackgroundView, EmojiCompatConfigurationView, TintableCompoundDrawablesView {

    /* renamed from: c, reason: collision with root package name */
    public final AppCompatCheckedTextViewHelper f228c;
    public final AppCompatBackgroundHelper f;
    public final AppCompatTextHelper g;
    public AppCompatEmojiTextHelper h;

    @RequiresApi
    @RestrictTo
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {

        /* renamed from: a, reason: collision with root package name */
        public int f229a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f230c;
        public int d;
        public int e;
        public int f;

        public final void mapProperties(PropertyMapper propertyMapper) {
            this.f229a = propertyMapper.mapObject("backgroundTint", R.attr.backgroundTint);
            this.b = propertyMapper.mapObject("backgroundTintMode", R.attr.backgroundTintMode);
            this.f230c = propertyMapper.mapObject("checkMarkTint", R.attr.checkMarkTint);
            this.d = propertyMapper.mapObject("checkMarkTintMode", R.attr.checkMarkTintMode);
            this.e = propertyMapper.mapObject("drawableTint", R.attr.drawableTint);
            this.f = propertyMapper.mapObject("drawableTintMode", R.attr.drawableTintMode);
        }

        public final void readProperties(Object obj, PropertyReader propertyReader) {
            AppCompatCheckedTextView appCompatCheckedTextView = (AppCompatCheckedTextView) obj;
            propertyReader.readObject(this.f229a, appCompatCheckedTextView.getBackgroundTintList());
            propertyReader.readObject(this.b, appCompatCheckedTextView.getBackgroundTintMode());
            propertyReader.readObject(this.f230c, appCompatCheckedTextView.getCheckMarkTintList());
            propertyReader.readObject(this.d, appCompatCheckedTextView.getCheckMarkTintMode());
            propertyReader.readObject(this.e, appCompatCheckedTextView.getCompoundDrawableTintList());
            propertyReader.readObject(this.f, appCompatCheckedTextView.getCompoundDrawableTintMode());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0089 A[Catch: all -> 0x0063, TryCatch #1 {all -> 0x0063, blocks: (B:3:0x0046, B:5:0x004f, B:8:0x0057, B:9:0x0081, B:11:0x0089, B:12:0x0092, B:14:0x009a, B:21:0x0066, B:23:0x006e, B:25:0x0076), top: B:2:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x009a A[Catch: all -> 0x0063, TRY_LEAVE, TryCatch #1 {all -> 0x0063, blocks: (B:3:0x0046, B:5:0x004f, B:8:0x0057, B:9:0x0081, B:11:0x0089, B:12:0x0092, B:14:0x009a, B:21:0x0066, B:23:0x006e, B:25:0x0076), top: B:2:0x0046 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatCheckedTextView(android.content.Context r8, android.util.AttributeSet r9) {
        /*
            r7 = this;
            int r6 = androidx.appcompat.R.attr.checkedTextViewStyle
            androidx.appcompat.widget.TintContextWrapper.a(r8)
            r7.<init>(r8, r9, r6)
            android.content.Context r8 = r7.getContext()
            androidx.appcompat.widget.ThemeUtils.a(r8, r7)
            androidx.appcompat.widget.AppCompatTextHelper r8 = new androidx.appcompat.widget.AppCompatTextHelper
            r8.<init>(r7)
            r7.g = r8
            r8.f(r9, r6)
            r8.b()
            androidx.appcompat.widget.AppCompatBackgroundHelper r8 = new androidx.appcompat.widget.AppCompatBackgroundHelper
            r8.<init>(r7)
            r7.f = r8
            r8.d(r9, r6)
            androidx.appcompat.widget.AppCompatCheckedTextViewHelper r8 = new androidx.appcompat.widget.AppCompatCheckedTextViewHelper
            r8.<init>(r7)
            r7.f228c = r8
            android.content.Context r8 = r7.getContext()
            int[] r0 = androidx.appcompat.R.styleable.CheckedTextView
            androidx.appcompat.widget.TintTypedArray r8 = androidx.appcompat.widget.TintTypedArray.e(r8, r9, r0, r6)
            android.content.res.TypedArray r0 = r8.b
            android.content.Context r2 = r7.getContext()
            int[] r3 = androidx.appcompat.R.styleable.CheckedTextView
            android.content.res.TypedArray r5 = r8.b
            r1 = r7
            r4 = r9
            androidx.core.view.ViewCompat.y(r1, r2, r3, r4, r5, r6)
            int r9 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkCompat     // Catch: java.lang.Throwable -> L63
            boolean r9 = r0.hasValue(r9)     // Catch: java.lang.Throwable -> L63
            r2 = 0
            if (r9 == 0) goto L66
            int r9 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkCompat     // Catch: java.lang.Throwable -> L63
            int r9 = r0.getResourceId(r9, r2)     // Catch: java.lang.Throwable -> L63
            if (r9 == 0) goto L66
            android.content.Context r3 = r7.getContext()     // Catch: java.lang.Throwable -> L63 android.content.res.Resources.NotFoundException -> L66
            android.graphics.drawable.Drawable r9 = androidx.appcompat.content.res.AppCompatResources.a(r3, r9)     // Catch: java.lang.Throwable -> L63 android.content.res.Resources.NotFoundException -> L66
            r7.setCheckMarkDrawable(r9)     // Catch: java.lang.Throwable -> L63 android.content.res.Resources.NotFoundException -> L66
            goto L81
        L63:
            r0 = move-exception
            r9 = r0
            goto Lb4
        L66:
            int r9 = androidx.appcompat.R.styleable.CheckedTextView_android_checkMark     // Catch: java.lang.Throwable -> L63
            boolean r9 = r0.hasValue(r9)     // Catch: java.lang.Throwable -> L63
            if (r9 == 0) goto L81
            int r9 = androidx.appcompat.R.styleable.CheckedTextView_android_checkMark     // Catch: java.lang.Throwable -> L63
            int r9 = r0.getResourceId(r9, r2)     // Catch: java.lang.Throwable -> L63
            if (r9 == 0) goto L81
            android.content.Context r2 = r7.getContext()     // Catch: java.lang.Throwable -> L63
            android.graphics.drawable.Drawable r9 = androidx.appcompat.content.res.AppCompatResources.a(r2, r9)     // Catch: java.lang.Throwable -> L63
            r7.setCheckMarkDrawable(r9)     // Catch: java.lang.Throwable -> L63
        L81:
            int r9 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkTint     // Catch: java.lang.Throwable -> L63
            boolean r9 = r0.hasValue(r9)     // Catch: java.lang.Throwable -> L63
            if (r9 == 0) goto L92
            int r9 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkTint     // Catch: java.lang.Throwable -> L63
            android.content.res.ColorStateList r9 = r8.a(r9)     // Catch: java.lang.Throwable -> L63
            r7.setCheckMarkTintList(r9)     // Catch: java.lang.Throwable -> L63
        L92:
            int r9 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkTintMode     // Catch: java.lang.Throwable -> L63
            boolean r9 = r0.hasValue(r9)     // Catch: java.lang.Throwable -> L63
            if (r9 == 0) goto La9
            int r9 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkTintMode     // Catch: java.lang.Throwable -> L63
            r2 = -1
            int r9 = r0.getInt(r9, r2)     // Catch: java.lang.Throwable -> L63
            r0 = 0
            android.graphics.PorterDuff$Mode r9 = androidx.appcompat.widget.DrawableUtils.c(r9, r0)     // Catch: java.lang.Throwable -> L63
            r7.setCheckMarkTintMode(r9)     // Catch: java.lang.Throwable -> L63
        La9:
            r8.f()
            androidx.appcompat.widget.AppCompatEmojiTextHelper r8 = r7.getEmojiTextViewHelper()
            r8.a(r4, r6)
            return
        Lb4:
            r8.f()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCheckedTextView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @NonNull
    private AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.h == null) {
            this.h = new AppCompatEmojiTextHelper(this);
        }
        return this.h;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatTextHelper appCompatTextHelper = this.g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.a();
        }
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f228c;
        if (appCompatCheckedTextViewHelper != null) {
            appCompatCheckedTextViewHelper.a();
        }
    }

    @Override // android.widget.TextView
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.g(super.getCustomSelectionActionModeCallback());
    }

    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.b();
        }
        return null;
    }

    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Nullable
    @RestrictTo
    public ColorStateList getSupportCheckMarkTintList() {
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f228c;
        if (appCompatCheckedTextViewHelper != null) {
            return appCompatCheckedTextViewHelper.b;
        }
        return null;
    }

    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f228c;
        if (appCompatCheckedTextViewHelper != null) {
            return appCompatCheckedTextViewHelper.f232c;
        }
        return null;
    }

    @Nullable
    @RestrictTo
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.g.d();
    }

    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.g.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AppCompatHintHelper.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().b(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@Nullable Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f228c;
        if (appCompatCheckedTextViewHelper != null) {
            if (appCompatCheckedTextViewHelper.f) {
                appCompatCheckedTextViewHelper.f = false;
            } else {
                appCompatCheckedTextViewHelper.f = true;
                appCompatCheckedTextViewHelper.a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.h(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
    }

    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.h(colorStateList);
        }
    }

    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(mode);
        }
    }

    @RestrictTo
    public void setSupportCheckMarkTintList(@Nullable ColorStateList colorStateList) {
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f228c;
        if (appCompatCheckedTextViewHelper != null) {
            appCompatCheckedTextViewHelper.b = colorStateList;
            appCompatCheckedTextViewHelper.d = true;
            appCompatCheckedTextViewHelper.a();
        }
    }

    @RestrictTo
    public void setSupportCheckMarkTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f228c;
        if (appCompatCheckedTextViewHelper != null) {
            appCompatCheckedTextViewHelper.f232c = mode;
            appCompatCheckedTextViewHelper.e = true;
            appCompatCheckedTextViewHelper.a();
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        AppCompatTextHelper appCompatTextHelper = this.g;
        appCompatTextHelper.k(colorStateList);
        appCompatTextHelper.b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatTextHelper appCompatTextHelper = this.g;
        appCompatTextHelper.l(mode);
        appCompatTextHelper.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        AppCompatTextHelper appCompatTextHelper = this.g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.g(context, i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@DrawableRes int i) {
        setCheckMarkDrawable(AppCompatResources.a(getContext(), i));
    }
}
