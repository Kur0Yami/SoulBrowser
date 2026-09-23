package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.RestrictTo;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import java.lang.ref.WeakReference;

@RestrictTo
/* loaded from: classes3.dex */
public class TextDrawableHelper {

    /* renamed from: c, reason: collision with root package name */
    public float f11816c;
    public float d;
    public final WeakReference f;
    public TextAppearance g;

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f11815a = new TextPaint(1);
    public final TextAppearanceFontCallback b = new TextAppearanceFontCallback() { // from class: com.google.android.material.internal.TextDrawableHelper.1
        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public final void a(int i) {
            TextDrawableHelper textDrawableHelper = TextDrawableHelper.this;
            textDrawableHelper.e = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) textDrawableHelper.f.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.a();
            }
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public final void b(Typeface typeface, boolean z) {
            if (!z) {
                TextDrawableHelper textDrawableHelper = TextDrawableHelper.this;
                textDrawableHelper.e = true;
                TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) textDrawableHelper.f.get();
                if (textDrawableDelegate != null) {
                    textDrawableDelegate.a();
                }
            }
        }
    };
    public boolean e = true;

    /* loaded from: classes3.dex */
    public interface TextDrawableDelegate {
        void a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public TextDrawableHelper(TextDrawableDelegate textDrawableDelegate) {
        this.f = new WeakReference(null);
        this.f = new WeakReference(textDrawableDelegate);
    }

    public final float a(String str) {
        if (!this.e) {
            return this.f11816c;
        }
        b(str);
        return this.f11816c;
    }

    public final void b(String str) {
        float measureText;
        TextPaint textPaint = this.f11815a;
        float f = 0.0f;
        if (str == null) {
            measureText = 0.0f;
        } else {
            measureText = textPaint.measureText((CharSequence) str, 0, str.length());
        }
        this.f11816c = measureText;
        if (str != null) {
            f = Math.abs(textPaint.getFontMetrics().ascent);
        }
        this.d = f;
        this.e = false;
    }

    public final void c(TextAppearance textAppearance, Context context) {
        if (this.g != textAppearance) {
            this.g = textAppearance;
            if (textAppearance != null) {
                TextPaint textPaint = this.f11815a;
                TextAppearanceFontCallback textAppearanceFontCallback = this.b;
                textAppearance.e(context, textPaint, textAppearanceFontCallback);
                TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) this.f.get();
                if (textDrawableDelegate != null) {
                    textPaint.drawableState = textDrawableDelegate.getState();
                }
                textAppearance.d(context, textPaint, textAppearanceFontCallback);
                this.e = true;
            }
            TextDrawableDelegate textDrawableDelegate2 = (TextDrawableDelegate) this.f.get();
            if (textDrawableDelegate2 != null) {
                textDrawableDelegate2.a();
                textDrawableDelegate2.onStateChange(textDrawableDelegate2.getState());
            }
        }
    }
}
