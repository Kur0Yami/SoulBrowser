package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.distributionanalysis.EUCTWDistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.EUCTWSMModel;
import org.mozilla.universalchardet.prober.statemachine.PkgInt;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes4.dex */
public class EUCTWProber extends CharsetProber {
    public static final EUCTWSMModel f = new SMModel(new PkgInt(EUCTWSMModel.f), 7, new PkgInt(EUCTWSMModel.g), EUCTWSMModel.h, Constants.k);
    public CodingStateMachine b;

    /* renamed from: c, reason: collision with root package name */
    public CharsetProber.ProbingState f22664c;
    public EUCTWDistributionAnalysis d;
    public byte[] e;

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final String a() {
        return Constants.k;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final float b() {
        return this.d.a();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final CharsetProber.ProbingState c(byte[] bArr, int i) {
        CharsetProber.ProbingState probingState;
        byte[] bArr2 = this.e;
        CodingStateMachine codingStateMachine = this.b;
        EUCTWDistributionAnalysis eUCTWDistributionAnalysis = this.d;
        int i2 = 0;
        while (true) {
            probingState = CharsetProber.ProbingState.f;
            if (i2 >= i) {
                break;
            }
            int a2 = codingStateMachine.a(bArr[i2]);
            if (a2 == 1) {
                this.f22664c = CharsetProber.ProbingState.g;
                break;
            }
            if (a2 == 2) {
                this.f22664c = probingState;
                break;
            }
            if (a2 == 0) {
                int i3 = codingStateMachine.f22681c;
                if (i2 == 0) {
                    bArr2[1] = bArr[0];
                    eUCTWDistributionAnalysis.c(bArr2, 0, i3);
                } else {
                    eUCTWDistributionAnalysis.c(bArr, i2 - 1, i3);
                }
            }
            i2++;
        }
        bArr2[0] = bArr[i - 1];
        if (this.f22664c == CharsetProber.ProbingState.f22661c && eUCTWDistributionAnalysis.b > 1024 && eUCTWDistributionAnalysis.a() > 0.95f) {
            this.f22664c = probingState;
        }
        return this.f22664c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void d() {
        this.b.b = 0;
        this.f22664c = CharsetProber.ProbingState.f22661c;
        this.d.d();
        Arrays.fill(this.e, (byte) 0);
    }
}
