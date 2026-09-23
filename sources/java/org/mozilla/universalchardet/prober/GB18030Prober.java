package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.distributionanalysis.GB2312DistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.GB18030SMModel;
import org.mozilla.universalchardet.prober.statemachine.PkgInt;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes4.dex */
public class GB18030Prober extends CharsetProber {
    public static final GB18030SMModel f = new SMModel(new PkgInt(GB18030SMModel.f), 7, new PkgInt(GB18030SMModel.g), GB18030SMModel.h, Constants.h);
    public CodingStateMachine b;

    /* renamed from: c, reason: collision with root package name */
    public CharsetProber.ProbingState f22666c;
    public GB2312DistributionAnalysis d;
    public byte[] e;

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final String a() {
        return Constants.h;
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
        GB2312DistributionAnalysis gB2312DistributionAnalysis = this.d;
        int i2 = 0;
        while (true) {
            probingState = CharsetProber.ProbingState.f;
            if (i2 >= i) {
                break;
            }
            int a2 = codingStateMachine.a(bArr[i2]);
            if (a2 == 1) {
                this.f22666c = CharsetProber.ProbingState.g;
                break;
            }
            if (a2 == 2) {
                this.f22666c = probingState;
                break;
            }
            if (a2 == 0) {
                int i3 = codingStateMachine.f22681c;
                if (i2 == 0) {
                    bArr2[1] = bArr[0];
                    gB2312DistributionAnalysis.c(bArr2, 0, i3);
                } else {
                    gB2312DistributionAnalysis.c(bArr, i2 - 1, i3);
                }
            }
            i2++;
        }
        bArr2[0] = bArr[i - 1];
        if (this.f22666c == CharsetProber.ProbingState.f22661c && gB2312DistributionAnalysis.b > 1024 && gB2312DistributionAnalysis.a() > 0.95f) {
            this.f22666c = probingState;
        }
        return this.f22666c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void d() {
        this.b.b = 0;
        this.f22666c = CharsetProber.ProbingState.f22661c;
        this.d.d();
        Arrays.fill(this.e, (byte) 0);
    }
}
