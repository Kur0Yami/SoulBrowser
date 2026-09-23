package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhhl {

    /* renamed from: a, reason: collision with root package name */
    public final zzhhk f8550a;
    public final long[] b;

    public zzhhl(zzhhk zzhhkVar, long[] jArr) {
        this.f8550a = zzhhkVar;
        this.b = jArr;
    }

    public static void a(zzhhl zzhhlVar, zzhhj zzhhjVar) {
        zzhhk zzhhkVar = zzhhjVar.f8547a;
        zzhhk zzhhkVar2 = zzhhlVar.f8550a;
        long[] jArr = zzhhkVar2.f8548a;
        long[] jArr2 = zzhhkVar.f8548a;
        long[] jArr3 = zzhhjVar.b;
        zzhht.e(jArr, jArr2, jArr3);
        long[] jArr4 = zzhhkVar2.b;
        long[] jArr5 = zzhhkVar.b;
        long[] jArr6 = zzhhkVar.f8549c;
        zzhht.e(jArr4, jArr5, jArr6);
        zzhht.e(zzhhkVar2.f8549c, jArr6, jArr3);
        zzhht.e(zzhhlVar.b, jArr2, jArr5);
    }

    public zzhhl() {
        this(new zzhhk(), new long[10]);
    }

    public zzhhl(zzhhj zzhhjVar) {
        this();
        a(this, zzhhjVar);
    }
}
