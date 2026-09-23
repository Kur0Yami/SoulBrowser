package net.lingala.zip4j.crypto;

import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.Raw;

/* loaded from: classes4.dex */
public class AESEncrpyter implements IEncrypter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21980a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f21981c;

    @Override // net.lingala.zip4j.crypto.IEncrypter
    public final int a(byte[] bArr, int i, int i2) {
        int i3;
        if (!this.f21980a) {
            if (i2 % 16 != 0) {
                this.f21980a = true;
            }
            int i4 = i + i2;
            if (i < i4) {
                if (i + 16 <= i4) {
                    i3 = 16;
                } else {
                    i3 = i4 - i;
                }
                this.f21981c = i3;
                Raw.a(null, this.b);
                throw null;
            }
            return i2;
        }
        throw new ZipException("AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)");
    }
}
