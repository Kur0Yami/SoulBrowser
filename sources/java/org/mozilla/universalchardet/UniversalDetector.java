package org.mozilla.universalchardet;

import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.EscCharsetProber;

/* loaded from: classes4.dex */
public class UniversalDetector {

    /* renamed from: a, reason: collision with root package name */
    public InputState f22656a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f22657c;
    public boolean d;
    public boolean e;
    public byte f;
    public String g;
    public CharsetProber[] h;
    public EscCharsetProber i;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class InputState {

        /* renamed from: c, reason: collision with root package name */
        public static final InputState f22658c;
        public static final InputState f;
        public static final InputState g;
        public static final /* synthetic */ InputState[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [org.mozilla.universalchardet.UniversalDetector$InputState, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [org.mozilla.universalchardet.UniversalDetector$InputState, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [org.mozilla.universalchardet.UniversalDetector$InputState, java.lang.Enum] */
        static {
            ?? r0 = new Enum("PURE_ASCII", 0);
            f22658c = r0;
            ?? r1 = new Enum("ESC_ASCII", 1);
            f = r1;
            ?? r3 = new Enum("HIGHBYTE", 2);
            g = r3;
            h = new InputState[]{r0, r1, r3};
        }

        public static InputState valueOf(String str) {
            return (InputState) Enum.valueOf(InputState.class, str);
        }

        public static InputState[] values() {
            return (InputState[]) h.clone();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0079  */
    /* JADX WARN: Type inference failed for: r10v5, types: [org.mozilla.universalchardet.prober.CharsetProber, org.mozilla.universalchardet.prober.MBCSGroupProber] */
    /* JADX WARN: Type inference failed for: r13v10, types: [org.mozilla.universalchardet.prober.contextanalysis.EUCJPContextAnalysis, org.mozilla.universalchardet.prober.contextanalysis.JapaneseContextAnalysis] */
    /* JADX WARN: Type inference failed for: r13v11, types: [org.mozilla.universalchardet.prober.distributionanalysis.EUCJPDistributionAnalysis, org.mozilla.universalchardet.prober.distributionanalysis.JISDistributionAnalysis] */
    /* JADX WARN: Type inference failed for: r13v14, types: [org.mozilla.universalchardet.prober.distributionanalysis.CharDistributionAnalysis, org.mozilla.universalchardet.prober.distributionanalysis.EUCKRDistributionAnalysis] */
    /* JADX WARN: Type inference failed for: r13v17, types: [org.mozilla.universalchardet.prober.distributionanalysis.EUCTWDistributionAnalysis, org.mozilla.universalchardet.prober.distributionanalysis.CharDistributionAnalysis] */
    /* JADX WARN: Type inference failed for: r13v5, types: [org.mozilla.universalchardet.prober.CharsetProber, org.mozilla.universalchardet.prober.GB18030Prober, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v6, types: [org.mozilla.universalchardet.prober.CharsetProber, java.lang.Object, org.mozilla.universalchardet.prober.UTF8Prober] */
    /* JADX WARN: Type inference failed for: r13v7, types: [org.mozilla.universalchardet.prober.CharsetProber, java.lang.Object, org.mozilla.universalchardet.prober.Big5Prober] */
    /* JADX WARN: Type inference failed for: r13v8, types: [org.mozilla.universalchardet.prober.CharsetProber, java.lang.Object, org.mozilla.universalchardet.prober.SJISProber] */
    /* JADX WARN: Type inference failed for: r14v3, types: [org.mozilla.universalchardet.prober.distributionanalysis.CharDistributionAnalysis, org.mozilla.universalchardet.prober.distributionanalysis.GB2312DistributionAnalysis] */
    /* JADX WARN: Type inference failed for: r14v7, types: [org.mozilla.universalchardet.prober.distributionanalysis.Big5DistributionAnalysis, org.mozilla.universalchardet.prober.distributionanalysis.CharDistributionAnalysis] */
    /* JADX WARN: Type inference failed for: r3v3, types: [org.mozilla.universalchardet.prober.CharsetProber, org.mozilla.universalchardet.prober.EscCharsetProber] */
    /* JADX WARN: Type inference failed for: r4v23, types: [org.mozilla.universalchardet.prober.CharsetProber, org.mozilla.universalchardet.prober.Latin1Prober] */
    /* JADX WARN: Type inference failed for: r4v34, types: [org.mozilla.universalchardet.prober.sequence.SequenceModel, org.mozilla.universalchardet.prober.sequence.HebrewModel] */
    /* JADX WARN: Type inference failed for: r6v23, types: [org.mozilla.universalchardet.prober.CharsetProber, org.mozilla.universalchardet.prober.HebrewProber, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v10, types: [org.mozilla.universalchardet.prober.CharsetProber, org.mozilla.universalchardet.prober.EUCJPProber, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v11, types: [org.mozilla.universalchardet.prober.CharsetProber, org.mozilla.universalchardet.prober.EUCKRProber, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v12, types: [org.mozilla.universalchardet.prober.CharsetProber, java.lang.Object, org.mozilla.universalchardet.prober.EUCTWProber] */
    /* JADX WARN: Type inference failed for: r8v5, types: [org.mozilla.universalchardet.prober.CharsetProber, org.mozilla.universalchardet.prober.SBCSGroupProber] */
    /* JADX WARN: Type inference failed for: r8v7, types: [org.mozilla.universalchardet.prober.contextanalysis.SJISContextAnalysis, org.mozilla.universalchardet.prober.contextanalysis.JapaneseContextAnalysis] */
    /* JADX WARN: Type inference failed for: r8v8, types: [org.mozilla.universalchardet.prober.distributionanalysis.JISDistributionAnalysis, org.mozilla.universalchardet.prober.distributionanalysis.SJISDistributionAnalysis] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(byte[] r21, int r22) {
        /*
            Method dump skipped, instructions count: 937
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.universalchardet.UniversalDetector.a(byte[], int):void");
    }

    public final void b() {
        int i = 0;
        this.b = false;
        this.f22657c = true;
        this.g = null;
        this.d = false;
        this.f22656a = InputState.f22658c;
        this.f = (byte) 0;
        EscCharsetProber escCharsetProber = this.i;
        if (escCharsetProber != null) {
            escCharsetProber.d();
        }
        while (true) {
            CharsetProber[] charsetProberArr = this.h;
            if (i < charsetProberArr.length) {
                CharsetProber charsetProber = charsetProberArr[i];
                if (charsetProber != null) {
                    charsetProber.d();
                }
                i++;
            } else {
                return;
            }
        }
    }
}
