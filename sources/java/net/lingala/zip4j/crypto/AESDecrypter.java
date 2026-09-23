package net.lingala.zip4j.crypto;

import net.lingala.zip4j.crypto.PBKDF2.MacBasedPRF;
import net.lingala.zip4j.crypto.engine.AESEngine;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.Raw;

/* loaded from: classes4.dex */
public class AESDecrypter implements IDecrypter {

    /* renamed from: a, reason: collision with root package name */
    public AESEngine f21978a;
    public MacBasedPRF b;

    /* renamed from: c, reason: collision with root package name */
    public int f21979c;
    public int d;
    public int e;
    public byte[] f;
    public byte[] g;
    public byte[] h;
    public byte[] i;
    public int j;
    public byte[] k;
    public byte[] l;
    public int m;

    @Override // net.lingala.zip4j.crypto.IDecrypter
    public final int a(byte[] bArr, int i, int i2) {
        int i3;
        byte[] bArr2 = this.l;
        byte[] bArr3 = this.k;
        if (this.f21978a != null) {
            int i4 = i;
            while (true) {
                int i5 = i + i2;
                if (i4 < i5) {
                    int i6 = i4 + 16;
                    if (i6 <= i5) {
                        i3 = 16;
                    } else {
                        i3 = i5 - i4;
                    }
                    try {
                        this.m = i3;
                        MacBasedPRF macBasedPRF = this.b;
                        macBasedPRF.getClass();
                        try {
                            macBasedPRF.f21982a.update(bArr, i4, i3);
                            Raw.a(bArr3, this.j);
                            this.f21978a.a(bArr3, bArr2);
                            for (int i7 = 0; i7 < this.m; i7++) {
                                int i8 = i4 + i7;
                                bArr[i8] = (byte) (bArr[i8] ^ bArr2[i7]);
                            }
                            this.j++;
                            i4 = i6;
                        } catch (IllegalStateException e) {
                            throw new RuntimeException(e);
                        }
                    } catch (ZipException e2) {
                        throw e2;
                    } catch (Exception e3) {
                        throw new ZipException(e3);
                    }
                } else {
                    return i2;
                }
            }
        } else {
            throw new ZipException("AES not initialized properly");
        }
    }
}
