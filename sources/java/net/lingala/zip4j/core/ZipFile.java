package net.lingala.zip4j.core;

import android.support.v4.media.a;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.zip.CRC32;
import net.lingala.zip4j.crypto.AESDecrypter;
import net.lingala.zip4j.crypto.IDecrypter;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.InflaterInputStream;
import net.lingala.zip4j.io.PartInputStream;
import net.lingala.zip4j.io.ZipInputStream;
import net.lingala.zip4j.model.AESExtraDataRecord;
import net.lingala.zip4j.model.CentralDirectory;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.progress.ProgressMonitor;
import net.lingala.zip4j.util.Zip4jUtil;

/* loaded from: classes4.dex */
public class ZipFile {

    /* renamed from: a, reason: collision with root package name */
    public final String f21976a;
    public final int b = 2;

    /* renamed from: c, reason: collision with root package name */
    public ZipModel f21977c;
    public boolean d;
    public final ProgressMonitor e;
    public String f;

    /* JADX WARN: Type inference failed for: r3v3, types: [net.lingala.zip4j.progress.ProgressMonitor, java.lang.Object] */
    public ZipFile(String str) {
        this.f21976a = new File(str).getPath();
        ?? obj = new Object();
        obj.f22014a = 0;
        obj.f22015c = null;
        obj.b = 0L;
        this.e = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r10v12, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [net.lingala.zip4j.io.CipherOutputStream] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v5, types: [net.lingala.zip4j.io.ZipOutputStream, net.lingala.zip4j.io.CipherOutputStream, net.lingala.zip4j.io.DeflaterOutputStream] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object, net.lingala.zip4j.zip.ZipEngine] */
    /* JADX WARN: Type inference failed for: r6v33, types: [java.lang.Object, net.lingala.zip4j.model.EndCentralDirRecord] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.ArrayList r21, net.lingala.zip4j.model.ZipParameters r22) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.core.ZipFile.a(java.util.ArrayList, net.lingala.zip4j.model.ZipParameters):void");
    }

    public final void b() {
        if (this.f21977c == null) {
            String str = this.f21976a;
            if (Zip4jUtil.a(str)) {
                g();
                return;
            }
            ZipModel zipModel = new ZipModel();
            this.f21977c = zipModel;
            zipModel.l = str;
            zipModel.n = this.f;
        }
    }

    public final FileHeader c(String str) {
        if (Zip4jUtil.l(str)) {
            g();
            ZipModel zipModel = this.f21977c;
            if (zipModel != null && zipModel.f != null) {
                return Zip4jUtil.g(zipModel, str);
            }
            return null;
        }
        throw new ZipException("input file name is emtpy or null, cannot get FileHeader");
    }

    public final ArrayList d() {
        CentralDirectory centralDirectory;
        g();
        ZipModel zipModel = this.f21977c;
        if (zipModel != null && (centralDirectory = zipModel.f) != null) {
            return centralDirectory.f21997a;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [net.lingala.zip4j.unzip.UnzipEngine, java.lang.Object] */
    public final ZipInputStream e(FileHeader fileHeader) {
        long j;
        if (fileHeader != null) {
            b();
            ZipModel zipModel = this.f21977c;
            if (zipModel != null) {
                ?? obj = new Object();
                obj.f22017c = 0;
                obj.f22016a = zipModel;
                obj.b = fileHeader;
                obj.f = new CRC32();
                RandomAccessFile randomAccessFile = null;
                try {
                    RandomAccessFile d = obj.d();
                    if (obj.b()) {
                        obj.e(d);
                        LocalFileHeader localFileHeader = obj.d;
                        long j2 = localFileHeader.g;
                        long j3 = localFileHeader.l;
                        if (localFileHeader.m) {
                            int i = localFileHeader.n;
                            if (i == 99) {
                                IDecrypter iDecrypter = obj.e;
                                if (iDecrypter instanceof AESDecrypter) {
                                    j2 -= ((AESDecrypter) iDecrypter).e + 12;
                                    j = ((AESDecrypter) iDecrypter).e + 2;
                                } else {
                                    throw new ZipException("invalid decryptor when trying to calculate compressed size for AES encrypted file: " + fileHeader.p);
                                }
                            } else if (i == 0) {
                                j = 12;
                                j2 -= 12;
                            }
                            j3 += j;
                        }
                        int i2 = fileHeader.e;
                        if (fileHeader.s == 99) {
                            AESExtraDataRecord aESExtraDataRecord = fileHeader.v;
                            if (aESExtraDataRecord != null) {
                                i2 = aESExtraDataRecord.f;
                            } else {
                                throw new ZipException("AESExtraDataRecord does not exist for AES encrypted file: " + fileHeader.p);
                            }
                        }
                        d.seek(j3);
                        if (i2 != 0) {
                            if (i2 == 8) {
                                return new ZipInputStream(new InflaterInputStream(d, j2, obj));
                            }
                            throw new ZipException("compression type not supported");
                        }
                        return new ZipInputStream(new PartInputStream(d, j2, obj));
                    }
                    throw new ZipException("local header and file header do not match");
                } catch (ZipException e) {
                    if (0 != 0) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw e;
                } catch (Exception e2) {
                    if (0 != 0) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw new ZipException(e2);
                }
            }
            throw new ZipException("zip model is null, cannot get inputstream");
        }
        throw new ZipException("FileHeader is null, cannot get InputStream");
    }

