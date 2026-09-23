package org.mozilla.universalchardet.prober;

import kotlin.UByte;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes4.dex */
public class HebrewProber extends CharsetProber {
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f22667c;
    public byte d;
    public byte e;
    public SingleByteCharsetProber f;
    public SingleByteCharsetProber g;

    public static boolean e(byte b) {
        int i = b & UByte.MAX_VALUE;
        return i == 234 || i == 237 || i == 239 || i == 243 || i == 245;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final String a() {
        int i = this.b - this.f22667c;
        if (i >= 5) {
            return Constants.t;
        }
        if (i <= -5) {
            return Constants.f;
        }
        float b = this.f.b() - this.g.b();
        if (b > 0.01f) {
            return Constants.t;
        }
        if (b < -0.01f) {
            return Constants.f;
        }
        if (i < 0) {
            return Constants.f;
        }
        return Constants.t;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final float b() {
        return 0.0f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final CharsetProber.ProbingState c(byte[] bArr, int i) {
        CharsetProber.ProbingState probingState = this.f.b;
        CharsetProber.ProbingState probingState2 = CharsetProber.ProbingState.g;
        if (probingState != probingState2 || this.g.b != probingState2) {
            probingState2 = CharsetProber.ProbingState.f22661c;
        }
        CharsetProber.ProbingState probingState3 = CharsetProber.ProbingState.g;
        if (probingState2 == probingState3) {
            return probingState3;
        }
        for (int i2 = 0; i2 < i; i2++) {
            byte b = bArr[i2];
            if (b == 32) {
                if (this.e != 32) {
                    if (e(this.d)) {
                        this.b++;
                    } else {
                        int i3 = this.d & UByte.MAX_VALUE;
                        if (i3 == 235 || i3 == 238 || i3 == 240 || i3 == 244) {
                            this.f22667c++;
                        }
                    }
                }
            } else if (this.e == 32 && e(this.d) && b != 32) {
                this.f22667c++;
            }
            this.e = this.d;
            this.d = b;
        }
        return CharsetProber.ProbingState.f22661c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void d() {
        this.b = 0;
        this.f22667c = 0;
        this.d = (byte) 32;
        this.e = (byte) 32;
    }
}
