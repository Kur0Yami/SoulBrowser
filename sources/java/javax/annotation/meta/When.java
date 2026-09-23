package javax.annotation.meta;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class When {

    /* renamed from: c, reason: collision with root package name */
    public static final When f21529c;
    public static final /* synthetic */ When[] f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, javax.annotation.meta.When] */
    static {
        ?? r0 = new Enum("ALWAYS", 0);
        f21529c = r0;
        f = new When[]{r0, new Enum("UNKNOWN", 1), new Enum("MAYBE", 2), new Enum("NEVER", 3)};
    }

    public static When valueOf(String str) {
        return (When) Enum.valueOf(When.class, str);
    }

    public static When[] values() {
        return (When[]) f.clone();
    }
}
