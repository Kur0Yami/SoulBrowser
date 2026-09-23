package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.PkgInt;
import org.mozilla.universalchardet.prober.statemachine.SMModel;
import org.mozilla.universalchardet.prober.statemachine.UTF8SMModel;

/* loaded from: classes4.dex */
public class UTF8Prober extends CharsetProber {
    public static final UTF8SMModel e = new SMModel(new PkgInt(UTF8SMModel.f), 16, new PkgInt(UTF8SMModel.g), UTF8SMModel.h, Constants.u);
    public CodingStateMachine b;

    /* renamed from: c, reason: collision with root package name */
    public CharsetProber.ProbingState f22673c;
    public int d;

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final String a() {
        return Constants.u;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final float b() {
        float f = 0.99f;
        if (this.d >= 6) {
            return 0.99f;
        }
        for (int i = 0; i < this.d; i++) {
            f *= 0.5f;
        }
        return 1.0f - f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final CharsetProber.ProbingState c(byte[] bArr, int i) {
        CharsetProber.ProbingState probingState;
        CodingStateMachine codingStateMachine = this.b;
        int i2 = 0;
        while (true) {
            probingState = CharsetProber.ProbingState.f;
            if (i2 >= i) {
                break;
            }
            int a2 = codingStateMachine.a(bArr[i2]);
            if (a2 == 1) {
                this.f22673c = CharsetProber.ProbingState.g;
                break;
            }
            if (a2 == 2) {
                this.f22673c = probingState;
                break;
            }
            if (a2 == 0 && codingStateMachine.f22681c >= 2) {
                this.d++;
            }
            i2++;
        }
        if (this.f22673c == CharsetProber.ProbingState.f22661c && b() > 0.95f) {
            this.f22673c = probingState;
        }
        return this.f22673c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void d() {
        this.b.b = 0;
        this.d = 0;
        this.f22673c = CharsetProber.ProbingState.f22661c;
    }
}
