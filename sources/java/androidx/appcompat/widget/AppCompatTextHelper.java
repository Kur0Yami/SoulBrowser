package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.appcompat.R;
import androidx.core.content.res.ResourcesCompat;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatTextHelper {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f273a;
    public TintInfo b;

    /* renamed from: c, reason: collision with root package name */
    public TintInfo f274c;
    public TintInfo d;
    public TintInfo e;
    public TintInfo f;
    public TintInfo g;
    public TintInfo h;
    public final AppCompatTextViewAutoSizeHelper i;
    public int j = 0;
    public int k = -1;
    public Typeface l;
    public boolean m;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
        @DoNotInline
        public static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        @DoNotInline
        public static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }

        @DoNotInline
        public static void b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
        @DoNotInline
        public static int a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        @DoNotInline
        public static void b(TextView textView, int i, int i2, int i3, int i4) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }

        @DoNotInline
        public static void c(TextView textView, int[] iArr, int i) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        }

        @DoNotInline
        public static boolean d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
        @DoNotInline
        public static Typeface a(Typeface typeface, int i, boolean z) {
            return Typeface.create(typeface, i, z);
        }
    }

    public AppCompatTextHelper(TextView textView) {
        this.f273a = textView;
        this.i = new AppCompatTextViewAutoSizeHelper(textView);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public static TintInfo c(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        ColorStateList h;
        synchronized (appCompatDrawableManager) {
            h = appCompatDrawableManager.f236a.h(context, i);
        }
        if (h != null) {
            ?? obj = new Object();
            obj.d = true;
            obj.f329a = h;
            return obj;
        }
        return null;
    }

    public final void a(Drawable drawable, TintInfo tintInfo) {
        if (drawable != null && tintInfo != null) {
            AppCompatDrawableManager.e(drawable, tintInfo, this.f273a.getDrawableState());
        }
    }

    public final void b() {
        TintInfo tintInfo = this.b;
        TextView textView = this.f273a;
        if (tintInfo != null || this.f274c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.f274c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f == null && this.g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f);
        a(compoundDrawablesRelative[2], this.g);
    }

    public final ColorStateList d() {
        TintInfo tintInfo = this.h;
        if (tintInfo != null) {
            return tintInfo.f329a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        TintInfo tintInfo = this.h;
        if (tintInfo != null) {
            return tintInfo.b;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:182:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x023d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(android.util.AttributeSet r20, int r21) {
        /*
            Method dump skipped, instructions count: 1040
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatTextHelper.f(android.util.AttributeSet, int):void");
    }

    public final void g(Context context, int i) {
        String string;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R.styleable.TextAppearance);
        TintTypedArray tintTypedArray = new TintTypedArray(context, obtainStyledAttributes);
        boolean hasValue = obtainStyledAttributes.hasValue(R.styleable.TextAppearance_textAllCaps);
        TextView textView = this.f273a;
        if (hasValue) {
            textView.setAllCaps(obtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false));
        }
        int i2 = Build.VERSION.SDK_INT;
        if (obtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textSize) && obtainStyledAttributes.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        m(context, tintTypedArray);
        if (i2 >= 26 && obtainStyledAttributes.hasValue(R.styleable.TextAppearance_fontVariationSettings) && (string = obtainStyledAttributes.getString(R.styleable.TextAppearance_fontVariationSettings)) != null) {
            Api26Impl.d(textView, string);
        }
        tintTypedArray.f();
        Typeface typeface = this.l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.j);
        }
    }

    public final void h(int i, int i2, int i3, int i4) {
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.i;
        if (appCompatTextViewAutoSizeHelper.j()) {
            DisplayMetrics displayMetrics = appCompatTextViewAutoSizeHelper.j.getResources().getDisplayMetrics();
            appCompatTextViewAutoSizeHelper.k(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (appCompatTextViewAutoSizeHelper.h()) {
                appCompatTextViewAutoSizeHelper.a();
            }
        }
    }

    public final void i(int[] iArr, int i) {
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.i;
        if (appCompatTextViewAutoSizeHelper.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = appCompatTextViewAutoSizeHelper.j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                appCompatTextViewAutoSizeHelper.f = AppCompatTextViewAutoSizeHelper.b(iArr2);
                if (!appCompatTextViewAutoSizeHelper.i()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                appCompatTextViewAutoSizeHelper.g = false;
            }
            if (appCompatTextViewAutoSizeHelper.h()) {
                appCompatTextViewAutoSizeHelper.a();
            }
        }
    }

    public final void j(int i) {
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.i;
        if (appCompatTextViewAutoSizeHelper.j()) {
            if (i != 0) {
                if (i == 1) {
                    DisplayMetrics displayMetrics = appCompatTextViewAutoSizeHelper.j.getResources().getDisplayMetrics();
                    appCompatTextViewAutoSizeHelper.k(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (appCompatTextViewAutoSizeHelper.h()) {
                        appCompatTextViewAutoSizeHelper.a();
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException(android.support.v4.media.a.e(i, "Unknown auto-size text type: "));
            }
            appCompatTextViewAutoSizeHelper.f283a = 0;
            appCompatTextViewAutoSizeHelper.d = -1.0f;
            appCompatTextViewAutoSizeHelper.e = -1.0f;
            appCompatTextViewAutoSizeHelper.f284c = -1.0f;
            appCompatTextViewAutoSizeHelper.f = new int[0];
            appCompatTextViewAutoSizeHelper.b = false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void k(ColorStateList colorStateList) {
        boolean z;
        if (this.h == null) {
            this.h = new Object();
        }
        TintInfo tintInfo = this.h;
        tintInfo.f329a = colorStateList;
        if (colorStateList != null) {
            z = true;
        } else {
            z = false;
        }
        tintInfo.d = z;
        this.b = tintInfo;
        this.f274c = tintInfo;
        this.d = tintInfo;
        this.e = tintInfo;
        this.f = tintInfo;
        this.g = tintInfo;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void l(PorterDuff.Mode mode) {
        boolean z;
        if (this.h == null) {
            this.h = new Object();
        }
        TintInfo tintInfo = this.h;
        tintInfo.b = mode;
        if (mode != null) {
            z = true;
        } else {
            z = false;
        }
        tintInfo.f330c = z;
        this.b = tintInfo;
        this.f274c = tintInfo;
        this.d = tintInfo;
        this.e = tintInfo;
        this.f = tintInfo;
        this.g = tintInfo;
    }

    public final void m(Context context, TintTypedArray tintTypedArray) {
        int i;
        String string;
        boolean z;
        boolean z2;
        int i2 = R.styleable.TextAppearance_android_textStyle;
        int i3 = this.j;
        TypedArray typedArray = tintTypedArray.b;
        this.j = typedArray.getInt(i2, i3);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 28) {
            int i5 = typedArray.getInt(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.k = i5;
            if (i5 != -1) {
                this.j &= 2;
            }
        }
        boolean z3 = true;
        if (!typedArray.hasValue(R.styleable.TextAppearance_android_fontFamily) && !typedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
            if (typedArray.hasValue(R.styleable.TextAppearance_android_typeface)) {
                this.m = false;
                int i6 = typedArray.getInt(R.styleable.TextAppearance_android_typeface, 1);
                if (i6 != 1) {
                    if (i6 != 2) {
                        if (i6 == 3) {
                            this.l = Typeface.MONOSPACE;
                            return;
                        }
                        return;
                    }
                    this.l = Typeface.SERIF;
                    return;
                }
                this.l = Typeface.SANS_SERIF;
                return;
            }
            return;
        }
        this.l = null;
        if (typedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
            i = R.styleable.TextAppearance_fontFamily;
        } else {
            i = R.styleable.TextAppearance_android_fontFamily;
        }
        final int i7 = this.k;
        final int i8 = this.j;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.f273a);
            try {
                Typeface d = tintTypedArray.d(i, this.j, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public final void b(int i9) {
                    }

                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public final void c(final Typeface typeface) {
                        int i9;
                        boolean z4;
                        if (Build.VERSION.SDK_INT >= 28 && (i9 = i7) != -1) {
                            if ((i8 & 2) != 0) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            typeface = Api28Impl.a(typeface, i9, z4);
                        }
                        AppCompatTextHelper appCompatTextHelper = AppCompatTextHelper.this;
                        if (appCompatTextHelper.m) {
                            appCompatTextHelper.l = typeface;
                            final TextView textView = (TextView) weakReference.get();
                            if (textView != null) {
                                if (textView.isAttachedToWindow()) {
                                    final int i10 = appCompatTextHelper.j;
                                    textView.post(new Runnable() { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            textView.setTypeface(typeface, i10);
                                        }
                                    });
                                } else {
                                    textView.setTypeface(typeface, appCompatTextHelper.j);
                                }
                            }
                        }
                    }
                });
                if (d != null) {
                    if (i4 >= 28 && this.k != -1) {
                        Typeface create = Typeface.create(d, 0);
                        int i9 = this.k;
                        if ((this.j & 2) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.l = Api28Impl.a(create, i9, z2);
                    } else {
                        this.l = d;
                    }
                }
                if (this.l == null) {
                    z = true;
                } else {
                    z = false;
                }
                this.m = z;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l == null && (string = typedArray.getString(i)) != null) {
            if (Build.VERSION.SDK_INT >= 28 && this.k != -1) {
                Typeface create2 = Typeface.create(string, 0);
                int i10 = this.k;
                if ((this.j & 2) == 0) {
                    z3 = false;
                }
                this.l = Api28Impl.a(create2, i10, z3);
                return;
            }
            this.l = Typeface.create(string, this.j);
        }
    }
}
