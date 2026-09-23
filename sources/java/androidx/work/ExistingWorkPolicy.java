package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ExistingWorkPolicy {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ ExistingWorkPolicy[] f1837c = {new Enum("REPLACE", 0), new Enum("KEEP", 1), new Enum("APPEND", 2), new Enum("APPEND_OR_REPLACE", 3)};

    /* JADX INFO: Fake field, exist only in values array */
    ExistingWorkPolicy EF5;

    public static ExistingWorkPolicy valueOf(String str) {
        return (ExistingWorkPolicy) Enum.valueOf(ExistingWorkPolicy.class, str);
    }

    public static ExistingWorkPolicy[] values() {
        return (ExistingWorkPolicy[]) f1837c.clone();
    }
}
