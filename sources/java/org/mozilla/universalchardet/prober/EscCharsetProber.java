package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.HZSMModel;
import org.mozilla.universalchardet.prober.statemachine.ISO2022CNSMModel;
import org.mozilla.universalchardet.prober.statemachine.ISO2022JPSMModel;
import org.mozilla.universalchardet.prober.statemachine.ISO2022KRSMModel;
import org.mozilla.universalchardet.prober.statemachine.PkgInt;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes4.dex */
public class EscCharsetProber extends CharsetProber {
    public static final HZSMModel f = new SMModel(new PkgInt(HZSMModel.f), 6, new PkgInt(HZSMModel.g), HZSMModel.h, Constants.B);
    public static final ISO2022CNSMModel g = new SMModel(new PkgInt(ISO2022CNSMModel.f), 9, new PkgInt(ISO2022CNSMModel.g), ISO2022CNSMModel.h, Constants.b);
    public static final ISO2022JPSMModel h = new SMModel(new PkgInt(ISO2022JPSMModel.f), 10, new PkgInt(ISO2022JPSMModel.g), ISO2022JPSMModel.h, Constants.f22654a);
    public static final ISO2022KRSMModel i = new SMModel(new PkgInt(ISO2022KRSMModel.f), 6, new PkgInt(ISO2022KRSMModel.g), ISO2022KRSMModel.h, Constants.f22655c);
    public CodingStateMachine[] b;

    /* renamed from: c, reason: collision with root package name */
    public int f22665c;
    public CharsetProber.ProbingState d;
    public String e;

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final String a() {
        return this.e;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final float b() {
        return 0.99f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final CharsetProber.ProbingState c(byte[] bArr, int i2) {
        CodingStateMachine[] codingStateMachineArr = this.b;
        for (int i3 = 0; i3 < i2 && this.d == CharsetProber.ProbingState.f22661c; i3++) {
            for (int i4 = this.f22665c - 1; i4 >= 0; i4--) {
                int a2 = codingStateMachineArr[i4].a(bArr[i3]);
                if (a2 == 1) {
                    int i5 = this.f22665c - 1;
                    this.f22665c = i5;
                    if (i5 <= 0) {
                        CharsetProber.ProbingState probingState = CharsetProber.ProbingState.g;
                        this.d = probingState;
                        return probingState;
                    }
                    if (i4 != i5) {
                        CodingStateMachine codingStateMachine = codingStateMachineArr[i5];
                        codingStateMachineArr[i5] = codingStateMachineArr[i4];
                        codingStateMachineArr[i4] = codingStateMachine;
                    }
                } else if (a2 == 2) {
                    CharsetProber.ProbingState probingState2 = CharsetProber.ProbingState.f;
                    this.d = probingState2;
                    this.e = codingStateMachineArr[i4].f22680a.e;
                    return probingState2;
                }
            }
        }
        return this.d;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void d() {
        this.d = CharsetProber.ProbingState.f22661c;
        int i2 = 0;
        while (true) {
            CodingStateMachine[] codingStateMachineArr = this.b;
            if (i2 < codingStateMachineArr.length) {
                codingStateMachineArr[i2].b = 0;
                i2++;
            } else {
                this.f22665c = codingStateMachineArr.length;
                this.e = null;
                return;
            }
        }
    }
}
