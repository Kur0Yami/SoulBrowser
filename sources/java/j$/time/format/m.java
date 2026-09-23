package j$.time.format;

import kotlin.jvm.internal.CharCompanionObject;

/* loaded from: classes2.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public String f21208a;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public final char f21209c;
    public m d;
    public m e;

    public boolean b(char c2, char c3) {
        return c2 == c3;
    }

    public m(String str, String str2, m mVar) {
        this.f21208a = str;
        this.b = str2;
        this.d = mVar;
        if (str.isEmpty()) {
            this.f21209c = CharCompanionObject.MAX_VALUE;
        } else {
            this.f21209c = this.f21208a.charAt(0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0033, code lost:
    
        r0 = r0.e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
    
        if (r0 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
    
        r6.setIndex(r2);
        r5 = r0.c(r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        if (r5 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
    
        if (r2 != r1) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        if (b(r0.f21209c, r5.charAt(r2)) == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String c(java.lang.CharSequence r5, java.text.ParsePosition r6) {
        /*
            r4 = this;
            int r0 = r6.getIndex()
            int r1 = r5.length()
            boolean r2 = r4.e(r5, r0, r1)
            if (r2 != 0) goto L10
            r5 = 0
            return r5
        L10:
            java.lang.String r2 = r4.f21208a
            int r2 = r2.length()
            int r2 = r2 + r0
            j$.time.format.m r0 = r4.d
            if (r0 == 0) goto L37
            if (r2 == r1) goto L37
        L1d:
            char r1 = r0.f21209c
            char r3 = r5.charAt(r2)
            boolean r1 = r4.b(r1, r3)
            if (r1 == 0) goto L33
            r6.setIndex(r2)
            java.lang.String r5 = r0.c(r5, r6)
            if (r5 == 0) goto L37
            return r5
        L33:
            j$.time.format.m r0 = r0.e
            if (r0 != 0) goto L1d
        L37:
            r6.setIndex(r2)
            java.lang.String r5 = r4.b
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.m.c(java.lang.CharSequence, java.text.ParsePosition):java.lang.String");
    }

    public m d(String str, String str2, m mVar) {
        return new m(str, str2, mVar);
    }

    public boolean e(CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof String) {
            return ((String) charSequence).startsWith(this.f21208a, i);
        }
        int length = this.f21208a.length();
        if (length > i2 - i) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return true;
            }
            int i5 = i3 + 1;
            int i6 = i + 1;
            if (!b(this.f21208a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }

    public final boolean a(String str, String str2) {
        int i = 0;
        while (i < str.length() && i < this.f21208a.length() && b(str.charAt(i), this.f21208a.charAt(i))) {
            i++;
        }
        if (i == this.f21208a.length()) {
            if (i < str.length()) {
                String substring = str.substring(i);
                for (m mVar = this.d; mVar != null; mVar = mVar.e) {
                    if (b(mVar.f21209c, substring.charAt(0))) {
                        return mVar.a(substring, str2);
                    }
                }
                m d = d(substring, str2, null);
                d.e = this.d;
                this.d = d;
                return true;
            }
            this.b = str2;
            return true;
        }
        m d2 = d(this.f21208a.substring(i), this.b, this.d);
        this.f21208a = str.substring(0, i);
        this.d = d2;
        if (i < str.length()) {
            this.d.e = d(str.substring(i), str2, null);
            this.b = null;
            return true;
        }
        this.b = str2;
        return true;
    }
}
