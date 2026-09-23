package net.lingala.zip4j.unzip;

import android.support.v4.media.a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.zip.CRC32;
import kotlin.KotlinVersion;
import net.lingala.zip4j.core.HeaderReader;
import net.lingala.zip4j.crypto.AESDecrypter;
import net.lingala.zip4j.crypto.IDecrypter;
import net.lingala.zip4j.crypto.PBKDF2.MacBasedPRF;
import net.lingala.zip4j.crypto.PBKDF2.PBKDF2Engine;
import net.lingala.zip4j.crypto.PBKDF2.PBKDF2Parameters;
import net.lingala.zip4j.crypto.engine.AESEngine;
import net.lingala.zip4j.crypto.engine.ZipCryptoEngine;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.AESExtraDataRecord;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.util.Raw;
import net.lingala.zip4j.util.Zip4jUtil;

/* loaded from: classes4.dex */
public class UnzipEngine {

    /* renamed from: a, reason: collision with root package name */
    public ZipModel f22016a;
    public FileHeader b;

    /* renamed from: c, reason: collision with root package name */
    public int f22017c;
    public LocalFileHeader d;
    public IDecrypter e;
    public CRC32 f;

    public final void a() {
        FileHeader fileHeader = this.b;
        if (fileHeader != null) {
            if (fileHeader.s == 99) {
                IDecrypter iDecrypter = this.e;
                if (iDecrypter != null && (iDecrypter instanceof AESDecrypter)) {
                    byte[] doFinal = ((AESDecrypter) iDecrypter).b.f21982a.doFinal();
                    byte[] bArr = ((AESDecrypter) this.e).i;
                    byte[] bArr2 = new byte[10];
                    if (bArr != null) {
                        System.arraycopy(doFinal, 0, bArr2, 0, 10);
                        if (!Arrays.equals(bArr2, bArr)) {
                            throw new ZipException("invalid CRC (MAC) for file: " + fileHeader.p);
                        }
                        return;
                    }
                    throw new ZipException("CRC (MAC) check failed for " + fileHeader.p);
                }
                return;
            }
            if ((this.f.getValue() & 4294967295L) != (4294967295L & fileHeader.g)) {
                String str = "invalid CRC for file: " + fileHeader.p;
                LocalFileHeader localFileHeader = this.d;
                if (localFileHeader.m && localFileHeader.n == 0) {
                    str = a.k(str, " - Wrong Password?");
                }
                throw new ZipException(str);
            }
        }
    }

