package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;

/* loaded from: classes.dex */
class AppCompatCompoundButtonHelper {

    /* renamed from: a, reason: collision with root package name */
    public final CompoundButton f233a;
    public ColorStateList b = null;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f234c = null;
    public boolean d = false;
    public boolean e = false;
    public boolean f;

    public AppCompatCompoundButtonHelper(CompoundButton compoundButton) {
        this.f233a = compoundButton;
    }

    public final void a() {
        CompoundButton compoundButton = this.f233a;
        Drawable buttonDrawable = compoundButton.getButtonDrawable();
        if (buttonDrawable != null) {
            if (this.d || this.e) {
                Drawable mutate = buttonDrawable.mutate();
                if (this.d) {
                    mutate.setTintList(this.b);
                }
                if (this.e) {
                    mutate.setTintMode(this.f234c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005e A[Catch: all -> 0x0038, TryCatch #1 {all -> 0x0038, blocks: (B:3:0x001b, B:5:0x0024, B:8:0x002c, B:9:0x0056, B:11:0x005e, B:12:0x0067, B:14:0x006f, B:21:0x003b, B:23:0x0043, B:25:0x004b), top: B:2:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006f A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #1 {all -> 0x0038, blocks: (B:3:0x001b, B:5:0x0024, B:8:0x002c, B:9:0x0056, B:11:0x005e, B:12:0x0067, B:14:0x006f, B:21:0x003b, B:23:0x0043, B:25:0x004b), top: B:2:0x001b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.util.AttributeSet r9, int r10) {
        /*
            r8 = this;
            android.widget.CompoundButton r0 = r8.f233a
            android.content.Context r1 = r0.getContext()
            int[] r2 = androidx.appcompat.R.styleable.CompoundButton
            androidx.appcompat.widget.TintTypedArray r6 = androidx.appcompat.widget.TintTypedArray.e(r1, r9, r2, r10)
            android.content.res.TypedArray r7 = r6.b
            android.content.Context r1 = r0.getContext()
            int[] r2 = androidx.appcompat.R.styleable.CompoundButton
            android.content.res.TypedArray r4 = r6.b
            r3 = r9
            r5 = r10
            androidx.core.view.ViewCompat.y(r0, r1, r2, r3, r4, r5)
            int r9 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L38
            boolean r9 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L38
            r10 = 0
            if (r9 == 0) goto L3b
            int r9 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L38
            int r9 = r7.getResourceId(r9, r10)     // Catch: java.lang.Throwable -> L38
            if (r9 == 0) goto L3b
            android.content.Context r1 = r0.getContext()     // Catch: java.lang.Throwable -> L38 android.content.res.Resources.NotFoundException -> L3b
            android.graphics.drawable.Drawable r9 = androidx.appcompat.content.res.AppCompatResources.a(r1, r9)     // Catch: java.lang.Throwable -> L38 android.content.res.Resources.NotFoundException -> L3b
            r0.setButtonDrawable(r9)     // Catch: java.lang.Throwable -> L38 android.content.res.Resources.NotFoundException -> L3b
            goto L56
        L38:
            r0 = move-exception
            r9 = r0
            goto L82
        L3b:
            int r9 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L38
            boolean r9 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L38
            if (r9 == 0) goto L56
            int r9 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L38
            int r9 = r7.getResourceId(r9, r10)     // Catch: java.lang.Throwable -> L38
            if (r9 == 0) goto L56
            android.content.Context r10 = r0.getContext()     // Catch: java.lang.Throwable -> L38
            android.graphics.drawable.Drawable r9 = androidx.appcompat.content.res.AppCompatResources.a(r10, r9)     // Catch: java.lang.Throwable -> L38
            r0.setButtonDrawable(r9)     // Catch: java.lang.Throwable -> L38
        L56:
            int r9 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L38
            boolean r9 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L38
            if (r9 == 0) goto L67
            int r9 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L38
            android.content.res.ColorStateList r9 = r6.a(r9)     // Catch: java.lang.Throwable -> L38
            r0.setButtonTintList(r9)     // Catch: java.lang.Throwable -> L38
        L67:
            int r9 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L38
            boolean r9 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L38
            if (r9 == 0) goto L7e
            int r9 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L38
            r10 = -1
            int r9 = r7.getInt(r9, r10)     // Catch: java.lang.Throwable -> L38
            r10 = 0
            android.graphics.PorterDuff$Mode r9 = androidx.appcompat.widget.DrawableUtils.c(r9, r10)     // Catch: java.lang.Throwable -> L38
            r0.setButtonTintMode(r9)     // Catch: java.lang.Throwable -> L38
        L7e:
            r6.f()
            return
        L82:
            r6.f()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCompoundButtonHelper.b(android.util.AttributeSet, int):void");
    }
}
