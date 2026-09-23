package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzatm implements zzatk {

    /* renamed from: a, reason: collision with root package name */
    public int f4401a = -1;
    public final byte[] b = new byte[8];

    /* renamed from: c, reason: collision with root package name */
    public final zzato f4402c;

    public zzatm(zzato zzatoVar) {
        this.f4402c = zzatoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final byte a(zzatw zzatwVar, int i) {
        int i2 = ((((~1264448664) & 231739608) | 1128901767) + ((1264448664 & 479203675) | 860794247)) - 1823332376;
        int i3 = 1761855727 % 1384724137;
        int i4 = (((((~143154913) & 992498304) | 439467622) + ((143154913 & 1627930754) | 1212551295)) - (-2089988634)) ^ (2033018190 % 70061690);
        int i5 = ((((~1661299468) & 613450408) | 2017391535) + ((1661299468 & 109051904) | 2071555381)) - (-441392543);
        int i6 = 1694830070 % 1383960411;
        int i7 = i >>> i4;
        int i8 = this.f4401a;
        byte[] bArr = this.b;
        if (i7 != i8) {
            this.f4402c.a(bArr, i7);
            this.f4401a = i7;
        }
        int i9 = i5 ^ i6;
        return (byte) (((zzatwVar.b(i) ^ bArr[i % (i2 ^ i3)]) << i9) >> i9);
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final zzatw b(zzatw zzatwVar, int i, int i2) {
        if (i < 0 || i > i2 || i2 > zzatwVar.f4413a.length) {
            throw new IndexOutOfBoundsException();
        }
        byte[] bArr = new byte[i2 - i];
        int i3 = 0;
        while (i < i2) {
            bArr[i3] = a(zzatwVar, i);
            i++;
            i3++;
        }
        return zzatw.e(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final /* bridge */ /* synthetic */ zzatk zzc() {
        return new zzatm(this.f4402c);
    }
}
