package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.contextanalysis.SJISContextAnalysis;
import org.mozilla.universalchardet.prober.distributionanalysis.SJISDistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.PkgInt;
import org.mozilla.universalchardet.prober.statemachine.SJISSMModel;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes4.dex */
public class SJISProber extends CharsetProber {
    public static final SJISSMModel g = new SMModel(new PkgInt(SJISSMModel.f), 6, new PkgInt(SJISSMModel.g), SJISSMModel.h, Constants.l);
    public CodingStateMachine b;

    /* renamed from: c, reason: collision with root package name */
    public CharsetProber.ProbingState f22671c;
    public SJISContextAnalysis d;
    public SJISDistributionAnalysis e;
    public byte[] f;

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final String a() {
        return Constants.l;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final float b() {
        float f;
        int i = this.d.b;
        if (i > 4) {
            f = (i - r0.f22674a[0]) / i;
        } else {
            f = -1.0f;
        }
        return Math.max(f, this.e.a());
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final CharsetProber.ProbingState c(byte[] bArr, int i) {
        CharsetProber.ProbingState probingState;
        SJISDistributionAnalysis sJISDistributionAnalysis = this.e;
        CodingStateMachine codingStateMachine = this.b;
        SJISContextAnalysis sJISContextAnalysis = this.d;
        byte[] bArr2 = this.f;
        int i2 = 0;
        while (true) {
            probingState = CharsetProber.ProbingState.f;
            if (i2 >= i) {
                break;
            }
            int a2 = codingStateMachine.a(bArr[i2]);
            if (a2 == 1) {
                this.f22671c = CharsetProber.ProbingState.g;
                break;
            }
            if (a2 == 2) {
                this.f22671c = probingState;
                break;
            }
            if (a2 == 0) {
                int i3 = codingStateMachine.f22681c;
                if (i2 == 0) {
                    bArr2[1] = bArr[0];
                    sJISContextAnalysis.b(bArr2, 2 - i3, i3);
                    sJISDistributionAnalysis.c(bArr2, 0, i3);
                } else {
                    sJISContextAnalysis.b(bArr, (i2 + 1) - i3, i3);
                    sJISDistributionAnalysis.c(bArr, i2 - 1, i3);
                }
            }
            i2++;
        }
        bArr2[0] = bArr[i - 1];
        if (this.f22671c == CharsetProber.ProbingState.f22661c && sJISContextAnalysis.b > 100 && b() > 0.95f) {
            this.f22671c = probingState;
        }
        return this.f22671c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void d() {
        this.b.b = 0;
        this.f22671c = CharsetProber.ProbingState.f22661c;
        this.d.c();
        this.e.d();
        Arrays.fill(this.f, (byte) 0);
    }
}
