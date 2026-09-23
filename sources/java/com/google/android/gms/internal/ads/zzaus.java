package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaus {

    /* renamed from: a, reason: collision with root package name */
    public Object f4428a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public double f4429c;
    public zzatw d;
    public ArrayList e;
    public zzauk f;
    public int g = 1;

    public static zzaus a(Object obj) {
        zzaus zzausVar = new zzaus();
        int[] iArr = {572660336, 1963204074, 810270723, 1168973800, 12304897, -1027511958, 1433925857, 2084420925, 1937477084};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int l = a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7);
        zzausVar.r();
        zzausVar.g = (i8 % 1937477084) ^ l;
        zzausVar.f4428a = obj;
        return zzausVar;
    }

    public static zzaus b(long j) {
        zzaus zzausVar = new zzaus();
        int[] iArr = {269455306, 1628467785, 508432336, 1769894153, 149815616, -1737813993, 468055906, 524872353, 327254586};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int l = a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7);
        zzausVar.r();
        zzausVar.g = (i8 % 327254586) ^ l;
        zzausVar.b = j;
        return zzausVar;
    }

    public static zzaus c(double d) {
        zzaus zzausVar = new zzaus();
        int[] iArr = {76065818, 1629326670, 912768099, 1092092300, 784816880, -1349977414, 434065736, 1884661237, 1605908235};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int l = a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7);
        zzausVar.r();
        zzausVar.g = (i8 % 1605908235) ^ l;
        zzausVar.f4429c = d;
        return zzausVar;
    }

    public static zzaus d(zzatw zzatwVar) {
        zzaus zzausVar = new zzaus();
        int[] iArr = {1143408282, 544368152, 1884037077, 79323401, 1472762119, -801477845, 201305624, 1470503465, 1402586708};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int l = a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7);
        zzausVar.r();
        zzausVar.g = (i8 % 1402586708) ^ l;
        zzausVar.d = zzatwVar;
        return zzausVar;
    }

    public static zzaus e(ArrayList arrayList) {
        zzaus zzausVar = new zzaus();
        int[] iArr = {231602422, 370241669, 619070592, 319896591, 694865338, 1425770340, 39950860, 555996658, 324763920};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int l = a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7);
        zzausVar.r();
        zzausVar.g = (i8 % 324763920) ^ l;
        zzausVar.e = arrayList;
        return zzausVar;
    }

    public static zzaus f(zzauk zzaukVar) {
        zzaus zzausVar = new zzaus();
        int[] iArr = {1315209188, 67133601, 1612794668, 612376713, 2023183116, -774012042, 5007439, 661761152, 474613996};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int l = a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7);
        zzausVar.r();
        zzausVar.g = (i8 % 474613996) ^ l;
        zzausVar.f = zzaukVar;
        return zzausVar;
    }

    public static zzaus g(Object obj) {
        long j;
        if (obj instanceof Long) {
            return b(((Long) obj).longValue());
        }
        if (obj instanceof Boolean) {
            if (true != ((Boolean) obj).booleanValue()) {
                j = 0;
            } else {
                j = 1;
            }
            return b(j);
        }
        if (obj instanceof Integer) {
            return b(((Integer) obj).intValue());
        }
        if (obj instanceof Double) {
            return c(((Double) obj).doubleValue());
        }
        if (obj instanceof Float) {
            return c(((Float) obj).floatValue());
        }
        if (obj instanceof Short) {
            return b(((Short) obj).shortValue());
        }
        if (obj instanceof Byte) {
            return b(((Byte) obj).byteValue());
        }
        if (obj instanceof zzatw) {
            return d((zzatw) obj);
        }
        if (obj instanceof String) {
            return d(zzatw.e(((String) obj).getBytes(Charset.forName(zzatu.a("Hn2H4l0=")))));
        }
        if (obj instanceof ArrayList) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = (ArrayList) obj;
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(g(arrayList2.get(i)));
            }
            return e(arrayList);
        }
        return a(obj);
    }

    public static zzaus j(zzaus zzausVar) {
        int[] iArr = {1154349542, 1365661854, 772762753, -35647458, -1399059520, 905919471, 65677639, 1759726503, 552812661};
        int i = 0;
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int l = a.l((i3 & (~i2)) | i4, (i2 & i5) | i6, i7, i8);
        int i10 = i9 % 552812661;
        try {
            int i11 = zzausVar.g;
            int i12 = (i10 ^ l) + i11;
            if (i11 == 0) {
                throw null;
            }
            switch (i12) {
                case 0:
                    return new zzaus();
                case 1:
                    return a(zzausVar.l());
                case 2:
                    return b(zzausVar.m());
                case 3:
                    return d(zzausVar.n());
                case 4:
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = (ArrayList) zzausVar.o();
                    int size = arrayList2.size();
                    while (i < size) {
                        Object obj = arrayList2.get(i);
                        i++;
                        arrayList.add(j((zzaus) obj));
                    }
                    return e(arrayList);
                case 5:
                    return f(zzausVar.p());
                case 6:
                    return c(zzausVar.q());
                default:
                    throw new AssertionError(zzatu.a("HkezqgQcPni/TE/NwjgYPC5H6Q2JRdEp275wOg=="));
            }
        } catch (zzaup e) {
            throw new AssertionError(zzatu.a("CEiv6BFfPnitUE+D"), e);
        }
    }

    public final Object h() {
        int[] iArr = {172154289, 1050326876, 843682288, -858640882, -228026365, 881347074, 13857144, 514820752, 473891334};
        int i = 0;
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int l = a.l((i3 & (~i2)) | i4, (i2 & i5) | i6, i7, i8);
        int i10 = this.g;
        int i11 = ((i9 % 473891334) ^ l) + i10;
        if (i10 != 0) {
            switch (i11) {
                case 0:
                case 5:
                    throw new Exception();
                case 1:
                    return l();
                case 2:
                    return Long.valueOf(m());
                case 3:
                    return n().a();
                case 4:
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = (ArrayList) o();
                    int size = arrayList2.size();
                    while (i < size) {
                        Object obj = arrayList2.get(i);
                        i++;
                        arrayList.add(((zzaus) obj).h());
                    }
                    return arrayList;
                case 6:
                    return Double.valueOf(q());
                default:
                    throw new AssertionError(zzatu.a("HkezqgQcPni/TE/NwjgYPC5H6Q2JRdEp275wOg=="));
            }
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x01f4, code lost:
    
        if (r18.equals(java.lang.Object.class) != false) goto L150;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(java.lang.Class r18) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaus.i(java.lang.Class):java.lang.Object");
    }

    public final void k(ByteArrayOutputStream byteArrayOutputStream) {
        long[] jArr = {1269833163, 1628598594, 308676977, 1629286434, 15633520, 3337700125L, 1402923307, 613197917, 297598514};
        int i = 0;
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        long j9 = (((((~j) & j2) | j3) + ((j & j4) | j5)) - j6) + j7;
        long j10 = j8 % 297598514;
        int i2 = this.g;
        int i3 = i2 - 1;
        if (i2 != 0) {
            switch (i3) {
                case 0:
                case 1:
                case 5:
                    throw new Exception();
                case 2:
                    zzats.b(m(), new zzaur(byteArrayOutputStream), true);
                    return;
                case 3:
                    byte[] bArr = n().f4413a;
                    zzats.b(bArr.length * (j9 ^ j10), new zzaur(byteArrayOutputStream), true);
                    byteArrayOutputStream.write(bArr);
                    return;
                case 4:
                    ArrayList arrayList = (ArrayList) o();
                    zzats.b(arrayList.size(), new zzaur(byteArrayOutputStream), true);
                    int size = arrayList.size();
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        ((zzaus) obj).k(byteArrayOutputStream);
                    }
                    return;
                case 6:
                    double q = q();
                    zzaur zzaurVar = new zzaur(byteArrayOutputStream);
                    long doubleToRawLongBits = Double.doubleToRawLongBits(q);
                    ByteBuffer allocate = ByteBuffer.allocate(8);
                    allocate.order(ByteOrder.LITTLE_ENDIAN);
                    allocate.putLong(doubleToRawLongBits);
                    byte[] array = allocate.array();
                    int length = array.length;
                    while (i < length) {
                        zzaurVar.f4427a.write(array[i]);
                        i++;
                    }
                    int length2 = allocate.array().length;
                    return;
                default:
                    return;
            }
        }
        throw null;
    }

    public final Object l() {
        int[] iArr = {427355115, 404248040, 1318670750, 874677346, 1819730563, -970011213, 126401947, 1858504292, 235745791};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        s((iArr[7] % 235745791) ^ a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7));
        return this.f4428a;
    }

    public final long m() {
        int[] iArr = {1646478179, 763209928, 1529626135, 609321208, 1403807536, -1382063087, 25624641, 1388803074, 733327814};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        s((iArr[7] % 733327814) ^ a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7));
        return this.b;
    }

    public final zzatw n() {
        int[] iArr = {2059344234, 1917530355, 739411611, 1399403104, 95815174, 2094390031, 51245830, 1312994984, 1140384172};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        s((iArr[7] % 1140384172) ^ a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7));
        return this.d;
    }

    public final List o() {
        int[] iArr = {1435218189, 1093276829, 949583962, 1092752517, 575966040, -2054938211, 262178224, 1891252715, 1250801052};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        s((iArr[7] % 1250801052) ^ a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7));
        return this.e;
    }

    public final zzauk p() {
        int[] iArr = {672139932, 1821026951, 1629321417, 214090246, 828986457, -1439766056, 580508860, 1579068977, 395191309};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        s((iArr[7] % 395191309) ^ a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7));
        return this.f;
    }

    public final double q() {
        int[] iArr = {1714636915, 1758565445, 174653454, 1653642817, 38095532, -1976041400, 596516649, 1804289383, 846930886};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        s((iArr[7] % 846930886) ^ a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7));
        return this.f4429c;
    }

    public final void r() {
        this.g = 1;
        this.b = 0L;
        this.f4428a = null;
        this.d = null;
        this.e = null;
        this.f = null;
    }

    public final void s(int i) {
        if (i == this.g) {
        } else {
            throw new Exception();
        }
    }
}
