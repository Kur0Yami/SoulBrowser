package androidx.emoji2.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.activity.i;
import androidx.annotation.RequiresApi;
import androidx.core.text.PrecomputedTextCompat;
import j$.util.stream.IntStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class UnprecomputeTextOnModificationSpannable implements Spannable {

    /* renamed from: c, reason: collision with root package name */
    public boolean f1028c = false;
    public Spannable f;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class CharSequenceHelper_API24 {
        public static IntStream a(CharSequence charSequence) {
            IntStream convert;
            convert = IntStream.VivifiedWrapper.convert(charSequence.chars());
            return convert;
        }

        public static IntStream b(CharSequence charSequence) {
            IntStream convert;
            convert = IntStream.VivifiedWrapper.convert(charSequence.codePoints());
            return convert;
        }
    }

    /* loaded from: classes.dex */
    public static class PrecomputedTextDetector {
        public boolean a(CharSequence charSequence) {
            return charSequence instanceof PrecomputedTextCompat;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class PrecomputedTextDetector_28 extends PrecomputedTextDetector {
        @Override // androidx.emoji2.text.UnprecomputeTextOnModificationSpannable.PrecomputedTextDetector
        public final boolean a(CharSequence charSequence) {
            if (!i.g(charSequence) && !(charSequence instanceof PrecomputedTextCompat)) {
                return false;
            }
            return true;
        }
    }

    public UnprecomputeTextOnModificationSpannable(Spannable spannable) {
        this.f = spannable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.emoji2.text.UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    public final void a() {
        ?? r1;
        Spannable spannable = this.f;
        if (!this.f1028c) {
            if (Build.VERSION.SDK_INT < 28) {
                r1 = new Object();
            } else {
                r1 = new Object();
            }
            if (r1.a(spannable)) {
                this.f = new SpannableString(spannable);
            }
        }
        this.f1028c = true;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.f.charAt(i);
    }

    @Override // java.lang.CharSequence
    public /* synthetic */ java.util.stream.IntStream chars() {
        return IntStream.Wrapper.convert(chars());
    }

    @Override // java.lang.CharSequence
    public /* synthetic */ java.util.stream.IntStream codePoints() {
        return IntStream.Wrapper.convert(codePoints());
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i, int i2, Class cls) {
        return this.f.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        return this.f.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        a();
        this.f.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        a();
        this.f.setSpan(obj, i, i2, i3);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return this.f.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f.toString();
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return CharSequenceHelper_API24.a(this.f);
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        return CharSequenceHelper_API24.b(this.f);
    }
}
