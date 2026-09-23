package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.content.res.ResourcesCompat;

@RestrictTo
/* loaded from: classes3.dex */
public class TextAppearance {

    /* renamed from: a, reason: collision with root package name */
    public final ColorStateList f11861a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11862c;
    public final int d;
    public final int e;
    public final float f;
    public final float g;
    public final float h;
    public final boolean i;
    public final float j;
    public final ColorStateList k;
    public float l;
    public final int m;
    public boolean n = false;
    public boolean o = false;
    public Typeface p;

    public TextAppearance(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R.styleable.TextAppearance);
        this.l = obtainStyledAttributes.getDimension(R.styleable.TextAppearance_android_textSize, 0.0f);
        this.k = MaterialResources.a(context, obtainStyledAttributes, R.styleable.TextAppearance_android_textColor);
        MaterialResources.a(context, obtainStyledAttributes, R.styleable.TextAppearance_android_textColorHint);
        MaterialResources.a(context, obtainStyledAttributes, R.styleable.TextAppearance_android_textColorLink);
        this.d = obtainStyledAttributes.getInt(R.styleable.TextAppearance_android_textStyle, 0);
        this.e = obtainStyledAttributes.getInt(R.styleable.TextAppearance_android_typeface, 1);
        int i2 = R.styleable.TextAppearance_fontFamily;
        i2 = obtainStyledAttributes.hasValue(i2) ? i2 : R.styleable.TextAppearance_android_fontFamily;
        this.m = obtainStyledAttributes.getResourceId(i2, 0);
        this.b = obtainStyledAttributes.getString(i2);
        obtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        this.f11861a = MaterialResources.a(context, obtainStyledAttributes, R.styleable.TextAppearance_android_shadowColor);
        this.f = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.g = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.h = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, com.google.android.material.R.styleable.MaterialTextAppearance);
        this.i = obtainStyledAttributes2.hasValue(com.google.android.material.R.styleable.MaterialTextAppearance_android_letterSpacing);
        this.j = obtainStyledAttributes2.getFloat(com.google.android.material.R.styleable.MaterialTextAppearance_android_letterSpacing, 0.0f);
        if (Build.VERSION.SDK_INT >= 26) {
            int i3 = com.google.android.material.R.styleable.MaterialTextAppearance_fontVariationSettings;
            this.f11862c = obtainStyledAttributes2.getString(obtainStyledAttributes2.hasValue(i3) ? i3 : com.google.android.material.R.styleable.MaterialTextAppearance_android_fontVariationSettings);
        }
        obtainStyledAttributes2.recycle();
    }

    public final void a() {
        String str;
        Typeface typeface = this.p;
        int i = this.d;
        if (typeface == null && (str = this.b) != null) {
            this.p = Typeface.create(str, i);
        }
        if (this.p == null) {
            int i2 = this.e;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        this.p = Typeface.DEFAULT;
                    } else {
                        this.p = Typeface.MONOSPACE;
                    }
                } else {
                    this.p = Typeface.SERIF;
                }
            } else {
                this.p = Typeface.SANS_SERIF;
            }
            this.p = Typeface.create(this.p, i);
        }
    }

    public final void b(Context context, final TextAppearanceFontCallback textAppearanceFontCallback) {
        if (!c(context)) {
            a();
        }
        int i = this.m;
        if (i == 0) {
            this.n = true;
        }
        if (this.n) {
            textAppearanceFontCallback.b(this.p, true);
            return;
        }
        try {
            ResourcesCompat.FontCallback fontCallback = new ResourcesCompat.FontCallback() { // from class: com.google.android.material.resources.TextAppearance.1
                @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                public final void b(int i2) {
                    TextAppearance.this.n = true;
                    textAppearanceFontCallback.a(i2);
                }

                @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                public final void c(Typeface typeface) {
                    TextAppearance textAppearance = TextAppearance.this;
                    textAppearance.p = Typeface.create(typeface, textAppearance.d);
                    textAppearance.n = true;
                    textAppearanceFontCallback.b(textAppearance.p, false);
                }
            };
            ThreadLocal threadLocal = ResourcesCompat.f668a;
            if (context.isRestricted()) {
                fontCallback.a(-4);
            } else {
                ResourcesCompat.c(context, i, new TypedValue(), 0, fontCallback, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.n = true;
            textAppearanceFontCallback.a(1);
        } catch (Exception e) {
            Log.d("TextAppearance", "Error loading font " + this.b, e);
            this.n = true;
            textAppearanceFontCallback.a(-3);
        }
    }

    public final boolean c(Context context) {
        Context context2;
        Typeface c2;
        String str;
        Typeface create;
        if (this.n) {
            return true;
        }
        int i = this.m;
        if (i != 0) {
            ThreadLocal threadLocal = ResourcesCompat.f668a;
            Typeface typeface = null;
            if (context.isRestricted()) {
                context2 = context;
                c2 = null;
            } else {
                context2 = context;
                c2 = ResourcesCompat.c(context2, i, new TypedValue(), 0, null, false, true);
            }
            if (c2 != null) {
                this.p = c2;
                this.n = true;
                return true;
            }
            if (!this.o) {
                this.o = true;
                Resources resources = context2.getResources();
                int i2 = this.m;
                if (i2 != 0 && resources.getResourceTypeName(i2).equals("font")) {
                    try {
                        XmlResourceParser xml = resources.getXml(i2);
                        while (xml.getEventType() != 1) {
                            if (xml.getEventType() == 2 && xml.getName().equals("font-family")) {
                                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xml), androidx.core.R.styleable.FontFamily);
                                str = obtainAttributes.getString(androidx.core.R.styleable.FontFamily_fontProviderSystemFontFamily);
                                obtainAttributes.recycle();
                                break;
                            }
                            xml.next();
                        }
                    } catch (Throwable unused) {
                    }
                }
                str = null;
                if (str != null && (create = Typeface.create(str, 0)) != Typeface.DEFAULT) {
                    typeface = Typeface.create(create, this.d);
                }
            }
            if (typeface != null) {
                this.p = typeface;
                this.n = true;
                return true;
            }
        }
        return false;
    }

    public final void d(Context context, TextPaint textPaint, TextAppearanceFontCallback textAppearanceFontCallback) {
        int i;
        int i2;
        e(context, textPaint, textAppearanceFontCallback);
        ColorStateList colorStateList = this.k;
        if (colorStateList != null) {
            i = colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor());
        } else {
            i = -16777216;
        }
        textPaint.setColor(i);
        ColorStateList colorStateList2 = this.f11861a;
        if (colorStateList2 != null) {
            i2 = colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor());
        } else {
            i2 = 0;
        }
        textPaint.setShadowLayer(this.h, this.f, this.g, i2);
    }

    public final void e(final Context context, final TextPaint textPaint, final TextAppearanceFontCallback textAppearanceFontCallback) {
        Typeface typeface;
        if (c(context) && this.n && (typeface = this.p) != null) {
            f(context, textPaint, typeface);
            return;
        }
        a();
        f(context, textPaint, this.p);
        b(context, new TextAppearanceFontCallback() { // from class: com.google.android.material.resources.TextAppearance.2
            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public final void a(int i) {
                textAppearanceFontCallback.a(i);
            }

            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public final void b(Typeface typeface2, boolean z) {
                TextAppearance.this.f(context, textPaint, typeface2);
                textAppearanceFontCallback.b(typeface2, z);
            }
        });
    }

    public final void f(Context context, TextPaint textPaint, Typeface typeface) {
        boolean z;
        float f;
        Typeface a2 = TypefaceUtils.a(context.getResources().getConfiguration(), typeface);
        if (a2 != null) {
            typeface = a2;
        }
        textPaint.setTypeface(typeface);
        int i = (~typeface.getStyle()) & this.d;
        if ((i & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        textPaint.setFakeBoldText(z);
        if ((i & 2) != 0) {
            f = -0.25f;
        } else {
            f = 0.0f;
        }
        textPaint.setTextSkewX(f);
        textPaint.setTextSize(this.l);
        if (Build.VERSION.SDK_INT >= 26) {
            textPaint.setFontVariationSettings(this.f11862c);
        }
        if (this.i) {
            textPaint.setLetterSpacing(this.j);
        }
    }
}
