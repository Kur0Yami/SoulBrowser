package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class NetworkType {

    /* renamed from: c, reason: collision with root package name */
    public static final NetworkType f1845c;
    public static final NetworkType f;
    public static final NetworkType g;
    public static final NetworkType h;
    public static final NetworkType i;
    public static final NetworkType j;
    public static final /* synthetic */ NetworkType[] k;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.work.NetworkType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.work.NetworkType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.work.NetworkType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.work.NetworkType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.work.NetworkType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.work.NetworkType, java.lang.Enum] */
    static {
        ?? r0 = new Enum("NOT_REQUIRED", 0);
        f1845c = r0;
        ?? r1 = new Enum("CONNECTED", 1);
        f = r1;
        ?? r3 = new Enum("UNMETERED", 2);
        g = r3;
        ?? r5 = new Enum("NOT_ROAMING", 3);
        h = r5;
        ?? r7 = new Enum("METERED", 4);
        i = r7;
        ?? r9 = new Enum("TEMPORARILY_UNMETERED", 5);
        j = r9;
        k = new NetworkType[]{r0, r1, r3, r5, r7, r9};
    }

    public static NetworkType valueOf(String str) {
        return (NetworkType) Enum.valueOf(NetworkType.class, str);
    }

    public static NetworkType[] values() {
        return (NetworkType[]) k.clone();
    }
}
