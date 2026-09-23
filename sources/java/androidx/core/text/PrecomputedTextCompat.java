package androidx.core.text;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.activity.i;
import androidx.annotation.RequiresApi;
import j$.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class PrecomputedTextCompat implements Spannable {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
    }

    /* loaded from: classes.dex */
    public static class PrecomputedTextFutureTask extends FutureTask<PrecomputedTextCompat> {

        /* loaded from: classes.dex */
        public static class PrecomputedTextCallback implements Callable<PrecomputedTextCompat> {
            @Override // java.util.concurrent.Callable
            public final PrecomputedTextCompat call() {
                throw null;
            }
        }
    }

    public final PrecomputedText a() {
        if (i.g(null)) {
            return null;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        throw null;
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i, int i2, Class cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        throw null;
    }

    @Override // java.lang.CharSequence
    public final int length() {
        throw null;
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        throw null;
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                throw null;
            }
            throw null;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                throw null;
            }
            throw null;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        throw null;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        throw null;
    }

    /* loaded from: classes.dex */
    public static final class Params {

        /* renamed from: a, reason: collision with root package name */
        public final TextPaint f747a;
        public final TextDirectionHeuristic b;

        /* renamed from: c, reason: collision with root package name */
        public final int f748c;
        public final int d;

        /* loaded from: classes.dex */
        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            public int f749a;
            public int b;
        }

        public Params(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.f747a = textPaint;
            this.b = textDirectionHeuristic;
            this.f748c = i;
            this.d = i2;
        }

        public final boolean a(Params params) {
            int i = Build.VERSION.SDK_INT;
            if (this.f748c != params.f748c || this.d != params.d) {
                return false;
            }
            TextPaint textPaint = this.f747a;
            float textSize = textPaint.getTextSize();
            TextPaint textPaint2 = params.f747a;
            TextPaint textPaint3 = params.f747a;
            if (textSize != textPaint2.getTextSize() || textPaint.getTextScaleX() != textPaint3.getTextScaleX() || textPaint.getTextSkewX() != textPaint3.getTextSkewX() || textPaint.getLetterSpacing() != textPaint3.getLetterSpacing() || !TextUtils.equals(textPaint.getFontFeatureSettings(), textPaint3.getFontFeatureSettings()) || textPaint.getFlags() != textPaint3.getFlags()) {
                return false;
            }
            if (i >= 24) {
                if (!textPaint.getTextLocales().equals(textPaint3.getTextLocales())) {
                    return false;
                }
            } else if (!textPaint.getTextLocale().equals(textPaint3.getTextLocale())) {
                return false;
            }
            if (textPaint.getTypeface() == null) {
                if (textPaint3.getTypeface() != null) {
                    return false;
                }
                return true;
            }
            if (!textPaint.getTypeface().equals(textPaint3.getTypeface())) {
                return false;
            }
            return true;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Params)) {
                return false;
            }
            Params params = (Params) obj;
            if (a(params) && this.b == params.b) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int i = Build.VERSION.SDK_INT;
            TextDirectionHeuristic textDirectionHeuristic = this.b;
            int i2 = this.d;
            int i3 = this.f748c;
            TextPaint textPaint = this.f747a;
            if (i >= 24) {
                return Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocales(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2));
            }
            return Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("{");
            StringBuilder sb2 = new StringBuilder("textSize=");
            TextPaint textPaint = this.f747a;
            sb2.append(textPaint.getTextSize());
            sb.append(sb2.toString());
            sb.append(", textScaleX=" + textPaint.getTextScaleX());
            sb.append(", textSkewX=" + textPaint.getTextSkewX());
            int i = Build.VERSION.SDK_INT;
            sb.append(", letterSpacing=" + textPaint.getLetterSpacing());
            sb.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
            if (i >= 24) {
                sb.append(", textLocale=" + textPaint.getTextLocales());
            } else {
                sb.append(", textLocale=" + textPaint.getTextLocale());
            }
            sb.append(", typeface=" + textPaint.getTypeface());
            if (i >= 26) {
                sb.append(", variationSettings=" + textPaint.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.b);
            sb.append(", breakStrategy=" + this.f748c);
            sb.append(", hyphenationFrequency=" + this.d);
            sb.append("}");
            return sb.toString();
        }

        public Params(PrecomputedText.Params params) {
            this.f747a = params.getTextPaint();
            this.b = params.getTextDirection();
            this.f748c = params.getBreakStrategy();
            this.d = params.getHyphenationFrequency();
        }
    }
}
