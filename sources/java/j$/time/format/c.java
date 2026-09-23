package j$.time.format;

/* loaded from: classes2.dex */
public final class c implements e {

    /* renamed from: a, reason: collision with root package name */
    public final char f21191a;

    public c(char c2) {
        this.f21191a = c2;
    }

    @Override // j$.time.format.e
    public final boolean d(y yVar, StringBuilder sb) {
        sb.append(this.f21191a);
        return true;
    }

    @Override // j$.time.format.e
    public final int g(v vVar, CharSequence charSequence, int i) {
        if (i == charSequence.length()) {
            return ~i;
        }
        char charAt = charSequence.charAt(i);
        char c2 = this.f21191a;
        return (charAt == c2 || (!vVar.b && (Character.toUpperCase(charAt) == Character.toUpperCase(c2) || Character.toLowerCase(charAt) == Character.toLowerCase(c2)))) ? i + 1 : ~i;
    }

    public final String toString() {
        char c2 = this.f21191a;
        if (c2 == '\'') {
            return "''";
        }
        return "'" + c2 + "'";
    }
}
