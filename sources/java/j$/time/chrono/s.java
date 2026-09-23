package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class s implements n {
    public static final s AH;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ s[] f21172a;

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

    @Override // j$.time.chrono.n
    public final int getValue() {
        return 1;
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ long y(j$.time.temporal.r rVar) {
        return j$.com.android.tools.r8.a.j(this, rVar);
    }

    public static s valueOf(String str) {
        return (s) Enum.valueOf(s.class, str);
    }

    public static s[] values() {
        return (s[]) f21172a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.chrono.s] */
    static {
        ?? r0 = new Enum("AH", 0);
        AH = r0;
        f21172a = new s[]{r0};
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.ERA) {
            return j$.time.temporal.v.f(1L, 1L);
        }
        return j$.time.temporal.s.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return mVar.a(1, j$.time.temporal.a.ERA);
    }
}
