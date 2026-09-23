package org.apache.commons.text;

import android.support.v4.media.a;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.nio.CharBuffer;
import java.util.List;

@Deprecated
/* loaded from: classes4.dex */
public class StrBuilder implements CharSequence, Appendable, Serializable, Builder<String> {

    /* renamed from: c, reason: collision with root package name */
    public char[] f22464c;
    public int f;

    /* loaded from: classes4.dex */
    public final class StrBuilderTokenizer extends StrTokenizer {
        @Override // org.apache.commons.text.StrTokenizer
        public final List e(char[] cArr, int i) {
            cArr.getClass();
            return super.e(cArr, i);
        }
    }

    /* loaded from: classes4.dex */
    public final class StrBuilderWriter extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }

        @Override // java.io.Writer
        public final void write(char[] cArr) {
            throw null;
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            throw null;
        }

        @Override // java.io.Writer
        public final void write(int i) {
            throw null;
        }

        @Override // java.io.Writer
        public final void write(String str) {
            throw null;
        }

        @Override // java.io.Writer
        public final void write(String str, int i, int i2) {
            throw null;
        }
    }

    public final StrBuilder a(String str) {
        int length;
        if (str != null && (length = str.length()) > 0) {
            int i = this.f;
            c(i + length);
            str.getChars(0, length, this.f22464c, i);
            this.f += length;
        }
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        if (charSequence != null) {
            if (charSequence instanceof StrBuilder) {
                StrBuilder strBuilder = (StrBuilder) charSequence;
                int i = strBuilder.f;
                if (i > 0) {
                    int i2 = this.f;
                    c(i2 + i);
                    System.arraycopy(strBuilder.f22464c, 0, this.f22464c, i2, i);
                    this.f += i;
                    return this;
                }
            } else if (charSequence instanceof StringBuilder) {
                StringBuilder sb = (StringBuilder) charSequence;
                int length = sb.length();
                if (length > 0) {
                    int i3 = this.f;
                    c(i3 + length);
                    sb.getChars(0, length, this.f22464c, i3);
                    this.f += length;
                    return this;
                }
            } else if (charSequence instanceof StringBuffer) {
                StringBuffer stringBuffer = (StringBuffer) charSequence;
                int length2 = stringBuffer.length();
                if (length2 > 0) {
                    int i4 = this.f;
                    c(i4 + length2);
                    stringBuffer.getChars(0, length2, this.f22464c, i4);
                    this.f += length2;
                }
            } else {
                if (charSequence instanceof CharBuffer) {
                    CharBuffer charBuffer = (CharBuffer) charSequence;
                    if (charBuffer.hasArray()) {
                        int remaining = charBuffer.remaining();
                        int i5 = this.f;
                        c(i5 + remaining);
                        System.arraycopy(charBuffer.array(), charBuffer.position() + charBuffer.arrayOffset(), this.f22464c, i5, remaining);
                        this.f += remaining;
                        return this;
                    }
                    a(charBuffer.toString());
                    return this;
                }
                a(charSequence.toString());
                return this;
            }
        }
        return this;
    }

    public final void b(char[] cArr, int i, int i2) {
        if (cArr != null) {
            if (i >= 0 && i <= cArr.length) {
                if (i2 >= 0 && i + i2 <= cArr.length) {
                    if (i2 > 0) {
                        int i3 = this.f;
                        c(i3 + i2);
                        System.arraycopy(cArr, i, this.f22464c, i3, i2);
                        this.f += i2;
                        return;
                    }
                    return;
                }
                throw new StringIndexOutOfBoundsException(a.e(i2, "Invalid length: "));
            }
            throw new StringIndexOutOfBoundsException(a.e(i2, "Invalid startIndex: "));
        }
    }

    public final void c(int i) {
        char[] cArr = this.f22464c;
        if (i > cArr.length) {
            char[] cArr2 = new char[i * 2];
            this.f22464c = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, this.f);
        }
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        if (i >= 0 && i < this.f) {
            return this.f22464c[i];
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    public final String d(int i, int i2) {
        if (i >= 0) {
            int i3 = this.f;
            if (i2 > i3) {
                i2 = i3;
            }
            if (i <= i2) {
                return new String(this.f22464c, i, i2 - i);
            }
            throw new StringIndexOutOfBoundsException("end < start");
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof StrBuilder) {
            StrBuilder strBuilder = (StrBuilder) obj;
            if (this != strBuilder) {
                int i = this.f;
                if (i == strBuilder.f) {
                    char[] cArr = this.f22464c;
                    char[] cArr2 = strBuilder.f22464c;
                    for (int i2 = i - 1; i2 >= 0; i2--) {
                        if (cArr[i2] != cArr2[i2]) {
                            return false;
                        }
                    }
                } else {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return toString();
    }

    public final int hashCode() {
        char[] cArr = this.f22464c;
        int i = 0;
        for (int i2 = this.f - 1; i2 >= 0; i2--) {
            i = (i * 31) + cArr[i2];
        }
        return i;
    }

    public final boolean isEmpty() {
        if (this.f == 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f;
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        if (i >= 0) {
            if (i2 <= this.f) {
                if (i <= i2) {
                    return d(i, i2);
                }
                throw new StringIndexOutOfBoundsException(i2 - i);
            }
            throw new StringIndexOutOfBoundsException(i2);
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return new String(this.f22464c, 0, this.f);
    }

    /* loaded from: classes4.dex */
    public final class StrBuilderReader extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Reader
        public final void mark(int i) {
            throw null;
        }

        @Override // java.io.Reader
        public final boolean markSupported() {
            return true;
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) {
            int i3;
            if (i < 0 || i2 < 0 || i > cArr.length || (i3 = i + i2) > cArr.length || i3 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return 0;
            }
            throw null;
        }

        @Override // java.io.Reader
        public final boolean ready() {
            throw null;
        }

        @Override // java.io.Reader
        public final void reset() {
            throw null;
        }

        @Override // java.io.Reader
        public final long skip(long j) {
            throw null;
        }

        @Override // java.io.Reader
        public final int read() {
            throw null;
        }
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i, int i2) {
        String charSequence2;
        int i3;
        if (charSequence != null && (charSequence2 = charSequence.toString()) != null) {
            if (i >= 0 && i <= charSequence2.length()) {
                if (i2 < 0 || (i3 = i + i2) > charSequence2.length()) {
                    throw new StringIndexOutOfBoundsException("length must be valid");
                }
                if (i2 > 0) {
                    int i4 = this.f;
                    c(i4 + i2);
                    charSequence2.getChars(i, i3, this.f22464c, i4);
                    this.f += i2;
                }
            } else {
                throw new StringIndexOutOfBoundsException("startIndex must be valid");
            }
        }
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c2) {
        c(this.f + 1);
        char[] cArr = this.f22464c;
        int i = this.f;
        this.f = i + 1;
        cArr[i] = c2;
        return this;
    }
}
