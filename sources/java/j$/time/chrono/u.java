package j$.time.chrono;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class u implements n {
    public static final u BCE;
    public static final u CE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ u[] f21174a;

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

    public static u valueOf(String str) {
        return (u) Enum.valueOf(u.class, str);
    }

    public static u[] values() {
        return (u[]) f21174a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.chrono.u] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.time.chrono.u] */
    static {
        ?? r0 = new Enum("BCE", 0);
        BCE = r0;
        ?? r1 = new Enum("CE", 1);
        CE = r1;
        f21174a = new u[]{r0, r1};
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
