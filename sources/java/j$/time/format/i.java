package j$.time.format;

/* loaded from: classes2.dex */
public class i implements e {
    public static final long[] f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L};

    /* renamed from: a, reason: collision with root package name */
    public final j$.time.temporal.r f21202a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f21203c;
    public final f0 d;
    public final int e;

    public long a(y yVar, long j) {
        return j;
    }

    public i(j$.time.temporal.r rVar, int i, int i2, f0 f0Var) {
        this.f21202a = rVar;
        this.b = i;
        this.f21203c = i2;
        this.d = f0Var;
        this.e = 0;
    }

    public i(j$.time.temporal.r rVar, int i, int i2, f0 f0Var, int i3) {
        this.f21202a = rVar;
        this.b = i;
        this.f21203c = i2;
        this.d = f0Var;
        this.e = i3;
    }

    public i e() {
        if (this.e == -1) {
            return this;
        }
        return new i(this.f21202a, this.b, this.f21203c, this.d, -1);
    }

    public i f(int i) {
        return new i(this.f21202a, this.b, this.f21203c, this.d, this.e + i);
    }

    @Override // j$.time.format.e
    public boolean d(y yVar, StringBuilder sb) {
        j$.time.temporal.r rVar = this.f21202a;
        Long a2 = yVar.a(rVar);
        if (a2 == null) {
            return false;
        }
        long a3 = a(yVar, a2.longValue());
        c0 c0Var = yVar.b.f21186c;
        String l = a3 == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(a3));
        int length = l.length();
        int i = this.f21203c;
        if (length > i) {
            throw new RuntimeException("Field " + rVar + " cannot be printed as the value " + a3 + " exceeds the maximum print width of " + i);
        }
        c0Var.getClass();
        int i2 = this.b;
        f0 f0Var = this.d;
        if (a3 >= 0) {
            int i3 = b.f21188a[f0Var.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append('+');
                }
            } else if (i2 < 19 && a3 >= f[i2]) {
                sb.append('+');
            }
        } else {
            int i4 = b.f21188a[f0Var.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append('-');
            } else if (i4 == 4) {
                throw new RuntimeException("Field " + rVar + " cannot be printed as the value " + a3 + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - l.length(); i5++) {
            sb.append('0');
        }
        sb.append(l);
        return true;
    }

    public boolean b(v vVar) {
        int i = this.e;
        if (i != -1) {
            return i > 0 && this.b == this.f21203c && this.d == f0.NOT_NEGATIVE;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0134, code lost:
    
        r5 = r12;
        r2 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0174, code lost:
    
        if (r6 <= r10) goto L98;
     */
    /* JADX WARN: Removed duplicated region for block: B:71:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0198  */
    @Override // j$.time.format.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int g(j$.time.format.v r27, java.lang.CharSequence r28, int r29) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.i.g(j$.time.format.v, java.lang.CharSequence, int):int");
    }

    public int c(v vVar, long j, int i, int i2) {
        return vVar.f(this.f21202a, j, i, i2);
    }

    public String toString() {
        int i = this.f21203c;
        j$.time.temporal.r rVar = this.f21202a;
        f0 f0Var = this.d;
        int i2 = this.b;
        if (i2 == 1 && i == 19 && f0Var == f0.NORMAL) {
            return "Value(" + rVar + ")";
        }
        if (i2 == i && f0Var == f0.NOT_NEGATIVE) {
            return "Value(" + rVar + "," + i2 + ")";
        }
        return "Value(" + rVar + "," + i2 + "," + i + "," + f0Var + ")";
    }
}
