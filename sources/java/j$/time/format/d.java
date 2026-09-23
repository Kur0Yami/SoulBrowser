package j$.time.format;

import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class d implements e {

    /* renamed from: a, reason: collision with root package name */
    public final e[] f21193a;
    public final boolean b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(java.util.List r2, boolean r3) {
        /*
            r1 = this;
            java.util.ArrayList r2 = (java.util.ArrayList) r2
            int r0 = r2.size()
            j$.time.format.e[] r0 = new j$.time.format.e[r0]
            java.lang.Object[] r2 = r2.toArray(r0)
            j$.time.format.e[] r2 = (j$.time.format.e[]) r2
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.d.<init>(java.util.List, boolean):void");
    }

    public d(e[] eVarArr, boolean z) {
        this.f21193a = eVarArr;
        this.b = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
    
        if (r2 != false) goto L11;
     */
    @Override // j$.time.format.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(j$.time.format.y r8, java.lang.StringBuilder r9) {
        /*
            r7 = this;
            int r0 = r9.length()
            r1 = 1
            boolean r2 = r7.b
            if (r2 == 0) goto Le
            int r3 = r8.f21224c
            int r3 = r3 + r1
            r8.f21224c = r3
        Le:
            j$.time.format.e[] r3 = r7.f21193a     // Catch: java.lang.Throwable -> L27
            int r4 = r3.length     // Catch: java.lang.Throwable -> L27
            r5 = 0
        L12:
            if (r5 >= r4) goto L2c
            r6 = r3[r5]     // Catch: java.lang.Throwable -> L27
            boolean r6 = r6.d(r8, r9)     // Catch: java.lang.Throwable -> L27
            if (r6 != 0) goto L29
            r9.setLength(r0)     // Catch: java.lang.Throwable -> L27
            if (r2 == 0) goto L2f
        L21:
            int r9 = r8.f21224c
            int r9 = r9 - r1
            r8.f21224c = r9
            return r1
        L27:
            r9 = move-exception
            goto L30
        L29:
            int r5 = r5 + 1
            goto L12
        L2c:
            if (r2 == 0) goto L2f
            goto L21
        L2f:
            return r1
        L30:
            if (r2 == 0) goto L37
            int r0 = r8.f21224c
            int r0 = r0 - r1
            r8.f21224c = r0
        L37:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.d.d(j$.time.format.y, java.lang.StringBuilder):boolean");
    }

    @Override // j$.time.format.e
    public final int g(v vVar, CharSequence charSequence, int i) {
        boolean z = this.b;
        e[] eVarArr = this.f21193a;
        int i2 = 0;
        if (z) {
            ArrayList arrayList = vVar.d;
            d0 c2 = vVar.c();
            c2.getClass();
            d0 d0Var = new d0();
            ((HashMap) d0Var.f21194a).putAll(c2.f21194a);
            d0Var.b = c2.b;
            d0Var.f21195c = c2.f21195c;
            d0Var.d = c2.d;
            arrayList.add(d0Var);
            int length = eVarArr.length;
            int i3 = i;
            while (i2 < length) {
                i3 = eVarArr[i2].g(vVar, charSequence, i3);
                if (i3 < 0) {
                    vVar.d.remove(r8.size() - 1);
                    return i;
                }
                i2++;
            }
            vVar.d.remove(r8.size() - 2);
            return i3;
        }
        int length2 = eVarArr.length;
        while (i2 < length2) {
            i = eVarArr[i2].g(vVar, charSequence, i);
            if (i < 0) {
                return i;
            }
            i2++;
        }
        return i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        e[] eVarArr = this.f21193a;
        if (eVarArr != null) {
            boolean z = this.b;
            sb.append(z ? "[" : "(");
            for (e eVar : eVarArr) {
                sb.append(eVar);
            }
            sb.append(z ? "]" : ")");
        }
        return sb.toString();
    }
}
