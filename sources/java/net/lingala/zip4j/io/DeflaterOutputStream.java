package net.lingala.zip4j.io;

import android.support.v4.media.a;
import java.io.File;
import java.util.ArrayList;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import net.lingala.zip4j.core.HeaderWriter;
import net.lingala.zip4j.crypto.AESEncrpyter;
import net.lingala.zip4j.crypto.IEncrypter;
import net.lingala.zip4j.crypto.StandardEncrypter;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.CentralDirectory;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.util.Raw;

/* loaded from: classes4.dex */
public class DeflaterOutputStream extends CipherOutputStream {
    public byte[] q;
    public Deflater r;
    public boolean s;

    public final void f() {
        Deflater deflater = this.r;
        if (this.j.f22013c == 8) {
            if (!deflater.finished()) {
                deflater.finish();
                while (!deflater.finished()) {
                    i();
                }
            }
            this.s = false;
        }
        CRC32 crc32 = this.m;
        SplitOutputStream splitOutputStream = this.f21991c;
        int i = this.p;
        if (i != 0) {
            d(this.o, 0, i);
            this.p = 0;
        }
        ZipParameters zipParameters = this.j;
        if (zipParameters.g && zipParameters.h == 99) {
            if (this.i instanceof AESEncrpyter) {
                throw null;
            }
            throw new ZipException("invalid encrypter for AES encrypted file");
        }
        FileHeader fileHeader = this.g;
        long j = this.n;
        fileHeader.i = j;
        this.h.g = j;
        this.j.getClass();
        long value = crc32.getValue();
        FileHeader fileHeader2 = this.g;
        if (fileHeader2.r && fileHeader2.s == 99) {
            value = 0;
        }
        ZipParameters zipParameters2 = this.j;
        if (zipParameters2.g && zipParameters2.h == 99) {
            fileHeader2.g = 0L;
            this.h.f = 0L;
        } else {
            fileHeader2.g = value;
            this.h.f = value;
        }
        this.k.f22012c.add(this.h);
        this.k.f.f21997a.add(this.g);
        long j2 = this.l;
        LocalFileHeader localFileHeader = this.h;
        if (localFileHeader != null && splitOutputStream != null) {
            ArrayList arrayList = new ArrayList();
            byte[] bArr = new byte[4];
            Raw.f(bArr, 134695760);
            HeaderWriter.b(arrayList, bArr);
            Raw.f(bArr, (int) localFileHeader.f);
            HeaderWriter.b(arrayList, bArr);
            long j3 = localFileHeader.g;
            long j4 = 2147483647L;
            if (j3 >= 2147483647L) {
                j3 = 2147483647L;
            }
            Raw.f(bArr, (int) j3);
            HeaderWriter.b(arrayList, bArr);
            long j5 = localFileHeader.h;
            if (j5 < 2147483647L) {
                j4 = j5;
            }
            Raw.f(bArr, (int) j4);
            HeaderWriter.b(arrayList, bArr);
            splitOutputStream.write(HeaderWriter.a(arrayList));
            this.l = j2 + r4.length;
            crc32.reset();
            this.n = 0L;
            this.i = null;
            return;
        }
        throw new ZipException("input parameters is null, cannot write extended local header");
    }

    public final void i() {
        Deflater deflater = this.r;
        byte[] bArr = this.q;
        int deflate = deflater.deflate(bArr, 0, bArr.length);
        if (deflate > 0) {
            if (deflater.finished()) {
                if (deflate != 4) {
                    if (deflate < 4) {
                        int i = 4 - deflate;
                        if (i > 0) {
                            long j = i;
                            long j2 = this.n;
                            if (j <= j2) {
                                this.n = j2 - j;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    deflate -= 4;
                } else {
                    return;
                }
            }
            if (!this.s) {
                super.write(bArr, 2, deflate - 2);
                this.s = true;
            } else {
                super.write(bArr, 0, deflate);
            }
        }
    }

    public final void j() {
        ZipModel zipModel = this.k;
        zipModel.g.e = this.l;
        HeaderWriter.d(zipModel, this.f21991c);
    }

    public final void k(File file, ZipParameters zipParameters) {
        CentralDirectory centralDirectory;
        ArrayList arrayList;
        Deflater deflater = this.r;
        SplitOutputStream splitOutputStream = this.f21991c;
        zipParameters.getClass();
        if (file != null) {
            if (file.exists()) {
                try {
                    try {
                        this.f = file;
                        this.j = (ZipParameters) zipParameters.clone();
                        if (this.f.isDirectory()) {
                            ZipParameters zipParameters2 = this.j;
                            zipParameters2.g = false;
                            zipParameters2.h = -1;
                            zipParameters2.f22013c = 0;
                        }
                        a();
                        b();
                        ZipModel zipModel = this.k;
                        if (zipModel.j && ((centralDirectory = zipModel.f) == null || (arrayList = centralDirectory.f21997a) == null || arrayList.size() == 0)) {
                            byte[] bArr = new byte[4];
                            Raw.f(bArr, 134695760);
                            splitOutputStream.getClass();
                            splitOutputStream.write(bArr, 0, 4);
                            this.l += 4;
                        }
                        if (a.A(splitOutputStream)) {
                            if (this.l == 4) {
                                this.g.o = 4L;
                            } else {
                                this.g.o = splitOutputStream.f21993c.getFilePointer();
                            }
                        } else {
                            long j = this.l;
                            if (j == 4) {
                                this.g.o = 4L;
                            } else {
                                this.g.o = j;
                            }
                        }
                        this.l += HeaderWriter.h(this.k, this.h, splitOutputStream);
                        if (this.j.g) {
                            e();
                            IEncrypter iEncrypter = this.i;
                            if (iEncrypter != null) {
                                int i = zipParameters.h;
                                if (i == 0) {
                                    splitOutputStream.write(((StandardEncrypter) iEncrypter).b);
                                    this.l += r9.length;
                                    this.n += r9.length;
                                } else if (i == 99) {
                                    splitOutputStream.write((byte[]) null);
                                    splitOutputStream.write((byte[]) null);
                                    throw null;
                                }
                            }
                        }
                        this.m.reset();
                        if (zipParameters.f22013c == 8) {
                            deflater.reset();
                            int i2 = zipParameters.f;
                            if ((i2 >= 0 && i2 <= 9) || i2 == -1) {
                                deflater.setLevel(i2);
                                return;
                            }
                            throw new ZipException("invalid compression level for deflater. compression level should be in the range of 0-9");
                        }
                        return;
                    } catch (Exception e) {
                        throw new ZipException(e);
                    }
                } catch (CloneNotSupportedException e2) {
                    throw new ZipException(e2);
                } catch (ZipException e3) {
                    throw e3;
                }
            }
            throw new ZipException("input file does not exist");
        }
        throw new ZipException("input file is null");
    }

    @Override // net.lingala.zip4j.io.CipherOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.CipherOutputStream, net.lingala.zip4j.io.BaseOutputStream, java.io.OutputStream
    public void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // net.lingala.zip4j.io.CipherOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        Deflater deflater = this.r;
        if (this.j.f22013c != 8) {
            super.write(bArr, i, i2);
            return;
        }
        deflater.setInput(bArr, i, i2);
        while (!deflater.needsInput()) {
            i();
        }
    }
}
