package j$.time.format;

/* loaded from: classes2.dex */
public final class q implements e {

    /* renamed from: a, reason: collision with root package name */
    public final j$.time.temporal.r f21213a;
    public final g0 b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f21214c;
    public volatile i d;

    public q(j$.time.temporal.r rVar, g0 g0Var, b0 b0Var) {
        this.f21213a = rVar;
        this.b = g0Var;
        this.f21214c = b0Var;
    }

    @Override // j$.time.format.e
    public final boolean d(y yVar, StringBuilder sb) {
        String c2;
        Long a2 = yVar.a(this.f21213a);
        DateTimeFormatter dateTimeFormatter = yVar.b;
        if (a2 == null) {
            return false;
        }
        j$.time.chrono.m mVar = (j$.time.chrono.m) yVar.f21223a.d(j$.time.temporal.s.b);
        if (mVar == null || mVar == j$.time.chrono.t.f21173c) {
            c2 = this.f21214c.c(this.f21213a, a2.longValue(), this.b, dateTimeFormatter.b);
        } else {
            c2 = this.f21214c.b(mVar, this.f21213a, a2.longValue(), this.b, dateTimeFormatter.b);
        }
        if (c2 != null) {
            sb.append(c2);
            return true;
        }
        if (this.d == null) {
            this.d = new i(this.f21213a, 1, 19, f0.NORMAL);
        }
        return this.d.d(yVar, sb);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
    
        if (r8 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0043, code lost:
    
        if (r8.hasNext() == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
    
        r9 = (java.util.Map.Entry) r8.next();
        r1 = (java.lang.String) r9.getKey();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005e, code lost:
    
        if (r11.g(r1, 0, r12, r13, r1.length()) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
    
        return r11.f(r10.f21213a, ((java.lang.Long) r9.getValue()).longValue(), r13, r1.length() + r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007c, code lost:
    
        if (r6 != j$.time.temporal.a.ERA) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0080, code lost:
    
        if (r11.f21220c != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
    
        r6 = r7.p().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008e, code lost:
    
        if (r6.hasNext() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0090, code lost:
    
        r1 = ((j$.time.chrono.n) r6.next()).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a7, code lost:
    
        if (r11.g(r1, 0, r12, r13, r1.length()) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bd, code lost:
    
        return r11.f(r10.f21213a, r7.getValue(), r13, r1.length() + r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c0, code lost:
    
        if (r11.f21220c == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c3, code lost:
    
        return ~r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c6, code lost:
    
        if (r10.d != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c8, code lost:
    
        r10.d = new j$.time.format.i(r10.f21213a, 1, 19, j$.time.format.f0.NORMAL);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00dc, code lost:
    
        return r10.d.g(r11, r12, r13);
     */
    @Override // j$.time.format.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int g(j$.time.format.v r11, java.lang.CharSequence r12, int r13) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.q.g(j$.time.format.v, java.lang.CharSequence, int):int");
    }

    public final String toString() {
        g0 g0Var = g0.FULL;
        j$.time.temporal.r rVar = this.f21213a;
        g0 g0Var2 = this.b;
        if (g0Var2 == g0Var) {
            return "Text(" + rVar + ")";
        }
        return "Text(" + rVar + "," + g0Var2 + ")";
    }
}
