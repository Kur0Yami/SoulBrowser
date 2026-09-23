package com.google.android.gms.internal.ads;

import java.lang.reflect.Array;
import java.math.BigInteger;
import kotlin.KotlinVersion;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhho {

    /* renamed from: a, reason: collision with root package name */
    public static final long[] f8554a;
    public static final long[] b;

    /* renamed from: c, reason: collision with root package name */
    public static final long[] f8555c;
    public static final zzhhh[][] d;
    public static final zzhhh[] e;
    public static final BigInteger f;
    public static final BigInteger g;
    public static final BigInteger h;

    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhhn] */
    static {
        BigInteger subtract = BigInteger.valueOf(2L).pow(KotlinVersion.MAX_COMPONENT_VALUE).subtract(BigInteger.valueOf(19L));
        f = subtract;
        BigInteger mod = BigInteger.valueOf(-121665L).multiply(BigInteger.valueOf(121666L).modInverse(subtract)).mod(subtract);
        g = mod;
        BigInteger mod2 = BigInteger.valueOf(2L).multiply(mod).mod(subtract);
        h = mod2;
        BigInteger valueOf = BigInteger.valueOf(2L);
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger modPow = valueOf.modPow(subtract.subtract(bigInteger).divide(BigInteger.valueOf(4L)), subtract);
        ?? obj = new Object();
        BigInteger mod3 = BigInteger.valueOf(4L).multiply(BigInteger.valueOf(5L).modInverse(subtract)).mod(subtract);
        obj.b = mod3;
        BigInteger multiply = mod3.pow(2).subtract(bigInteger).multiply(mod.multiply(mod3.pow(2)).add(bigInteger).modInverse(subtract));
        BigInteger modPow2 = multiply.modPow(subtract.add(BigInteger.valueOf(3L)).divide(BigInteger.valueOf(8L)), subtract);
        if (!modPow2.pow(2).subtract(multiply).mod(subtract).equals(BigInteger.ZERO)) {
            modPow2 = modPow2.multiply(modPow).mod(subtract);
        }
        int i = 0;
        if (modPow2.testBit(0)) {
            modPow2 = subtract.subtract(modPow2);
        }
        obj.f8553a = modPow2;
        f8554a = zzhht.g(b(mod));
        b = zzhht.g(b(mod2));
        f8555c = zzhht.g(b(modPow));
        d = (zzhhh[][]) Array.newInstance((Class<?>) zzhhh.class, 32, 8);
        zzhhn zzhhnVar = obj;
        for (int i2 = 0; i2 < 32; i2++) {
            zzhhn zzhhnVar2 = zzhhnVar;
            for (int i3 = 0; i3 < 8; i3++) {
                d[i2][i3] = c(zzhhnVar2);
                zzhhnVar2 = a(zzhhnVar2, zzhhnVar);
            }
            for (int i4 = 0; i4 < 8; i4++) {
                zzhhnVar = a(zzhhnVar, zzhhnVar);
            }
        }
        zzhhn a2 = a(obj, obj);
        e = new zzhhh[8];
        zzhhn zzhhnVar3 = obj;
        while (i < 8) {
            e[i] = c(zzhhnVar3);
            i++;
            zzhhnVar3 = a(zzhhnVar3, a2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhhn] */
    public static zzhhn a(zzhhn zzhhnVar, zzhhn zzhhnVar2) {
        ?? obj = new Object();
        BigInteger multiply = g.multiply(zzhhnVar.f8553a.multiply(zzhhnVar2.f8553a).multiply(zzhhnVar.b).multiply(zzhhnVar2.b));
        BigInteger bigInteger = f;
        BigInteger mod = multiply.mod(bigInteger);
        BigInteger add = zzhhnVar.f8553a.multiply(zzhhnVar2.b).add(zzhhnVar2.f8553a.multiply(zzhhnVar.b));
        BigInteger bigInteger2 = BigInteger.ONE;
        obj.f8553a = add.multiply(bigInteger2.add(mod).modInverse(bigInteger)).mod(bigInteger);
        obj.b = zzhhnVar.b.multiply(zzhhnVar2.b).add(zzhhnVar.f8553a.multiply(zzhhnVar2.f8553a)).multiply(bigInteger2.subtract(mod).modInverse(bigInteger)).mod(bigInteger);
        return obj;
    }

    public static byte[] b(BigInteger bigInteger) {
        byte[] bArr = new byte[32];
        byte[] byteArray = bigInteger.toByteArray();
        int length = byteArray.length;
        System.arraycopy(byteArray, 0, bArr, 32 - length, length);
        for (int i = 0; i < 16; i++) {
            byte b2 = bArr[i];
            int i2 = 31 - i;
            bArr[i] = bArr[i2];
            bArr[i2] = b2;
        }
        return bArr;
    }

    public static zzhhh c(zzhhn zzhhnVar) {
        BigInteger add = zzhhnVar.b.add(zzhhnVar.f8553a);
        BigInteger bigInteger = f;
        return new zzhhh(zzhht.g(b(add.mod(bigInteger))), zzhht.g(b(zzhhnVar.b.subtract(zzhhnVar.f8553a).mod(bigInteger))), zzhht.g(b(h.multiply(zzhhnVar.f8553a).multiply(zzhhnVar.b).mod(bigInteger))));
    }
}
