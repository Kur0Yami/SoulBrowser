package j$.sun.nio.cs;

import java.nio.CharBuffer;
import java.nio.charset.CoderResult;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public CoderResult f21134a;
    public boolean b;

    public final int a(char c2, CharBuffer charBuffer) {
        if (Character.isHighSurrogate(c2)) {
            if (!charBuffer.hasRemaining()) {
                this.f21134a = CoderResult.UNDERFLOW;
                return -1;
            }
            char c3 = charBuffer.get();
            if (Character.isLowSurrogate(c3)) {
                int codePoint = Character.toCodePoint(c2, c3);
                this.b = true;
                this.f21134a = null;
                return codePoint;
            }
            this.f21134a = CoderResult.malformedForLength(1);
            return -1;
        }
        if (Character.isLowSurrogate(c2)) {
            this.f21134a = CoderResult.malformedForLength(1);
            return -1;
        }
        this.b = false;
        this.f21134a = null;
        return c2;
    }

    public final int b(char c2, char[] cArr, int i, int i2) {
        if (!Character.isHighSurrogate(c2)) {
            if (Character.isLowSurrogate(c2)) {
                this.f21134a = CoderResult.malformedForLength(1);
                return -1;
            }
            this.b = false;
            this.f21134a = null;
            return c2;
        }
        if (i2 - i < 2) {
            this.f21134a = CoderResult.UNDERFLOW;
            return -1;
        }
        char c3 = cArr[i + 1];
        if (Character.isLowSurrogate(c3)) {
            int codePoint = Character.toCodePoint(c2, c3);
            this.b = true;
            this.f21134a = null;
            return codePoint;
        }
        this.f21134a = CoderResult.malformedForLength(1);
        return -1;
    }
}
