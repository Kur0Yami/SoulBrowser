package net.lingala.zip4j.crypto.PBKDF2;

/* loaded from: classes4.dex */
public class PBKDF2Engine {

    /* renamed from: a, reason: collision with root package name */
    public final PBKDF2Parameters f21983a;
    public MacBasedPRF b = null;

    public PBKDF2Engine(PBKDF2Parameters pBKDF2Parameters) {
        this.f21983a = pBKDF2Parameters;
    }

    public final byte[] a(char[] cArr, int i) {
        int i2;
        int i3;
        cArr.getClass();
        byte[] bArr = new byte[cArr.length];
        int i4 = 0;
        for (int i5 = 0; i5 < cArr.length; i5++) {
            bArr[i5] = (byte) cArr[i5];
        }
        if (this.b == null) {
            this.b = new MacBasedPRF();
        }
        this.b.a(bArr);
        if (i == 0) {
            i2 = this.b.b;
        } else {
            i2 = i;
        }
        MacBasedPRF macBasedPRF = this.b;
        byte[] bArr2 = this.f21983a.f21984a;
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        int i6 = macBasedPRF.b;
        if (i2 % i6 > 0) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        int i7 = (i2 / i6) + i3;
        int i8 = i2 - ((i7 - 1) * i6);
        byte[] bArr3 = new byte[i7 * i6];
        int i9 = 0;
        for (int i10 = 1; i10 <= i7; i10++) {
            int i11 = macBasedPRF.b;
            byte[] bArr4 = new byte[i11];
            byte[] bArr5 = new byte[bArr2.length + 4];
            System.arraycopy(bArr2, i4, bArr5, i4, bArr2.length);
            int length = bArr2.length;
            bArr5[length] = (byte) (i10 / 16777216);
            bArr5[length + 1] = (byte) (i10 / 65536);
            bArr5[length + 2] = (byte) (i10 / 256);
            bArr5[length + 3] = (byte) i10;
            for (int i12 = 0; i12 < 1000; i12++) {
                bArr5 = macBasedPRF.f21982a.doFinal(bArr5);
                for (int i13 = 0; i13 < i11; i13++) {
                    bArr4[i13] = (byte) (bArr4[i13] ^ bArr5[i13]);
                }
            }
            i4 = 0;
            System.arraycopy(bArr4, 0, bArr3, i9, i11);
            i9 += i6;
        }
        if (i8 < i6) {
            byte[] bArr6 = new byte[i2];
            System.arraycopy(bArr3, i4, bArr6, i4, i2);
            return bArr6;
        }
        return bArr3;
    }
}
