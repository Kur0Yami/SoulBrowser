package org.apache.commons.text;

import android.support.v4.media.a;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.nio.CharBuffer;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.IntCompanionObject;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes4.dex */
public class TextStringBuilder implements CharSequence, Appendable, Serializable, Builder<String> {

    /* renamed from: c, reason: collision with root package name */
    public char[] f22474c;
    public int f;

    /* loaded from: classes4.dex */
    public final class TextStringBuilderTokenizer extends StringTokenizer {
        @Override // org.apache.commons.text.StringTokenizer
        public final List e(char[] cArr, int i) {
            cArr.getClass();
            return super.e(cArr, i);
        }
    }

    /* loaded from: classes4.dex */
    public final class TextStringBuilderWriter extends Writer {
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

    static {
        Boolean.FALSE.toString().getClass();
        Boolean.TRUE.toString().getClass();
    }

    public final void a(int i, int i2, String str) {
        int i3;
        if (str != null) {
            if (i >= 0 && i <= str.length()) {
                if (i2 >= 0 && (i3 = i + i2) <= str.length()) {
                    if (i2 > 0) {
                        int i4 = this.f;
                        c(i4 + i2);
                        str.getChars(i, i3, this.f22474c, i4);
                        this.f += i2;
                        return;
                    }
                    return;
                }
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            throw new StringIndexOutOfBoundsException("startIndex must be valid");
        }
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        if (charSequence != null) {
            if (charSequence instanceof TextStringBuilder) {
                TextStringBuilder textStringBuilder = (TextStringBuilder) charSequence;
                int i = StringUtils.f22358a;
                int length = textStringBuilder.length();
                int i2 = textStringBuilder.f;
                if (i2 < 0) {
                    throw new StringIndexOutOfBoundsException("startIndex must be valid");
                }
                if (length < 0 || length > i2) {
                    throw new StringIndexOutOfBoundsException("length must be valid");
                }
                if (length > 0) {
                    int i3 = this.f;
                    c(i3 + length);
                    char[] cArr = this.f22474c;
                    if (length < 0 || length > textStringBuilder.f) {
                        throw new StringIndexOutOfBoundsException(length);
                    }
                    if (length >= 0) {
                        System.arraycopy(textStringBuilder.f22474c, 0, cArr, i3, length);
                        this.f += length;
                        return this;
                    }
                    throw new StringIndexOutOfBoundsException("end < start");
                }
            } else if (charSequence instanceof StringBuilder) {
                StringBuilder sb = (StringBuilder) charSequence;
                int i4 = StringUtils.f22358a;
                int length2 = sb.length();
                if (sb.length() >= 0) {
                    if (length2 < 0 || length2 > sb.length()) {
                        throw new StringIndexOutOfBoundsException("length must be valid");
                    }
                    if (length2 > 0) {
                        int i5 = this.f;
                        c(i5 + length2);
                        sb.getChars(0, length2, this.f22474c, i5);
                        this.f += length2;
                        return this;
                    }
                } else {
                    throw new StringIndexOutOfBoundsException("startIndex must be valid");
                }
            } else if (charSequence instanceof StringBuffer) {
                StringBuffer stringBuffer = (StringBuffer) charSequence;
                int i6 = StringUtils.f22358a;
                int length3 = stringBuffer.length();
                if (stringBuffer.length() >= 0) {
                    if (length3 < 0 || length3 > stringBuffer.length()) {
                        throw new StringIndexOutOfBoundsException("length must be valid");
                    }
                    if (length3 > 0) {
                        int i7 = this.f;
                        c(i7 + length3);
                        stringBuffer.getChars(0, length3, this.f22474c, i7);
                        this.f += length3;
                    }
                } else {
                    throw new StringIndexOutOfBoundsException("startIndex must be valid");
                }
            } else {
                if (charSequence instanceof CharBuffer) {
                    CharBuffer charBuffer = (CharBuffer) charSequence;
                    int i8 = StringUtils.f22358a;
                    int length4 = charBuffer.length();
                    if (charBuffer.hasArray()) {
                        int remaining = charBuffer.remaining();
                        if (remaining < 0) {
                            throw new StringIndexOutOfBoundsException("startIndex must be valid");
                        }
                        if (length4 >= 0 && length4 <= remaining) {
                            int i9 = this.f;
                            c(i9 + length4);
                            System.arraycopy(charBuffer.array(), charBuffer.position() + charBuffer.arrayOffset(), this.f22474c, i9, length4);
                            this.f += length4;
                            return this;
                        }
                        throw new StringIndexOutOfBoundsException("length must be valid");
                    }
                    a(0, length4, charBuffer.toString());
                    return this;
                }
                String charSequence2 = charSequence.toString();
                a(0, StringUtils.d(charSequence2), charSequence2);
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
                        System.arraycopy(cArr, i, this.f22474c, i3, i2);
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
        char[] cArr = this.f22474c;
        if (i - cArr.length > 0) {
            int length = cArr.length * 2;
            if (Integer.compare(length ^ IntCompanionObject.MIN_VALUE, i ^ IntCompanionObject.MIN_VALUE) < 0) {
                length = i;
            }
            if (Integer.compare(Integer.MIN_VALUE ^ length, -9) > 0) {
                if (i >= 0) {
                    length = Math.max(i, 2147483639);
                } else {
                    throw new OutOfMemoryError("Unable to allocate array size: " + Long.toString(i & 4294967295L, 10));
                }
            }
            this.f22474c = Arrays.copyOf(this.f22474c, length);
        }
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        if (i >= 0 && i < this.f) {
            return this.f22474c[i];
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TextStringBuilder) {
            TextStringBuilder textStringBuilder = (TextStringBuilder) obj;
            if (this != textStringBuilder) {
                int i = this.f;
                if (i == textStringBuilder.f) {
                    char[] cArr = this.f22474c;
                    char[] cArr2 = textStringBuilder.f22474c;
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
        char[] cArr = this.f22474c;
        int i = 0;
        for (int i2 = 0; i2 < this.f; i2++) {
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
            int i3 = this.f;
            if (i2 <= i3) {
                if (i <= i2) {
                    if (i >= 0) {
                        if (i2 > i3) {
                            i2 = i3;
                        }
                        if (i <= i2) {
                            return new String(this.f22474c, i, i2 - i);
                        }
                        throw new StringIndexOutOfBoundsException("end < start");
                    }
                    throw new StringIndexOutOfBoundsException(i);
                }
                throw new StringIndexOutOfBoundsException(i2 - i);
            }
            throw new StringIndexOutOfBoundsException(i2);
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return new String(this.f22474c, 0, this.f);
    }

    /* loaded from: classes4.dex */
    public final class TextStringBuilderReader extends Reader {
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
        if (charSequence == null) {
            return this;
        }
        if (i2 <= 0) {
            throw new StringIndexOutOfBoundsException("endIndex must be valid");
        }
        if (i < i2) {
            a(i, i2 - i, charSequence.toString());
            return this;
        }
        throw new StringIndexOutOfBoundsException("endIndex must be greater than startIndex");
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c2) {
        c(this.f + 1);
        char[] cArr = this.f22474c;
        int i = this.f;
        this.f = i + 1;
        cArr[i] = c2;
        return this;
    }
}
