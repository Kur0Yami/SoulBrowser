package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.cache.Striped64;
import java.io.Serializable;

@GwtCompatible
/* loaded from: classes3.dex */
final class LongAdder extends Striped64 implements Serializable, LongAddable {
    @Override // com.google.common.cache.LongAddable
    public final void a() {
        add(1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x00b3, code lost:
    
        if (r13.f12226c != r6) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x00b5, code lost:
    
        r5 = new com.google.common.cache.Striped64.Cell[r7 << 1];
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x00ba, code lost:
    
        if (r8 >= r7) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x00bc, code lost:
    
        r5[r8] = r6[r8];
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x00c5, code lost:
    
        r13.f12226c = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0112 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0049 A[SYNTHETIC] */
    @Override // com.google.common.cache.LongAddable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void add(long r14) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LongAdder.add(long):void");
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return e();
    }

    public final long e() {
        long j = this.f;
        Striped64.Cell[] cellArr = this.f12226c;
        if (cellArr != null) {
            for (Striped64.Cell cell : cellArr) {
                if (cell != null) {
                    j += cell.f12228a;
                }
            }
        }
        return j;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return (float) e();
    }

    @Override // java.lang.Number
    public final int intValue() {
        return (int) e();
    }

    @Override // java.lang.Number
    public final long longValue() {
        return e();
    }

    public final String toString() {
        return Long.toString(e());
    }
}
