package org.mozilla.universalchardet.prober;

import kotlin.UByte;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.sequence.HebrewModel;
import org.mozilla.universalchardet.prober.sequence.SequenceModel;

/* loaded from: classes4.dex */
public class SingleByteCharsetProber extends CharsetProber {
    public CharsetProber.ProbingState b;

    /* renamed from: c, reason: collision with root package name */
    public final SequenceModel f22672c;
    public final boolean d;
    public short e;
    public int f;
    public final int[] g;
    public int h;
    public int i;
    public final HebrewProber j;

    public SingleByteCharsetProber(SequenceModel sequenceModel) {
        this.f22672c = sequenceModel;
        this.d = false;
        this.j = null;
        this.g = new int[4];
        d();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final String a() {
        HebrewProber hebrewProber = this.j;
        if (hebrewProber == null) {
            return this.f22672c.d;
        }
        return hebrewProber.a();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final float b() {
        int i = this.f;
        if (i > 0) {
            float f = ((((this.g[3] * 1.0f) / i) / this.f22672c.f22679c) * this.i) / this.h;
            if (f >= 1.0f) {
                return 0.99f;
            }
            return f;
        }
        return 0.01f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final CharsetProber.ProbingState c(byte[] bArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            SequenceModel sequenceModel = this.f22672c;
            byte[] bArr2 = sequenceModel.b;
            short s = sequenceModel.f22678a[bArr[i2] & UByte.MAX_VALUE];
            if (s < 250) {
                this.h++;
            }
            if (s < 64) {
                this.i++;
                short s2 = this.e;
                if (s2 < 64) {
                    this.f++;
                    boolean z = this.d;
                    int[] iArr = this.g;
                    if (!z) {
                        byte b = bArr2[(s2 * 64) + s];
                        iArr[b] = iArr[b] + 1;
                    } else {
                        byte b2 = bArr2[(s * 64) + s2];
                        iArr[b2] = iArr[b2] + 1;
                    }
                }
            }
            this.e = s;
        }
        if (this.b == CharsetProber.ProbingState.f22661c && this.f > 1024) {
            float b3 = b();
            if (b3 > 0.95f) {
                this.b = CharsetProber.ProbingState.f;
            } else if (b3 < 0.05f) {
                this.b = CharsetProber.ProbingState.g;
            }
        }
        return this.b;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void d() {
        this.b = CharsetProber.ProbingState.f22661c;
        this.e = (short) 255;
        for (int i = 0; i < 4; i++) {
            this.g[i] = 0;
        }
        this.f = 0;
        this.h = 0;
        this.i = 0;
    }

    public SingleByteCharsetProber(HebrewModel hebrewModel, boolean z, HebrewProber hebrewProber) {
        this.f22672c = hebrewModel;
        this.d = z;
        this.j = hebrewProber;
        this.g = new int[4];
        d();
    }
}
