package net.lingala.zip4j.crypto;

import kotlin.UByte;
import net.lingala.zip4j.crypto.engine.ZipCryptoEngine;
import net.lingala.zip4j.exception.ZipException;

/* loaded from: classes4.dex */
public class StandardEncrypter implements IEncrypter {

    /* renamed from: a, reason: collision with root package name */
    public ZipCryptoEngine f21986a;
    public byte[] b;

    @Override // net.lingala.zip4j.crypto.IEncrypter
    public final int a(byte[] bArr, int i, int i2) {
        if (i2 >= 0) {
            for (int i3 = i; i3 < i + i2; i3++) {
                try {
                    byte b = bArr[i3];
                    ZipCryptoEngine zipCryptoEngine = this.f21986a;
                    byte a2 = (byte) ((zipCryptoEngine.a() & UByte.MAX_VALUE) ^ b);
                    zipCryptoEngine.c(b);
                    bArr[i3] = a2;
                } catch (Exception e) {
                    throw new ZipException(e);
                }
            }
            return i2;
        }
        throw new ZipException("invalid length specified to decrpyt data");
    }
}
