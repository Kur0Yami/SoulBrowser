package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class BackoffPolicy {

    /* renamed from: c, reason: collision with root package name */
    public static final BackoffPolicy f1824c;
    public static final BackoffPolicy f;
    public static final /* synthetic */ BackoffPolicy[] g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.work.BackoffPolicy] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.work.BackoffPolicy] */
    static {
        ?? r0 = new Enum("EXPONENTIAL", 0);
        f1824c = r0;
        ?? r1 = new Enum("LINEAR", 1);
        f = r1;
        g = new BackoffPolicy[]{r0, r1};
    }

    public static BackoffPolicy valueOf(String str) {
        return (BackoffPolicy) Enum.valueOf(BackoffPolicy.class, str);
    }

    public static BackoffPolicy[] values() {
        return (BackoffPolicy[]) g.clone();
    }
}
