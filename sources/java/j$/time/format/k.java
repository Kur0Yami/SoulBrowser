package j$.time.format;

/* loaded from: classes2.dex */
public final class k implements e {

    /* renamed from: a, reason: collision with root package name */
    public final e f21206a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final char f21207c;

    @Override // j$.time.format.e
    public final int g(v vVar, CharSequence charSequence, int i) {
        boolean z = vVar.f21220c;
        if (i > charSequence.length()) {
            throw new IndexOutOfBoundsException();
        }
        if (i == charSequence.length()) {
            return ~i;
        }
        int i2 = this.b + i;
        if (i2 > charSequence.length()) {
            if (z) {
                return ~i;
            }
            i2 = charSequence.length();
        }
        int i3 = i;
        while (i3 < i2 && vVar.a(charSequence.charAt(i3), this.f21207c)) {
            i3++;
        }
        int g = this.f21206a.g(vVar, charSequence.subSequence(0, i2), i3);
        return (g == i2 || !z) ? g : ~(i + i3);
    }

    public k(e eVar, int i, char c2) {
        this.f21206a = eVar;
        this.b = i;
        this.f21207c = c2;
    }

    @Override // j$.time.format.e
    public final boolean d(y yVar, StringBuilder sb) {
        int length = sb.length();
        if (!this.f21206a.d(yVar, sb)) {
            return false;
        }
        int length2 = sb.length() - length;
        int i = this.b;
        if (length2 <= i) {
            for (int i2 = 0; i2 < i - length2; i2++) {
                sb.insert(length, this.f21207c);
            }
            return true;
        }
        throw new RuntimeException("Cannot print as output of " + length2 + " characters exceeds pad width of " + i);
    }

    public final String toString() {
        String str;
        char c2 = this.f21207c;
        if (c2 == ' ') {
            str = ")";
        } else {
            str = ",'" + c2 + "')";
        }
        return "Pad(" + this.f21206a + "," + this.b + str;
    }
}
