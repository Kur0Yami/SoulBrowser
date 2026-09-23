package org.mozilla.universalchardet.prober;

/* loaded from: classes4.dex */
public abstract class CharsetProber {

    /* renamed from: a, reason: collision with root package name */
    public boolean f22660a = true;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class ProbingState {

        /* renamed from: c, reason: collision with root package name */
        public static final ProbingState f22661c;
        public static final ProbingState f;
        public static final ProbingState g;
        public static final /* synthetic */ ProbingState[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [org.mozilla.universalchardet.prober.CharsetProber$ProbingState, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [org.mozilla.universalchardet.prober.CharsetProber$ProbingState, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [org.mozilla.universalchardet.prober.CharsetProber$ProbingState, java.lang.Enum] */
        static {
            ?? r0 = new Enum("DETECTING", 0);
            f22661c = r0;
            ?? r1 = new Enum("FOUND_IT", 1);
            f = r1;
            ?? r3 = new Enum("NOT_ME", 2);
            g = r3;
            h = new ProbingState[]{r0, r1, r3};
        }

        public static ProbingState valueOf(String str) {
            return (ProbingState) Enum.valueOf(ProbingState.class, str);
        }

        public static ProbingState[] values() {
            return (ProbingState[]) h.clone();
        }
    }

    public abstract String a();

    public abstract float b();

    public abstract ProbingState c(byte[] bArr, int i);

    public abstract void d();
}
