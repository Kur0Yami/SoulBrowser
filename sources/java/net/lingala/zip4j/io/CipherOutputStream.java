package net.lingala.zip4j.io;

import java.io.File;
import java.io.IOException;
import java.util.Random;
import java.util.zip.CRC32;
import kotlin.UByte;
import net.lingala.zip4j.crypto.IEncrypter;
import net.lingala.zip4j.crypto.engine.ZipCryptoEngine;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.model.ZipParameters;

/* loaded from: classes4.dex */
public class CipherOutputStream extends BaseOutputStream {

    /* renamed from: c, reason: collision with root package name */
    public SplitOutputStream f21991c;
    public File f;
    public FileHeader g;
    public LocalFileHeader h;
    public IEncrypter i;
    public ZipParameters j;
    public ZipModel k;
    public long l;
    public CRC32 m;
    public long n;
    public byte[] o;
    public int p;

    /* JADX WARN: Removed duplicated region for block: B:33:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01d5 A[LOOP:1: B:57:0x01d3->B:58:0x01d5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x015b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instructions count: 577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.io.CipherOutputStream.a():void");
    }

    public final void b() {
        FileHeader fileHeader = this.g;
        if (fileHeader != null) {
            LocalFileHeader localFileHeader = new LocalFileHeader();
            this.h = localFileHeader;
            localFileHeader.f22004a = 67324752;
            localFileHeader.b = fileHeader.f22003c;
            localFileHeader.d = fileHeader.e;
            localFileHeader.e = fileHeader.f;
            localFileHeader.h = fileHeader.j;
            localFileHeader.i = fileHeader.k;
            localFileHeader.k = fileHeader.p;
            localFileHeader.m = fileHeader.r;
            localFileHeader.n = fileHeader.s;
            localFileHeader.q = fileHeader.v;
            localFileHeader.f = fileHeader.g & 4294967295L;
            localFileHeader.g = fileHeader.i;
            localFileHeader.f22005c = (byte[]) fileHeader.d.clone();
            return;
        }
        throw new ZipException("file header is null, cannot create local file header");
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        SplitOutputStream splitOutputStream = this.f21991c;
        if (splitOutputStream != null) {
            splitOutputStream.close();
        }
    }

    public final void d(byte[] bArr, int i, int i2) {
        IEncrypter iEncrypter = this.i;
        if (iEncrypter != null) {
            try {
                iEncrypter.a(bArr, i, i2);
            } catch (ZipException e) {
                throw new IOException(e.getMessage());
            }
        }
        this.f21991c.write(bArr, i, i2);
        long j = i2;
        this.l += j;
        this.n += j;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [net.lingala.zip4j.crypto.IEncrypter, net.lingala.zip4j.crypto.StandardEncrypter, java.lang.Object] */
    public final void e() {
        ZipParameters zipParameters = this.j;
        if (!zipParameters.g) {
            this.i = null;
            return;
        }
        int i = zipParameters.h;
        if (i != 0) {
            if (i == 99) {
                char[] cArr = zipParameters.i;
                if (cArr != null && cArr.length != 0) {
                    throw new ZipException("Invalid key strength in AES encrypter constructor");
                }
                throw new ZipException("input password is empty or null in AES encrypter constructor");
            }
            throw new ZipException("invalid encprytion method");
        }
        char[] cArr2 = zipParameters.i;
        int i2 = (this.h.e & 65535) << 16;
        ?? obj = new Object();
        if (cArr2 != null && cArr2.length > 0) {
            ZipCryptoEngine zipCryptoEngine = new ZipCryptoEngine();
            obj.f21986a = zipCryptoEngine;
            obj.b = new byte[12];
            if (cArr2.length > 0) {
                zipCryptoEngine.b(cArr2);
                byte[] bArr = new byte[12];
                Random random = new Random();
                for (int i3 = 0; i3 < 12; i3++) {
                    byte nextInt = (byte) random.nextInt(256);
                    ZipCryptoEngine zipCryptoEngine2 = obj.f21986a;
                    byte a2 = (byte) ((zipCryptoEngine2.a() & UByte.MAX_VALUE) ^ nextInt);
                    zipCryptoEngine2.c(nextInt);
                    bArr[i3] = a2;
                }
                obj.b = bArr;
                zipCryptoEngine.b(cArr2);
                byte[] bArr2 = obj.b;
                bArr2[11] = (byte) (i2 >>> 24);
                bArr2[10] = (byte) (i2 >>> 16);
                if (bArr2.length >= 12) {
                    obj.a(bArr2, 0, bArr2.length);
                    this.i = obj;
                    return;
                }
                throw new ZipException("invalid header bytes generated, cannot perform standard encryption");
            }
            throw new ZipException("input password is null or empty, cannot initialize standard encrypter");
        }
        throw new ZipException("input password is null or empty in standard encrpyter constructor");
    }

    @Override // net.lingala.zip4j.io.BaseOutputStream, java.io.OutputStream
    public void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        bArr.getClass();
        if (bArr.length == 0) {
            return;
        }
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3;
        byte[] bArr2 = this.o;
        if (i2 == 0) {
            return;
        }
        ZipParameters zipParameters = this.j;
        if (zipParameters.g && zipParameters.h == 99) {
            int i4 = this.p;
            if (i4 != 0) {
                int i5 = 16 - i4;
                if (i2 >= i5) {
                    System.arraycopy(bArr, i, bArr2, i4, i5);
                    d(bArr2, 0, bArr2.length);
                    i = 16 - this.p;
                    i2 -= i;
                    this.p = 0;
                } else {
                    System.arraycopy(bArr, i, bArr2, i4, i2);
                    this.p += i2;
                    return;
                }
            }
            if (i2 != 0 && (i3 = i2 % 16) != 0) {
                System.arraycopy(bArr, (i2 + i) - i3, bArr2, 0, i3);
                this.p = i3;
                i2 -= i3;
            }
        }
        if (i2 != 0) {
            d(bArr, i, i2);
        }
    }
}
