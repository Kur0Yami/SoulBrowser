package j$.time.temporal;

/* loaded from: classes2.dex */
public final /* synthetic */ class p implements o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21255a;
    public final /* synthetic */ int b;

    public /* synthetic */ p(int i, int i2) {
        this.f21255a = i2;
        this.b = i;
    }

    @Override // j$.time.temporal.o
    public final m l(m mVar) {
        switch (this.f21255a) {
            case 0:
                int g = mVar.g(a.DAY_OF_WEEK);
                int i = this.b;
                if (g == i) {
                    return mVar;
                }
                return mVar.b(g - i >= 0 ? 7 - r0 : -r0, b.DAYS);
            default:
                int g2 = mVar.g(a.DAY_OF_WEEK);
                int i2 = this.b;
                if (g2 == i2) {
                    return mVar;
                }
                return mVar.u(i2 - g2 >= 0 ? 7 - r1 : -r1, b.DAYS);
        }
    }
}
