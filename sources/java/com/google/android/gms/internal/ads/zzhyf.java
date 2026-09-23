package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.Serializable;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhyf extends zzhxq {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhyf f8883a = new Object();

    public static void a(zzhyq zzhyqVar, zzhxj zzhxjVar) {
        String str;
        Writer writer = zzhyqVar.f8886c;
        if (zzhxjVar != null && !(zzhxjVar instanceof zzhxk)) {
            if (zzhxjVar instanceof zzhxn) {
                zzhxn g = zzhxjVar.g();
                Serializable serializable = g.f8871c;
                if (serializable instanceof Number) {
                    Number i = g.i();
                    zzhyqVar.d();
                    String obj = i.toString();
                    Class<?> cls = i.getClass();
                    if (cls != Integer.class && cls != Long.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class) {
                        if (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN")) {
                            if (cls != Float.class && cls != Double.class && !zzhyq.n.matcher(obj).matches()) {
                                String valueOf = String.valueOf(cls);
                                throw new IllegalArgumentException(android.support.v4.media.a.r(new StringBuilder(valueOf.length() + 47 + obj.length()), "String created by ", valueOf, " is not a valid JSON number: ", obj));
                            }
                        } else if (zzhyqVar.l != zzhxo.f8872c) {
                            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(obj));
                        }
                    }
                    zzhyqVar.i();
                    writer.append((CharSequence) obj);
                    return;
                }
                if (serializable instanceof Boolean) {
                    boolean booleanValue = ((Boolean) serializable).booleanValue();
                    zzhyqVar.d();
                    zzhyqVar.i();
                    if (true != booleanValue) {
                        str = "false";
                    } else {
                        str = "true";
                    }
                    writer.write(str);
                    return;
                }
                String a2 = g.a();
                if (a2 == null) {
                    if (zzhyqVar.m != null) {
                        zzhyqVar.d();
                    }
                    zzhyqVar.i();
                    writer.write("null");
                    return;
                }
                zzhyqVar.d();
                zzhyqVar.i();
                zzhyqVar.e(a2);
                return;
            }
            boolean z = zzhxjVar instanceof zzhxi;
            if (z) {
                zzhyqVar.d();
                zzhyqVar.i();
                int i2 = zzhyqVar.g;
                int[] iArr = zzhyqVar.f;
                if (i2 == iArr.length) {
                    zzhyqVar.f = Arrays.copyOf(iArr, i2 + i2);
                }
                int[] iArr2 = zzhyqVar.f;
                int i3 = zzhyqVar.g;
                zzhyqVar.g = i3 + 1;
                iArr2[i3] = 1;
                writer.write(91);
                if (z) {
                    ArrayList arrayList = ((zzhxi) zzhxjVar).f8868c;
                    int size = arrayList.size();
                    int i4 = 0;
                    while (i4 < size) {
                        Object obj2 = arrayList.get(i4);
                        i4++;
                        a(zzhyqVar, (zzhxj) obj2);
                    }
                    zzhyqVar.a(']', 1, 2);
                    return;
                }
                throw new IllegalStateException("Not a JSON Array: ".concat(zzhxjVar.toString()));
            }
            if (zzhxjVar instanceof zzhxl) {
                zzhyqVar.d();
                zzhyqVar.i();
                int i5 = zzhyqVar.g;
                int[] iArr3 = zzhyqVar.f;
                if (i5 == iArr3.length) {
                    zzhyqVar.f = Arrays.copyOf(iArr3, i5 + i5);
                }
                int[] iArr4 = zzhyqVar.f;
                int i6 = zzhyqVar.g;
                zzhyqVar.g = i6 + 1;
                iArr4[i6] = 3;
                writer.write(123);
                Iterator it = ((zzhxv) zzhxjVar.c().f8870c.entrySet()).iterator();
                while (((zzhxy) it).hasNext()) {
                    zzhxz next = ((zzhxu) it).next();
                    String str2 = (String) next.getKey();
                    Objects.requireNonNull(str2, "name == null");
                    if (zzhyqVar.m == null) {
                        int b = zzhyqVar.b();
                        if (b != 3 && b != 5) {
                            throw new IllegalStateException("Please begin an object before writing a name.");
                        }
                        zzhyqVar.m = str2;
                        a(zzhyqVar, (zzhxj) next.getValue());
                    } else {
                        throw new IllegalStateException("Already wrote a name, expecting a value.");
                    }
                }
                zzhyqVar.a('}', 3, 5);
                return;
            }
            throw new IllegalArgumentException("Couldn't write ".concat(String.valueOf(zzhxjVar.getClass())));
        }
        if (zzhyqVar.m != null) {
            zzhyqVar.d();
        }
        zzhyqVar.i();
        writer.write("null");
    }
}
