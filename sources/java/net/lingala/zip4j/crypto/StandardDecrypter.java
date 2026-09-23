package net.lingala.zip4j.crypto;

import kotlin.KotlinVersion;
import kotlin.UByte;
import net.lingala.zip4j.crypto.engine.ZipCryptoEngine;
import net.lingala.zip4j.exception.ZipException;

/* loaded from: classes4.dex */
public class StandardDecrypter implements IDecrypter {

    /* renamed from: a, reason: collision with root package name */
    public ZipCryptoEngine f21985a;

    @Override // net.lingala.zip4j.crypto.IDecrypter
    public final int a(byte[] bArr, int i, int i2) {
        ZipCryptoEngine zipCryptoEngine = this.f21985a;
        if (i >= 0 && i2 >= 0) {
            for (int i3 = i; i3 < i + i2; i3++) {
                try {
                    byte a2 = (byte) (((bArr[i3] & UByte.MAX_VALUE) ^ zipCryptoEngine.a()) & KotlinVersion.MAX_COMPONENT_VALUE);
                    zipCryptoEngine.c(a2);
                    bArr[i3] = a2;
                } catch (Exception e) {
                    throw new ZipException(e);
                }
            }
            return i2;
        }
        throw new ZipException("one of the input parameters were null in standard decrpyt data");
    }
}
