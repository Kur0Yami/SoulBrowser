package androidx.work;

/* loaded from: classes.dex */
public final class WorkInfo {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class State {

        /* renamed from: c, reason: collision with root package name */
        public static final State f1849c;
        public static final State f;
        public static final State g;
        public static final State h;
        public static final State i;
        public static final State j;
        public static final /* synthetic */ State[] k;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
        static {
            ?? r0 = new Enum("ENQUEUED", 0);
            f1849c = r0;
            ?? r1 = new Enum("RUNNING", 1);
            f = r1;
            ?? r3 = new Enum("SUCCEEDED", 2);
            g = r3;
            ?? r5 = new Enum("FAILED", 3);
            h = r5;
            ?? r7 = new Enum("BLOCKED", 4);
            i = r7;
            ?? r9 = new Enum("CANCELLED", 5);
            j = r9;
            k = new State[]{r0, r1, r3, r5, r7, r9};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) k.clone();
        }

        public final boolean a() {
            if (this != g && this != h && this != j) {
                return false;
            }
            return true;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && WorkInfo.class == obj.getClass()) {
            throw null;
        }
        return false;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "WorkInfo{mId='" + ((Object) null) + "', mState=" + ((Object) null) + ", mOutputData=" + ((Object) null) + ", mTags=" + ((Object) null) + ", mProgress=" + ((Object) null) + '}';
    }
}
