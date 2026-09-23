package com.google.common.base;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.AbstractIterator;
import com.google.common.base.CharMatcher;
import com.google.common.base.JdkPattern;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Splitter {

    /* renamed from: a, reason: collision with root package name */
    public final CharMatcher f12183a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final Strategy f12184c;
    public final int d;

    /* renamed from: com.google.common.base.Splitter$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends SplittingIterator {
        @Override // com.google.common.base.Splitter.SplittingIterator
        public final int b(int i) {
            throw null;
        }

        @Override // com.google.common.base.Splitter.SplittingIterator
        public final int c(int i) {
            throw null;
        }
    }

    /* renamed from: com.google.common.base.Splitter$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends SplittingIterator {
        @Override // com.google.common.base.Splitter.SplittingIterator
        public final int b(int i) {
            return i;
        }

        @Override // com.google.common.base.Splitter.SplittingIterator
        public final int c(int i) {
            if (i < this.g.length()) {
                return i;
            }
            return -1;
        }
    }

    /* loaded from: classes3.dex */
    public static final class MapSplitter {
    }

    /* loaded from: classes3.dex */
    public static abstract class SplittingIterator extends AbstractIterator<String> {
        public final CharSequence g;
        public final CharMatcher h;
        public final boolean i;
        public int j;
        public int k;

        public SplittingIterator(Splitter splitter, CharSequence charSequence) {
            this.f12149c = AbstractIterator.State.f;
            this.j = 0;
            this.h = splitter.f12183a;
            this.i = splitter.b;
            this.k = splitter.d;
            this.g = charSequence;
        }

        @Override // com.google.common.base.AbstractIterator
        public final Object a() {
            int c2;
            CharSequence charSequence;
            CharMatcher charMatcher;
            int i = this.j;
            while (true) {
                int i2 = this.j;
                if (i2 != -1) {
                    c2 = c(i2);
                    charSequence = this.g;
                    if (c2 == -1) {
                        c2 = charSequence.length();
                        this.j = -1;
                    } else {
                        this.j = b(c2);
                    }
                    int i3 = this.j;
                    if (i3 == i) {
                        int i4 = i3 + 1;
                        this.j = i4;
                        if (i4 > charSequence.length()) {
                            this.j = -1;
                        }
                    } else {
                        while (true) {
                            charMatcher = this.h;
                            if (i >= c2 || !charMatcher.m(charSequence.charAt(i))) {
                                break;
                            }
                            i++;
                        }
                        while (c2 > i && charMatcher.m(charSequence.charAt(c2 - 1))) {
                            c2--;
                        }
                        if (!this.i || i != c2) {
                            break;
                        }
                        i = this.j;
                    }
                } else {
                    this.f12149c = AbstractIterator.State.g;
                    return null;
                }
            }
            int i5 = this.k;
            if (i5 == 1) {
                c2 = charSequence.length();
                this.j = -1;
                while (c2 > i && charMatcher.m(charSequence.charAt(c2 - 1))) {
                    c2--;
                }
            } else {
                this.k = i5 - 1;
            }
            return charSequence.subSequence(i, c2).toString();
        }

        public abstract int b(int i);

        public abstract int c(int i);
    }

    /* loaded from: classes3.dex */
    public interface Strategy {
        Iterator a(Splitter splitter, CharSequence charSequence);
    }

    public Splitter(Strategy strategy, boolean z, CharMatcher charMatcher, int i) {
        this.f12184c = strategy;
        this.b = z;
        this.f12183a = charMatcher;
        this.d = i;
    }

    public static Splitter a(char c2) {
        return new Splitter(new a(1, new CharMatcher.Is(c2)));
    }

    public static void b() {
        Preconditions.c("The pattern may not match the empty string: %s", new JdkPattern(Pattern.compile("\r\n|\n|\r")), !new JdkPattern.JdkMatcher(r0.f12167c.matcher(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)).f12168a.matches());
    }

    public final Iterable c(final String str) {
        str.getClass();
        return new Iterable<String>(this) { // from class: com.google.common.base.Splitter.5
            public final /* synthetic */ Splitter f;

            {
                this.f = this;
            }

            @Override // java.lang.Iterable
            public final Iterator<String> iterator() {
                CharSequence charSequence = str;
                Splitter splitter = this.f;
                return splitter.f12184c.a(splitter, charSequence);
            }

            public final String toString() {
                Joiner joiner = new Joiner(", ");
                StringBuilder sb = new StringBuilder();
                sb.append('[');
                try {
                    joiner.a(sb, iterator());
                    sb.append(']');
                    return sb.toString();
                } catch (IOException e) {
                    throw new AssertionError(e);
                }
            }
        };
    }

    public final List d(String str) {
        str.getClass();
        Iterator a2 = this.f12184c.a(this, str);
        ArrayList arrayList = new ArrayList();
        while (a2.hasNext()) {
            arrayList.add((String) a2.next());
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    public final Splitter e() {
        CharMatcher charMatcher = CharMatcher.Whitespace.g;
        charMatcher.getClass();
        return new Splitter(this.f12184c, this.b, charMatcher, this.d);
    }

    public Splitter(Strategy strategy) {
        this(strategy, false, CharMatcher.None.f, Integer.MAX_VALUE);
    }
}
