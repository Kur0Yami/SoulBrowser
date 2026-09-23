package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class OutOfQuotaPolicy {

    /* renamed from: c, reason: collision with root package name */
    public static final OutOfQuotaPolicy f1848c;
    public static final OutOfQuotaPolicy f;
    public static final /* synthetic */ OutOfQuotaPolicy[] g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.work.OutOfQuotaPolicy] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.work.OutOfQuotaPolicy] */
    static {
        ?? r0 = new Enum("RUN_AS_NON_EXPEDITED_WORK_REQUEST", 0);
        f1848c = r0;
        ?? r1 = new Enum("DROP_WORK_REQUEST", 1);
        f = r1;
        g = new OutOfQuotaPolicy[]{r0, r1};
    }

    public static OutOfQuotaPolicy valueOf(String str) {
        return (OutOfQuotaPolicy) Enum.valueOf(OutOfQuotaPolicy.class, str);
    }

    public static OutOfQuotaPolicy[] values() {
        return (OutOfQuotaPolicy[]) g.clone();
    }
}
