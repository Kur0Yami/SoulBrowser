package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ExistingPeriodicWorkPolicy {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ ExistingPeriodicWorkPolicy[] f1836c = {new Enum("REPLACE", 0), new Enum("KEEP", 1)};

    /* JADX INFO: Fake field, exist only in values array */
    ExistingPeriodicWorkPolicy EF5;

    public static ExistingPeriodicWorkPolicy valueOf(String str) {
        return (ExistingPeriodicWorkPolicy) Enum.valueOf(ExistingPeriodicWorkPolicy.class, str);
    }

    public static ExistingPeriodicWorkPolicy[] values() {
        return (ExistingPeriodicWorkPolicy[]) f1836c.clone();
    }
}
