package com.google.android.material.internal;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.textfield.h;

@RestrictTo
/* loaded from: classes3.dex */
public final class StaticLayoutBuilderCompat {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f11813a;
    public final TextPaint b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11814c;
    public int d;
    public boolean k;
    public h m;
    public Layout.Alignment e = Layout.Alignment.ALIGN_NORMAL;
    public int f = Integer.MAX_VALUE;
    public float g = 0.0f;
    public float h = 1.0f;
    public int i = 1;
    public boolean j = true;
    public TextUtils.TruncateAt l = null;

    @RestrictTo
    /* loaded from: classes3.dex */
    public static class StaticLayoutBuilderCompatException extends Exception {
    }

    public StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f11813a = charSequence;
        this.b = textPaint;
        this.f11814c = i;
        this.d = charSequence.length();
    }

    public final StaticLayout a() {
        TextDirectionHeuristic textDirectionHeuristic;
        if (this.f11813a == null) {
            this.f11813a = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int max = Math.max(0, this.f11814c);
        CharSequence charSequence = this.f11813a;
        int i = this.f;
        TextPaint textPaint = this.b;
        if (i == 1) {
            charSequence = TextUtils.ellipsize(charSequence, textPaint, max, this.l);
        }
        int min = Math.min(charSequence.length(), this.d);
        this.d = min;
        if (this.k && this.f == 1) {
            this.e = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, min, textPaint, max);
        obtain.setAlignment(this.e);
        obtain.setIncludePad(this.j);
        if (this.k) {
            textDirectionHeuristic = TextDirectionHeuristics.RTL;
        } else {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        }
        obtain.setTextDirection(textDirectionHeuristic);
        TextUtils.TruncateAt truncateAt = this.l;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.f);
        float f = this.g;
        if (f != 0.0f || this.h != 1.0f) {
            obtain.setLineSpacing(f, this.h);
        }
        if (this.f > 1) {
            obtain.setHyphenationFrequency(this.i);
        }
        h hVar = this.m;
        if (hVar != null) {
            obtain.setBreakStrategy(hVar.f11989a.y.getBreakStrategy());
        }
        return obtain.build();
    }
}
