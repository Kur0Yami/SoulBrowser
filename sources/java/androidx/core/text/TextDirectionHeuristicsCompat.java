package androidx.core.text;

import android.text.TextUtils;
import java.util.Locale;

/* loaded from: classes.dex */
public final class TextDirectionHeuristicsCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final TextDirectionHeuristicCompat f750a = new TextDirectionHeuristicInternal(null, false);
    public static final TextDirectionHeuristicCompat b = new TextDirectionHeuristicInternal(null, true);

    /* renamed from: c, reason: collision with root package name */
    public static final TextDirectionHeuristicCompat f751c;
    public static final TextDirectionHeuristicCompat d;

    /* loaded from: classes.dex */
    public static class AnyStrong implements TextDirectionAlgorithm {
        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public final int a(int i, CharSequence charSequence) {
            boolean z = false;
            for (int i2 = 0; i2 < i; i2++) {
                byte directionality = Character.getDirectionality(charSequence.charAt(i2));
                TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.f750a;
                if (directionality != 0) {
                    if (directionality == 1 || directionality == 2) {
                        return 0;
                    }
                } else {
                    z = true;
                }
            }
            if (!z) {
                return 2;
            }
            return 1;
        }
    }

    /* loaded from: classes.dex */
    public static class FirstStrong implements TextDirectionAlgorithm {

        /* renamed from: a, reason: collision with root package name */
        public static final FirstStrong f752a = new Object();

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public final int a(int i, CharSequence charSequence) {
            int i2 = 2;
            for (int i3 = 0; i3 < i && i2 == 2; i3++) {
                byte directionality = Character.getDirectionality(charSequence.charAt(i3));
                TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.f750a;
                if (directionality != 0) {
                    if (directionality != 1 && directionality != 2) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                break;
                            case 16:
                            case 17:
                                break;
                            default:
                                i2 = 2;
                                break;
                        }
                    }
                    i2 = 0;
                }
                i2 = 1;
            }
            return i2;
        }
    }

    /* loaded from: classes.dex */
    public interface TextDirectionAlgorithm {
        int a(int i, CharSequence charSequence);
    }

    /* loaded from: classes.dex */
    public static abstract class TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {

        /* renamed from: a, reason: collision with root package name */
        public final TextDirectionAlgorithm f753a;

        public TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.f753a = textDirectionAlgorithm;
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public final boolean a(int i, CharSequence charSequence) {
            if (charSequence != null && i >= 0 && charSequence.length() - i >= 0) {
                TextDirectionAlgorithm textDirectionAlgorithm = this.f753a;
                if (textDirectionAlgorithm == null) {
                    return b();
                }
                int a2 = textDirectionAlgorithm.a(i, charSequence);
                if (a2 == 0) {
                    return true;
                }
                if (a2 != 1) {
                    return b();
                }
                return false;
            }
            throw new IllegalArgumentException();
        }

        public abstract boolean b();
    }

    /* loaded from: classes.dex */
    public static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {
        public final boolean b;

        public TextDirectionHeuristicInternal(FirstStrong firstStrong, boolean z) {
            super(firstStrong);
            this.b = z;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        public final boolean b() {
            return this.b;
        }
    }

    /* loaded from: classes.dex */
    public static class TextDirectionHeuristicLocale extends TextDirectionHeuristicImpl {
        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        public final boolean b() {
            if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {
                return true;
            }
            return false;
        }
    }

    static {
        FirstStrong firstStrong = FirstStrong.f752a;
        f751c = new TextDirectionHeuristicInternal(firstStrong, false);
        d = new TextDirectionHeuristicInternal(firstStrong, true);
    }
}
