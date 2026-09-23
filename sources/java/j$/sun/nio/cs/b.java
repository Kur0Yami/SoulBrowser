package j$.sun.nio.cs;

import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

/* loaded from: classes2.dex */
public final class b extends CharsetEncoder {

    /* renamed from: a, reason: collision with root package name */
    public final e f21131a;

    @Override // java.nio.charset.CharsetEncoder
    public final boolean canEncode(char c2) {
        return c2 <= 255;
    }

    @Override // java.nio.charset.CharsetEncoder
    public final boolean isLegalReplacement(byte[] bArr) {
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [j$.sun.nio.cs.e, java.lang.Object] */
    public b(c cVar) {
        super(cVar, 1.0f, 1.0f);
        ?? obj = new Object();
        obj.f21134a = CoderResult.UNDERFLOW;
        this.f21131a = obj;
    }

    public static int a(char[] cArr, int i, byte[] bArr, int i2, int i3) {
        int i4 = 0;
        if (i3 <= 0) {
            return 0;
        }
        Objects.requireNonNull(cArr);
        Objects.requireNonNull(bArr);
        if (i < 0 || i >= cArr.length) {
            throw new ArrayIndexOutOfBoundsException(i);
        }
        if (i2 < 0 || i2 >= bArr.length) {
            throw new ArrayIndexOutOfBoundsException(i2);
        }
        int i5 = (i + i3) - 1;
        if (i5 < 0 || i5 >= cArr.length) {
            throw new ArrayIndexOutOfBoundsException(i5);
        }
        int i6 = (i2 + i3) - 1;
        if (i6 < 0 || i6 >= bArr.length) {
            throw new ArrayIndexOutOfBoundsException(i6);
        }
        while (i4 < i3) {
            int i7 = i + 1;
            char c2 = cArr[i];
            if (c2 > 255) {
                break;
            }
            bArr[i2] = (byte) c2;
            i4++;
            i = i7;
            i2++;
        }
        return i4;
    }

    @Override // java.nio.charset.CharsetEncoder
    public final CoderResult encodeLoop(CharBuffer charBuffer, ByteBuffer byteBuffer) {
        CoderResult coderResult;
        CoderResult coderResult2;
        int i = 2;
        if (!charBuffer.hasArray() || !byteBuffer.hasArray()) {
            int position = charBuffer.position();
            while (true) {
                try {
                    if (!charBuffer.hasRemaining()) {
                        coderResult = CoderResult.UNDERFLOW;
                        break;
                    }
                    char c2 = charBuffer.get();
                    if (c2 <= 255) {
                        if (!byteBuffer.hasRemaining()) {
                            coderResult = CoderResult.OVERFLOW;
                            break;
                        }
                        byteBuffer.put((byte) c2);
                        position++;
                    } else if (this.f21131a.a(c2, charBuffer) < 0) {
                        coderResult = this.f21131a.f21134a;
                    } else {
                        if (!this.f21131a.b) {
                            i = 1;
                        }
                        coderResult = CoderResult.unmappableForLength(i);
                    }
                } finally {
                }
            }
            return coderResult;
        }
        char[] array = charBuffer.array();
        int arrayOffset = charBuffer.arrayOffset();
        int position2 = charBuffer.position() + arrayOffset;
        int limit = charBuffer.limit() + arrayOffset;
        if (position2 > limit) {
            position2 = limit;
        }
        byte[] array2 = byteBuffer.array();
        int arrayOffset2 = byteBuffer.arrayOffset();
        int position3 = byteBuffer.position() + arrayOffset2;
        int limit2 = byteBuffer.limit() + arrayOffset2;
        if (position3 > limit2) {
            position3 = limit2;
        }
        int i2 = limit2 - position3;
        int i3 = limit - position2;
        if (i2 >= i3) {
            i2 = i3;
        }
        try {
            int a2 = a(array, position2, array2, position3, i2);
            int i4 = position2 + a2;
            int i5 = position3 + a2;
            if (a2 == i2) {
                coderResult2 = i2 < i3 ? CoderResult.OVERFLOW : CoderResult.UNDERFLOW;
            } else if (this.f21131a.b(array[i4], array, i4, limit) < 0) {
                coderResult2 = this.f21131a.f21134a;
            } else {
                if (!this.f21131a.b) {
                    i = 1;
                }
                coderResult2 = CoderResult.unmappableForLength(i);
            }
            return coderResult2;
        } catch (Throwable th) {
            throw th;
        }
    }
}
