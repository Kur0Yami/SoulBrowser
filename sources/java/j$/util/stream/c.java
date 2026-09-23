package j$.util.stream;

/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f21390a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f21391c;
    public long[] d;

    public abstract void clear();

    public c() {
        this.f21390a = 4;
    }

    public c(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i);
        }
        this.f21390a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
    }

    public final long count() {
        int i = this.f21391c;
        if (i == 0) {
            return this.b;
        }
        return this.d[i] + this.b;
    }
}
