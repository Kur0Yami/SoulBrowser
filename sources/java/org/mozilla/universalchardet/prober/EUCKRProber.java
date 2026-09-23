package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.distributionanalysis.EUCKRDistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.EUCKRSMModel;
import org.mozilla.universalchardet.prober.statemachine.PkgInt;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes4.dex */
public class EUCKRProber extends CharsetProber {
    public static final EUCKRSMModel f = new SMModel(new PkgInt(EUCKRSMModel.f), 4, new PkgInt(EUCKRSMModel.g), EUCKRSMModel.h, Constants.j);
    public CodingStateMachine b;

    /* renamed from: c, reason: collision with root package name */
    public CharsetProber.ProbingState f22663c;
    public EUCKRDistributionAnalysis d;
    public byte[] e;

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final String a() {
        return Constants.j;
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
        EUCKRDistributionAnalysis eUCKRDistributionAnalysis = this.d;
        int i2 = 0;
        while (true) {
            probingState = CharsetProber.ProbingState.f;
            if (i2 >= i) {
                break;
            }
            int a2 = codingStateMachine.a(bArr[i2]);
            if (a2 == 1) {
                this.f22663c = CharsetProber.ProbingState.g;
                break;
            }
            if (a2 == 2) {
                this.f22663c = probingState;
                break;
            }
            if (a2 == 0) {
                int i3 = codingStateMachine.f22681c;
                if (i2 == 0) {
                    bArr2[1] = bArr[0];
                    eUCKRDistributionAnalysis.c(bArr2, 0, i3);
                } else {
                    eUCKRDistributionAnalysis.c(bArr, i2 - 1, i3);
                }
            }
            i2++;
        }
        bArr2[0] = bArr[i - 1];
        if (this.f22663c == CharsetProber.ProbingState.f22661c && eUCKRDistributionAnalysis.b > 1024 && eUCKRDistributionAnalysis.a() > 0.95f) {
            this.f22663c = probingState;
        }
        return this.f22663c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void d() {
        this.b.b = 0;
        this.f22663c = CharsetProber.ProbingState.f22661c;
        this.d.d();
        Arrays.fill(this.e, (byte) 0);
    }
}
