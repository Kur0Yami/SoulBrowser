package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class k0 implements n {
    public static final k0 BE;
    public static final k0 BEFORE_BE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ k0[] f21164a;

    @Override // j$.time.temporal.n
    public final /* synthetic */ boolean c(j$.time.temporal.r rVar) {
        return j$.com.android.tools.r8.a.l(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object d(j$.time.h hVar) {
        return j$.com.android.tools.r8.a.p(this, hVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int g(j$.time.temporal.r rVar) {
        return j$.com.android.tools.r8.a.i(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ long y(j$.time.temporal.r rVar) {
        return j$.com.android.tools.r8.a.j(this, rVar);
    }

    public static k0 valueOf(String str) {
        return (k0) Enum.valueOf(k0.class, str);
    }

    public static k0[] values() {
        return (k0[]) f21164a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.chrono.k0] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.time.chrono.k0] */
    static {
        ?? r0 = new Enum("BEFORE_BE", 0);
        BEFORE_BE = r0;
        ?? r1 = new Enum("BE", 1);
        BE = r1;
        f21164a = new k0[]{r0, r1};
    }

    @Override // j$.time.chrono.n
    public final int getValue() {
        return ordinal();
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        return j$.time.temporal.s.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return mVar.a(getValue(), j$.time.temporal.a.ERA);
    }
}
