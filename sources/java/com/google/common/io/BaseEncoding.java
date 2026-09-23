package com.google.common.io;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.math.IntMath;
import j$.util.Objects;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.RoundingMode;
import java.util.Arrays;
import kotlin.KotlinVersion;
import kotlin.UByte;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class BaseEncoding {

    /* renamed from: a, reason: collision with root package name */
    public static final BaseEncoding f12463a = new Base64Encoding("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
    public static final BaseEncoding b = new Base64Encoding("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");

    /* renamed from: c, reason: collision with root package name */
    public static final BaseEncoding f12464c;

    /* renamed from: com.google.common.io.BaseEncoding$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends ByteSink {
    }

    /* renamed from: com.google.common.io.BaseEncoding$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends ByteSource {
    }

    /* renamed from: com.google.common.io.BaseEncoding$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            throw null;
        }

        @Override // java.io.Reader
        public final int read() {
            throw null;
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            throw null;
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
            throw null;
        }

        @Override // java.io.Writer
        public final void write(int i) {
            throw null;
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3.dex */
    public static final class Base16Encoding extends StandardBaseEncoding {
        public final char[] g;

        public Base16Encoding(Alphabet alphabet) {
            super(alphabet, (Character) null);
            boolean z;
            this.g = new char[512];
            char[] cArr = alphabet.b;
            if (cArr.length == 16) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.d(z);
            for (int i = 0; i < 256; i++) {
                char[] cArr2 = this.g;
                cArr2[i] = cArr[i >>> 4];
                cArr2[i | 256] = cArr[i & 15];
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public final int b(byte[] bArr, CharSequence charSequence) {
            if (charSequence.length() % 2 != 1) {
                int i = 0;
                int i2 = 0;
                while (i < charSequence.length()) {
                    char charAt = charSequence.charAt(i);
                    Alphabet alphabet = this.d;
                    bArr[i2] = (byte) ((alphabet.a(charAt) << 4) | alphabet.a(charSequence.charAt(i + 1)));
                    i += 2;
                    i2++;
                }
                return i2;
            }
            throw new IOException("Invalid input length " + charSequence.length());
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public final void d(Appendable appendable, byte[] bArr, int i) {
            Preconditions.j(0, i, bArr.length);
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = bArr[i2] & UByte.MAX_VALUE;
                char[] cArr = this.g;
                appendable.append(cArr[i3]);
                appendable.append(cArr[i3 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public final BaseEncoding l(Alphabet alphabet, Character ch) {
            return new Base16Encoding(alphabet);
        }
    }

    /* loaded from: classes3.dex */
    public static final class Base64Encoding extends StandardBaseEncoding {
        public Base64Encoding(String str, String str2) {
            this(new Alphabet(str, str2.toCharArray()), (Character) '=');
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public final int b(byte[] bArr, CharSequence charSequence) {
            CharSequence i = i(charSequence);
            int length = i.length();
            Alphabet alphabet = this.d;
            if (alphabet.h[length % alphabet.e]) {
                int i2 = 0;
                int i3 = 0;
                while (i2 < i.length()) {
                    int i4 = i2 + 2;
                    int a2 = (alphabet.a(i.charAt(i2 + 1)) << 12) | (alphabet.a(i.charAt(i2)) << 18);
                    int i5 = i3 + 1;
                    bArr[i3] = (byte) (a2 >>> 16);
                    if (i4 < i.length()) {
                        int i6 = i2 + 3;
                        int a3 = a2 | (alphabet.a(i.charAt(i4)) << 6);
                        int i7 = i3 + 2;
                        bArr[i5] = (byte) ((a3 >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                        if (i6 < i.length()) {
                            i2 += 4;
                            i3 += 3;
                            bArr[i7] = (byte) ((a3 | alphabet.a(i.charAt(i6))) & KotlinVersion.MAX_COMPONENT_VALUE);
                        } else {
                            i3 = i7;
                            i2 = i6;
                        }
                    } else {
                        i3 = i5;
                        i2 = i4;
                    }
                }
                return i3;
            }
            throw new IOException("Invalid input length " + i.length());
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public final void d(Appendable appendable, byte[] bArr, int i) {
            int i2 = 0;
            Preconditions.j(0, i, bArr.length);
            for (int i3 = i; i3 >= 3; i3 -= 3) {
                int i4 = i2 + 2;
                int i5 = ((bArr[i2 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i2] & UByte.MAX_VALUE) << 16);
                i2 += 3;
                int i6 = i5 | (bArr[i4] & UByte.MAX_VALUE);
                Alphabet alphabet = this.d;
                char[] cArr = alphabet.b;
                char[] cArr2 = alphabet.b;
                appendable.append(cArr[i6 >>> 18]);
                appendable.append(cArr2[(i6 >>> 12) & 63]);
                appendable.append(cArr2[(i6 >>> 6) & 63]);
                appendable.append(cArr2[i6 & 63]);
            }
            if (i2 < i) {
                k(bArr, appendable, i2, i - i2);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public final BaseEncoding l(Alphabet alphabet, Character ch) {
            return new Base64Encoding(alphabet, ch);
        }

        public Base64Encoding(Alphabet alphabet, Character ch) {
            super(alphabet, ch);
            Preconditions.d(alphabet.b.length == 64);
        }
    }

    /* loaded from: classes3.dex */
    public static final class DecodingException extends IOException {
    }

    /* loaded from: classes3.dex */
    public static final class SeparatedBaseEncoding extends BaseEncoding {
        public final BaseEncoding d;

        public SeparatedBaseEncoding(BaseEncoding baseEncoding) {
            this.d = baseEncoding;
        }

        @Override // com.google.common.io.BaseEncoding
        public final int b(byte[] bArr, CharSequence charSequence) {
            StringBuilder sb = new StringBuilder(charSequence.length());
            for (int i = 0; i < charSequence.length(); i++) {
                char charAt = charSequence.charAt(i);
                if ("\n".indexOf(charAt) < 0) {
                    sb.append(charAt);
                }
            }
            return this.d.b(bArr, sb);
        }

        @Override // com.google.common.io.BaseEncoding
        public final void d(final Appendable appendable, byte[] bArr, int i) {
            this.d.d(new Appendable() { // from class: com.google.common.io.BaseEncoding.4

                /* renamed from: c, reason: collision with root package name */
                public int f12465c = 64;

                @Override // java.lang.Appendable
                public final Appendable append(char c2) {
                    int i2 = this.f12465c;
                    Appendable appendable2 = appendable;
                    if (i2 == 0) {
                        appendable2.append("\n");
                        this.f12465c = 64;
                    }
                    appendable2.append(c2);
                    this.f12465c--;
                    return this;
                }

                @Override // java.lang.Appendable
                public final Appendable append(CharSequence charSequence, int i2, int i3) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.lang.Appendable
                public final Appendable append(CharSequence charSequence) {
                    throw new UnsupportedOperationException();
                }
            }, bArr, i);
        }

        @Override // com.google.common.io.BaseEncoding
        public final BaseEncoding e() {
            return this.d.e().j();
        }

        @Override // com.google.common.io.BaseEncoding
        public final int f(int i) {
            return this.d.f(i);
        }

        @Override // com.google.common.io.BaseEncoding
        public final int g(int i) {
            int g = this.d.g(i);
            return IntMath.a(Math.max(0, g - 1), 64, RoundingMode.FLOOR) + g;
        }

        @Override // com.google.common.io.BaseEncoding
        public final BaseEncoding h() {
            return this.d.h().j();
        }

        @Override // com.google.common.io.BaseEncoding
        public final CharSequence i(CharSequence charSequence) {
            return this.d.i(charSequence);
        }

        @Override // com.google.common.io.BaseEncoding
        public final BaseEncoding j() {
            throw new UnsupportedOperationException("Already have a separator");
        }

        public final String toString() {
            return this.d + ".withSeparator(\"\n\", 64)";
        }
    }

    static {
        new StandardBaseEncoding("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new StandardBaseEncoding("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        f12464c = new Base16Encoding(new Alphabet("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public final byte[] a(String str) {
        try {
            CharSequence i = i(str);
            int f = f(i.length());
            byte[] bArr = new byte[f];
            int b2 = b(bArr, i);
            if (b2 == f) {
                return bArr;
            }
            byte[] bArr2 = new byte[b2];
            System.arraycopy(bArr, 0, bArr2, 0, b2);
            return bArr2;
        } catch (DecodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int b(byte[] bArr, CharSequence charSequence);

    public final String c(byte[] bArr, int i) {
        Preconditions.j(0, i, bArr.length);
        StringBuilder sb = new StringBuilder(g(i));
        try {
            d(sb, bArr, i);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public abstract void d(Appendable appendable, byte[] bArr, int i);

    public abstract BaseEncoding e();

    public abstract int f(int i);

    public abstract int g(int i);

    public abstract BaseEncoding h();

    public CharSequence i(CharSequence charSequence) {
        charSequence.getClass();
        return charSequence;
    }

    public abstract BaseEncoding j();

    /* loaded from: classes3.dex */
    public static class StandardBaseEncoding extends BaseEncoding {
        public final Alphabet d;
        public final Character e;
        public volatile BaseEncoding f;

        /* renamed from: com.google.common.io.BaseEncoding$StandardBaseEncoding$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends OutputStream {

            /* renamed from: c, reason: collision with root package name */
            public int f12468c;

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                if (this.f12468c > 0) {
                    throw null;
                }
                throw null;
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public final void flush() {
                throw null;
            }

            @Override // java.io.OutputStream
            public final void write(int i) {
                this.f12468c += 8;
                throw null;
            }
        }

        /* renamed from: com.google.common.io.BaseEncoding$StandardBaseEncoding$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 extends InputStream {

            /* renamed from: c, reason: collision with root package name */
            public int f12469c;
            public int f;
            public int g;
            public boolean h;

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                throw null;
            }

            @Override // java.io.InputStream
            public final int read() {
                throw null;
            }

            @Override // java.io.InputStream
            public final int read(byte[] bArr, int i, int i2) {
                int i3 = i2 + i;
                Preconditions.j(i, i3, bArr.length);
                int i4 = i;
                while (i4 < i3) {
                    int read = read();
                    if (read == -1) {
                        int i5 = i4 - i;
                        if (i5 == 0) {
                            return -1;
                        }
                        return i5;
                    }
                    bArr[i4] = (byte) read;
                    i4++;
                }
                return i4 - i;
            }
        }

        public StandardBaseEncoding(Alphabet alphabet, Character ch) {
            boolean z;
            alphabet.getClass();
            this.d = alphabet;
            if (ch != null) {
                char charValue = ch.charValue();
                byte[] bArr = alphabet.g;
                if (charValue < bArr.length && bArr[charValue] != -1) {
                    z = false;
                    Preconditions.c("Padding character %s was already in alphabet", ch, z);
                    this.e = ch;
                }
            }
            z = true;
            Preconditions.c("Padding character %s was already in alphabet", ch, z);
            this.e = ch;
        }

        @Override // com.google.common.io.BaseEncoding
        public int b(byte[] bArr, CharSequence charSequence) {
            CharSequence i = i(charSequence);
            int length = i.length();
            Alphabet alphabet = this.d;
            boolean[] zArr = alphabet.h;
            int i2 = alphabet.d;
            int i3 = alphabet.e;
            if (zArr[length % i3]) {
                int i4 = 0;
                for (int i5 = 0; i5 < i.length(); i5 += i3) {
                    long j = 0;
                    int i6 = 0;
                    for (int i7 = 0; i7 < i3; i7++) {
                        j <<= i2;
                        if (i5 + i7 < i.length()) {
                            j |= alphabet.a(i.charAt(i6 + i5));
                            i6++;
                        }
                    }
                    int i8 = alphabet.f;
                    int i9 = (i8 * 8) - (i6 * i2);
                    int i10 = (i8 - 1) * 8;
                    while (i10 >= i9) {
                        bArr[i4] = (byte) ((j >>> i10) & 255);
                        i10 -= 8;
                        i4++;
                    }
                }
                return i4;
            }
            throw new IOException("Invalid input length " + i.length());
        }

        @Override // com.google.common.io.BaseEncoding
        public void d(Appendable appendable, byte[] bArr, int i) {
            int i2 = 0;
            Preconditions.j(0, i, bArr.length);
            while (i2 < i) {
                Alphabet alphabet = this.d;
                k(bArr, appendable, i2, Math.min(alphabet.f, i - i2));
                i2 += alphabet.f;
            }
        }

        @Override // com.google.common.io.BaseEncoding
        public final BaseEncoding e() {
            boolean z;
            boolean z2;
            BaseEncoding baseEncoding = this.f;
            if (baseEncoding == null) {
                Alphabet alphabet = this.d;
                char[] cArr = alphabet.b;
                int length = cArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    if (Ascii.b(cArr[i])) {
                        int length2 = cArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 < length2) {
                                if (Ascii.a(cArr[i2])) {
                                    z = true;
                                    break;
                                }
                                i2++;
                            } else {
                                z = false;
                                break;
                            }
                        }
                        Preconditions.m(!z, "Cannot call lowerCase() on a mixed-case alphabet");
                        char[] cArr2 = new char[cArr.length];
                        for (int i3 = 0; i3 < cArr.length; i3++) {
                            char c2 = cArr[i3];
                            if (Ascii.b(c2)) {
                                c2 = (char) (c2 ^ ' ');
                            }
                            cArr2[i3] = c2;
                        }
                        Alphabet alphabet2 = new Alphabet(android.support.v4.media.a.p(new StringBuilder(), alphabet.f12466a, ".lowerCase()"), cArr2);
                        if (alphabet.i) {
                            byte[] bArr = alphabet2.g;
                            if (!alphabet2.i) {
                                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                                for (int i4 = 65; i4 <= 90; i4++) {
                                    int i5 = i4 | 32;
                                    byte b = bArr[i4];
                                    byte b2 = bArr[i5];
                                    if (b == -1) {
                                        copyOf[i4] = b2;
                                    } else {
                                        if (b2 == -1) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        char c3 = (char) i4;
                                        char c4 = (char) i5;
                                        if (z2) {
                                            copyOf[i5] = b;
                                        } else {
                                            throw new IllegalStateException(Strings.a("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c3), Character.valueOf(c4)));
                                        }
                                    }
                                }
                                alphabet = new Alphabet(android.support.v4.media.a.p(new StringBuilder(), alphabet2.f12466a, ".ignoreCase()"), alphabet2.b, copyOf, true);
                            }
                        }
                        alphabet = alphabet2;
                    } else {
                        i++;
                    }
                }
                if (alphabet == this.d) {
                    baseEncoding = this;
                } else {
                    baseEncoding = l(alphabet, this.e);
                }
                this.f = baseEncoding;
            }
            return baseEncoding;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof StandardBaseEncoding) {
                StandardBaseEncoding standardBaseEncoding = (StandardBaseEncoding) obj;
                if (this.d.equals(standardBaseEncoding.d) && Objects.equals(this.e, standardBaseEncoding.e)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.io.BaseEncoding
        public final int f(int i) {
            return (int) (((this.d.d * i) + 7) / 8);
        }

        @Override // com.google.common.io.BaseEncoding
        public final int g(int i) {
            Alphabet alphabet = this.d;
            return IntMath.a(i, alphabet.f, RoundingMode.CEILING) * alphabet.e;
        }

        @Override // com.google.common.io.BaseEncoding
        public final BaseEncoding h() {
            if (this.e == null) {
                return this;
            }
            return l(this.d, null);
        }

        public final int hashCode() {
            return this.d.hashCode() ^ Objects.hashCode(this.e);
        }

        @Override // com.google.common.io.BaseEncoding
        public final CharSequence i(CharSequence charSequence) {
            charSequence.getClass();
            Character ch = this.e;
            if (ch == null) {
                return charSequence;
            }
            char charValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == charValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        @Override // com.google.common.io.BaseEncoding
        public final BaseEncoding j() {
            boolean z;
            boolean z2 = false;
            char charAt = "\n".charAt(0);
            byte[] bArr = this.d.g;
            if (charAt < bArr.length && bArr[charAt] != -1) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.c("Separator (%s) cannot contain alphabet characters", "\n", !z);
            Character ch = this.e;
            if (ch != null) {
                if ("\n".indexOf(ch.charValue()) < 0) {
                    z2 = true;
                }
                Preconditions.c("Separator (%s) cannot contain padding character", "\n", z2);
            }
            return new SeparatedBaseEncoding(this);
        }

        public final void k(byte[] bArr, Appendable appendable, int i, int i2) {
            boolean z;
            Preconditions.j(i, i + i2, bArr.length);
            Alphabet alphabet = this.d;
            int i3 = alphabet.f;
            int i4 = alphabet.d;
            int i5 = 0;
            if (i2 <= i3) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.d(z);
            long j = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                j = (j | (bArr[i + i6] & UByte.MAX_VALUE)) << 8;
            }
            int i7 = ((i2 + 1) * 8) - i4;
            while (i5 < i2 * 8) {
                appendable.append(alphabet.b[((int) (j >>> (i7 - i5))) & alphabet.f12467c]);
                i5 += i4;
            }
            Character ch = this.e;
            if (ch != null) {
                while (i5 < alphabet.f * 8) {
                    appendable.append(ch.charValue());
                    i5 += i4;
                }
            }
        }

        public BaseEncoding l(Alphabet alphabet, Character ch) {
            return new StandardBaseEncoding(alphabet, ch);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            Alphabet alphabet = this.d;
            sb.append(alphabet);
            if (8 % alphabet.d != 0) {
                Character ch = this.e;
                if (ch == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(ch);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        public StandardBaseEncoding(String str, String str2) {
            this(new Alphabet(str, str2.toCharArray()), (Character) '=');
        }
    }

    /* loaded from: classes3.dex */
    public static final class Alphabet {

        /* renamed from: a, reason: collision with root package name */
        public final String f12466a;
        public final char[] b;

        /* renamed from: c, reason: collision with root package name */
        public final int f12467c;
        public final int d;
        public final int e;
        public final int f;
        public final byte[] g;
        public final boolean[] h;
        public final boolean i;

        public Alphabet(String str, char[] cArr, byte[] bArr, boolean z) {
            str.getClass();
            this.f12466a = str;
            cArr.getClass();
            this.b = cArr;
            try {
                int length = cArr.length;
                RoundingMode roundingMode = RoundingMode.UNNECESSARY;
                int b = IntMath.b(length);
                this.d = b;
                int numberOfTrailingZeros = Integer.numberOfTrailingZeros(b);
                int i = 1 << (3 - numberOfTrailingZeros);
                this.e = i;
                this.f = b >> numberOfTrailingZeros;
                this.f12467c = cArr.length - 1;
                this.g = bArr;
                boolean[] zArr = new boolean[i];
                for (int i2 = 0; i2 < this.f; i2++) {
                    zArr[IntMath.a(i2 * 8, this.d, RoundingMode.CEILING)] = true;
                }
                this.h = zArr;
                this.i = z;
            } catch (ArithmeticException e) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e);
            }
        }

        public final int a(char c2) {
            if (c2 <= 127) {
                byte b = this.g[c2];
                if (b == -1) {
                    if (c2 > ' ' && c2 != 127) {
                        throw new IOException("Unrecognized character: " + c2);
                    }
                    throw new IOException("Unrecognized character: 0x" + Integer.toHexString(c2));
                }
                return b;
            }
            throw new IOException("Unrecognized character: 0x" + Integer.toHexString(c2));
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Alphabet) {
                Alphabet alphabet = (Alphabet) obj;
                if (this.i == alphabet.i && Arrays.equals(this.b, alphabet.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            int i;
            int hashCode = Arrays.hashCode(this.b);
            if (this.i) {
                i = 1231;
            } else {
                i = 1237;
            }
            return hashCode + i;
        }

        public final String toString() {
            return this.f12466a;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Alphabet(java.lang.String r9, char[] r10) {
            /*
                r8 = this;
                r0 = 128(0x80, float:1.8E-43)
                byte[] r1 = new byte[r0]
                r2 = -1
                java.util.Arrays.fill(r1, r2)
                r3 = 0
                r4 = r3
            La:
                int r5 = r10.length
                if (r4 >= r5) goto L4e
                char r5 = r10[r4]
                r6 = 1
                if (r5 >= r0) goto L14
                r7 = r6
                goto L15
            L14:
                r7 = r3
            L15:
                if (r7 == 0) goto L3a
                r7 = r1[r5]
                if (r7 != r2) goto L1d
                r7 = r6
                goto L1e
            L1d:
                r7 = r3
            L1e:
                if (r7 == 0) goto L26
                byte r6 = (byte) r4
                r1[r5] = r6
                int r4 = r4 + 1
                goto La
            L26:
                java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
                java.lang.Character r10 = java.lang.Character.valueOf(r5)
                java.lang.Object[] r0 = new java.lang.Object[r6]
                r0[r3] = r10
                java.lang.String r10 = "Duplicate character: %s"
                java.lang.String r10 = com.google.common.base.Strings.a(r10, r0)
                r9.<init>(r10)
                throw r9
            L3a:
                java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
                java.lang.Character r10 = java.lang.Character.valueOf(r5)
                java.lang.Object[] r0 = new java.lang.Object[r6]
                r0[r3] = r10
                java.lang.String r10 = "Non-ASCII character: %s"
                java.lang.String r10 = com.google.common.base.Strings.a(r10, r0)
                r9.<init>(r10)
                throw r9
            L4e:
                r8.<init>(r9, r10, r1, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.BaseEncoding.Alphabet.<init>(java.lang.String, char[]):void");
        }
    }
}
