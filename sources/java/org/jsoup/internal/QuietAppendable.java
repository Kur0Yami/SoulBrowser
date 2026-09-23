package org.jsoup.internal;

import java.io.IOException;
import org.jsoup.SerializationException;

/* loaded from: classes4.dex */
public abstract class QuietAppendable {

    /* loaded from: classes4.dex */
    public static final class StringBuilderAppendable extends QuietAppendable {

        /* renamed from: a, reason: collision with root package name */
        public final StringBuilder f22550a;

        public StringBuilderAppendable(StringBuilder sb) {
            this.f22550a = sb;
        }

        @Override // org.jsoup.internal.QuietAppendable
        public final QuietAppendable append(CharSequence charSequence) {
            this.f22550a.append(charSequence);
            return this;
        }

        public final String toString() {
            return this.f22550a.toString();
        }

        @Override // org.jsoup.internal.QuietAppendable
        public final QuietAppendable append(char c2) {
            this.f22550a.append(c2);
            return this;
        }

        @Override // org.jsoup.internal.QuietAppendable
        public final QuietAppendable append(char[] cArr, int i, int i2) {
            this.f22550a.append(cArr, i, i2);
            return this;
        }
    }

    public static QuietAppendable wrap(Appendable appendable) {
        if (appendable instanceof StringBuilder) {
            return new StringBuilderAppendable((StringBuilder) appendable);
        }
        return new BaseAppendable(appendable);
    }

    public abstract QuietAppendable append(char c2);

    public abstract QuietAppendable append(CharSequence charSequence);

    public abstract QuietAppendable append(char[] cArr, int i, int i2);

    /* loaded from: classes4.dex */
    public static final class BaseAppendable extends QuietAppendable {

        /* renamed from: a, reason: collision with root package name */
        public final Appendable f22549a;

        @FunctionalInterface
        /* loaded from: classes4.dex */
        public interface Action {
        }

        public BaseAppendable(Appendable appendable) {
            this.f22549a = appendable;
        }

        @Override // org.jsoup.internal.QuietAppendable
        public final QuietAppendable append(CharSequence charSequence) {
            try {
                this.f22549a.append(charSequence);
                return this;
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }

        @Override // org.jsoup.internal.QuietAppendable
        public final QuietAppendable append(char c2) {
            try {
                this.f22549a.append(c2);
                return this;
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }

        @Override // org.jsoup.internal.QuietAppendable
        public final QuietAppendable append(char[] cArr, int i, int i2) {
            try {
                this.f22549a.append(new String(cArr, i, i2));
                return this;
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }
    }
}