    public final boolean b() {
        FileHeader fileHeader = this.b;
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                randomAccessFile = c();
                if (randomAccessFile == null) {
                    randomAccessFile = new RandomAccessFile(new File(this.f22016a.l), "r");
                }
                LocalFileHeader g = new HeaderReader(randomAccessFile).g(fileHeader);
                this.d = g;
                if (g.d != fileHeader.e) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException | Exception unused) {
                    }
                    return false;
                }
                try {
                    randomAccessFile.close();
                } catch (IOException | Exception unused2) {
                }
                return true;
            } catch (FileNotFoundException e) {
                throw new ZipException(e);
            }
        } catch (Throwable th) {
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException | Exception unused3) {
                }
            }
            throw th;
        }
    }

    public final RandomAccessFile c() {
        ZipModel zipModel = this.f22016a;
        if (zipModel.j) {
            int i = this.b.m;
            int i2 = i + 1;
            this.f22017c = i2;
            String str = zipModel.l;
            if (i != zipModel.g.b) {
                if (i >= 9) {
                    str = str.substring(0, str.lastIndexOf(".")) + ".z" + i2;
                } else {
                    str = str.substring(0, str.lastIndexOf(".")) + ".z0" + i2;
                }
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
                if (this.f22017c == 1) {
                    randomAccessFile.read(new byte[4]);
                    if (Raw.b(r1) != 134695760) {
                        throw new ZipException("invalid first part split file signature");
                    }
                }
                return randomAccessFile;
            } catch (FileNotFoundException e) {
                throw new ZipException(e);
            } catch (IOException e2) {
                throw new ZipException(e2);
            }
        }
        return null;
    }

    public final RandomAccessFile d() {
        ZipModel zipModel = this.f22016a;
        if (zipModel != null && Zip4jUtil.l(zipModel.l)) {
            try {
                if (zipModel.j) {
                    return c();
                }
                return new RandomAccessFile(new File(zipModel.l), "r");
            } catch (FileNotFoundException e) {
                throw new ZipException(e);
            } catch (Exception e2) {
                throw new ZipException(e2);
            }
        }
        throw new ZipException("input parameter is null in getFilePointer");
    }

    public final void e(RandomAccessFile randomAccessFile) {
        if (this.d != null) {
            try {
                f(randomAccessFile);
                return;
            } catch (ZipException e) {
                throw e;
            } catch (Exception e2) {
                throw new ZipException(e2);
            }
        }
        throw new ZipException("local file header is null, cannot initialize input stream");
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, net.lingala.zip4j.crypto.AESDecrypter, net.lingala.zip4j.crypto.IDecrypter] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, net.lingala.zip4j.crypto.StandardDecrypter, net.lingala.zip4j.crypto.IDecrypter] */
    public final void f(RandomAccessFile randomAccessFile) {
        int i;
        byte[] bArr;
        LocalFileHeader localFileHeader = this.d;
        if (localFileHeader != null) {
            if (localFileHeader.m) {
                int i2 = localFileHeader.n;
                int i3 = 0;
                if (i2 == 0) {
                    FileHeader fileHeader = this.b;
                    try {
                        byte[] bArr2 = new byte[12];
                        randomAccessFile.seek(localFileHeader.l);
                        randomAccessFile.read(bArr2, 0, 12);
                        ?? obj = new Object();
                        if (fileHeader != null) {
                            ZipCryptoEngine zipCryptoEngine = new ZipCryptoEngine();
                            obj.f21985a = zipCryptoEngine;
                            byte[] bArr3 = fileHeader.h;
                            byte b = bArr3[3];
                            byte b2 = bArr3[3];
                            byte b3 = (byte) ((b2 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                            byte b4 = (byte) ((b2 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
                            byte b5 = (byte) ((b2 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
                            if (b3 <= 0 && b4 <= 0 && b5 <= 0) {
                                char[] cArr = fileHeader.t;
                                if (cArr != null && cArr.length > 0) {
                                    zipCryptoEngine.b(cArr);
                                    try {
                                        byte b6 = bArr2[0];
                                        while (i3 < 12) {
                                            zipCryptoEngine.c((byte) (zipCryptoEngine.a() ^ b6));
                                            i3++;
                                            if (i3 != 12) {
                                                b6 = bArr2[i3];
                                            }
                                        }
                                        this.e = obj;
                                        return;
                                    } catch (Exception e) {
                                        throw new ZipException(e);
                                    }
                                }
                                throw new ZipException("Wrong password!", 5);
                            }
                            throw new IllegalStateException("Invalid CRC in File Header");
                        }
                        throw new ZipException("one of more of the input parameters were null in StandardDecryptor");
                    } catch (IOException e2) {
                        throw new ZipException(e2);
                    } catch (Exception e3) {
                        throw new ZipException(e3);
                    }
                }
                if (i2 == 99) {
                    AESExtraDataRecord aESExtraDataRecord = localFileHeader.q;
                    if (aESExtraDataRecord == null) {
                        bArr = null;
                    } else {
                        try {
                            int i4 = aESExtraDataRecord.e;
                            if (i4 != 1) {
                                if (i4 != 2) {
                                    if (i4 == 3) {
                                        i = 16;
                                    } else {
                                        throw new ZipException("unable to determine salt length: invalid aes key strength");
                                    }
                                } else {
                                    i = 12;
                                }
                            } else {
                                i = 8;
                            }
                            bArr = new byte[i];
                            randomAccessFile.seek(localFileHeader.l);
                            randomAccessFile.read(bArr);
                        } catch (IOException e4) {
                            throw new ZipException(e4);
                        }
                    }
                    try {
                        byte[] bArr4 = new byte[2];
                        randomAccessFile.read(bArr4);
                        ?? obj2 = new Object();
                        obj2.j = 1;
                        obj2.m = 0;
                        obj2.i = null;
                        obj2.k = new byte[16];
                        obj2.l = new byte[16];
                        AESExtraDataRecord aESExtraDataRecord2 = localFileHeader.q;
                        if (aESExtraDataRecord2 != null) {
                            int i5 = aESExtraDataRecord2.e;
                            if (i5 != 1) {
                                if (i5 != 2) {
                                    if (i5 == 3) {
                                        obj2.f21979c = 32;
                                        obj2.d = 32;
                                        obj2.e = 16;
                                    } else {
                                        throw new ZipException("invalid aes key strength for file: " + localFileHeader.k);
                                    }
                                } else {
                                    obj2.f21979c = 24;
                                    obj2.d = 24;
                                    obj2.e = 12;
                                }
                            } else {
                                obj2.f21979c = 16;
                                obj2.d = 16;
                                obj2.e = 8;
                            }
                            char[] cArr2 = localFileHeader.o;
                            if (cArr2 != null && cArr2.length > 0) {
                                try {
                                    byte[] a2 = new PBKDF2Engine(new PBKDF2Parameters(bArr)).a(cArr2, obj2.f21979c + obj2.d + 2);
                                    int length = a2.length;
                                    int i6 = obj2.f21979c;
                                    int i7 = obj2.d;
                                    if (length == i6 + i7 + 2) {
                                        byte[] bArr5 = new byte[i6];
                                        obj2.f = bArr5;
                                        obj2.g = new byte[i7];
                                        obj2.h = new byte[2];
                                        System.arraycopy(a2, 0, bArr5, 0, i6);
                                        System.arraycopy(a2, obj2.f21979c, obj2.g, 0, obj2.d);
                                        System.arraycopy(a2, obj2.f21979c + obj2.d, obj2.h, 0, 2);
                                        byte[] bArr6 = obj2.h;
                                        if (bArr6 != null) {
                                            if (Arrays.equals(bArr4, bArr6)) {
                                                obj2.f21978a = new AESEngine(obj2.f);
                                                MacBasedPRF macBasedPRF = new MacBasedPRF();
                                                obj2.b = macBasedPRF;
                                                macBasedPRF.a(obj2.g);
                                                this.e = obj2;
                                                return;
                                            }
                                            throw new ZipException("Wrong Password for file: " + localFileHeader.k, 5);
                                        }
                                        throw new ZipException("invalid derived password verifier for AES");
                                    }
                                    throw new ZipException("invalid derived key");
                                } catch (Exception e5) {
                                    throw new ZipException(e5);
                                }
                            }
                            throw new ZipException("empty or null password provided for AES Decryptor");
                        }
                        throw new ZipException("invalid aes extra data record - in init method of AESDecryptor");
                    } catch (IOException e6) {
                        throw new ZipException(e6);
                    }
                }
                throw new ZipException("unsupported encryption method");
            }
            return;
        }
        throw new ZipException("local file header is null, cannot init decrypter");
    }

    public final RandomAccessFile g() {
        ZipModel zipModel = this.f22016a;
        String str = zipModel.l;
        int i = this.f22017c;
        if (i != zipModel.g.b) {
            if (i >= 9) {
                str = str.substring(0, str.lastIndexOf(".")) + ".z" + (this.f22017c + 1);
            } else {
                str = str.substring(0, str.lastIndexOf(".")) + ".z0" + (this.f22017c + 1);
            }
        }
        this.f22017c++;
        try {
            if (Zip4jUtil.a(str)) {
                return new RandomAccessFile(str, "r");
            }
            throw new IOException("zip split file does not exist: " + str);
        } catch (ZipException e) {
            throw new IOException(e.getMessage());
        }
    }
}