    public final boolean f() {
        ArrayList arrayList;
        if (this.f21977c == null) {
            g();
            if (this.f21977c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        CentralDirectory centralDirectory = this.f21977c.f;
        if (centralDirectory != null && (arrayList = centralDirectory.f21997a) != null) {
            int i = 0;
            while (true) {
                if (i < arrayList.size()) {
                    FileHeader fileHeader = (FileHeader) arrayList.get(i);
                    if (fileHeader != null && fileHeader.r) {
                        this.d = true;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
            return this.d;
        }
        throw new ZipException("invalid zip file");
    }

    public final void g() {
        RandomAccessFile randomAccessFile;
        String str = this.f21976a;
        if (Zip4jUtil.a(str)) {
            if (Zip4jUtil.b(str)) {
                if (this.b == 2) {
                    RandomAccessFile randomAccessFile2 = null;
                    try {
                        try {
                            randomAccessFile = new RandomAccessFile(new File(str), "r");
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (FileNotFoundException e) {
                        e = e;
                    }
                    try {
                        if (this.f21977c == null) {
                            ZipModel c2 = new HeaderReader(randomAccessFile).c(this.f);
                            this.f21977c = c2;
                            if (c2 != null) {
                                c2.l = str;
                            }
                        }
                        try {
                            randomAccessFile.close();
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    } catch (FileNotFoundException e2) {
                        e = e2;
                        throw new ZipException(e);
                    } catch (Throwable th2) {
                        th = th2;
                        randomAccessFile2 = randomAccessFile;
                        if (randomAccessFile2 != null) {
                            try {
                                randomAccessFile2.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
                throw new ZipException("Invalid mode");
            }
            throw new ZipException("no read access for the input zip file");
        }
        throw new ZipException("zip file does not exist");
    }

    public final void h(String str) {
        if (Zip4jUtil.l(str)) {
            if (Zip4jUtil.l(str)) {
                try {
                    new String("a".getBytes(), str);
                    this.f = str;
                    return;
                } catch (UnsupportedEncodingException unused) {
                    throw new ZipException(a.C("unsupported charset: ", str));
                } catch (Exception e) {
                    throw new ZipException(e);
                }
            }
            throw new ZipException("charset is null or empty, cannot check if it is supported");
        }
        throw new ZipException("null or empty charset name");
    }

    public final void i(String str) {
        if (!TextUtils.isEmpty(str)) {
            char[] charArray = str.toCharArray();
            if (this.f21977c == null) {
                g();
                if (this.f21977c == null) {
                    throw new ZipException("Zip Model is null");
                }
            }
            CentralDirectory centralDirectory = this.f21977c.f;
            if (centralDirectory != null && centralDirectory.f21997a != null) {
                for (int i = 0; i < this.f21977c.f.f21997a.size(); i++) {
                    if (this.f21977c.f.f21997a.get(i) != null && ((FileHeader) this.f21977c.f.f21997a.get(i)).r) {
                        ((FileHeader) this.f21977c.f.f21997a.get(i)).t = charArray;
                    }
                }
                return;
            }
            throw new ZipException("invalid zip file");
        }
    }
}
