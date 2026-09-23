package net.lingala.zip4j.core;

import com.mycompany.app.main.MainUtil;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import kotlin.UByte;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.AESExtraDataRecord;
import net.lingala.zip4j.model.ExtraDataRecord;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.model.Zip64ExtendedInfo;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.util.Raw;
import net.lingala.zip4j.util.Zip4jUtil;

/* loaded from: classes4.dex */
public class HeaderReader {

    /* renamed from: a, reason: collision with root package name */
    public final RandomAccessFile f21975a;
    public ZipModel b;

    public HeaderReader(RandomAccessFile randomAccessFile) {
        this.f21975a = randomAccessFile;
    }

    public static byte[] a(byte[] bArr) {
        if (bArr.length == 4) {
            return new byte[]{bArr[0], bArr[1], bArr[2], bArr[3], 0, 0, 0, 0};
        }
        throw new ZipException("invalid byte length, cannot expand to 8 bytes");
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [net.lingala.zip4j.model.AESExtraDataRecord, java.lang.Object] */
    public static AESExtraDataRecord b(ArrayList arrayList) {
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                ExtraDataRecord extraDataRecord = (ExtraDataRecord) arrayList.get(i);
                if (extraDataRecord != null && extraDataRecord.f22000a == 39169) {
                    byte[] bArr = extraDataRecord.f22001c;
                    if (bArr != null) {
                        ?? obj = new Object();
                        obj.f21995a = -1L;
                        obj.b = -1;
                        obj.f21996c = -1;
                        obj.d = null;
                        obj.e = -1;
                        obj.f = -1;
                        obj.f21995a = 39169L;
                        obj.b = extraDataRecord.b;
                        obj.f21996c = Raw.e(bArr, 0);
                        byte[] bArr2 = new byte[2];
                        System.arraycopy(bArr, 2, bArr2, 0, 2);
                        obj.d = new String(bArr2);
                        obj.e = bArr[4] & UByte.MAX_VALUE;
                        obj.f = Raw.e(bArr, 5);
                        return obj;
                    }
                    throw new ZipException("corrput AES extra data records");
                }
            }
            return null;
        }
        return null;
    }

    public static void d(FileHeader fileHeader) {
        Zip64ExtendedInfo h;
        ArrayList arrayList = fileHeader.w;
        if (arrayList != null && arrayList.size() > 0 && (h = h(fileHeader.w, fileHeader.j, fileHeader.i, fileHeader.o, fileHeader.m)) != null) {
            fileHeader.u = h;
            long j = h.b;
            if (j != -1) {
                fileHeader.j = j;
            }
            long j2 = h.f22010a;
            if (j2 != -1) {
                fileHeader.i = j2;
            }
            long j3 = h.f22011c;
            if (j3 != -1) {
                fileHeader.o = j3;
            }
            int i = h.d;
            if (i != -1) {
                fileHeader.m = i;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [net.lingala.zip4j.exception.ZipException, java.lang.Throwable, java.lang.Exception] */
    public static void f(RandomAccessFile randomAccessFile, byte[] bArr) {
        try {
            if (randomAccessFile.read(bArr, 0, bArr.length) != -1) {
            } else {
                throw new ZipException("unexpected end of file when reading short buff");
            }
        } catch (IOException e) {
            ?? exc = new Exception("IOException when reading short buff", e);
            exc.f21990c = -1;
            throw exc;
        }
    }

    /* JADX WARN: Type inference failed for: r14v2, types: [net.lingala.zip4j.model.Zip64ExtendedInfo, java.lang.Object] */
    public static Zip64ExtendedInfo h(ArrayList arrayList, long j, long j2, long j3, int i) {
        int i2;
        boolean z;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ExtraDataRecord extraDataRecord = (ExtraDataRecord) arrayList.get(i3);
            if (extraDataRecord != null && extraDataRecord.f22000a == 1) {
                ?? obj = new Object();
                obj.f22010a = -1L;
                obj.b = -1L;
                obj.f22011c = -1L;
                obj.d = -1;
                byte[] bArr = extraDataRecord.f22001c;
                int i4 = extraDataRecord.b;
                if (i4 > 0) {
                    byte[] bArr2 = new byte[8];
                    byte[] bArr3 = new byte[4];
                    boolean z2 = true;
                    if ((j & 65535) == 65535 && i4 > 0) {
                        System.arraycopy(bArr, 0, bArr2, 0, 8);
                        obj.b = Raw.d(bArr2);
                        i2 = 8;
                        z = true;
                    } else {
                        i2 = 0;
                        z = false;
                    }
                    if ((j2 & 65535) == 65535 && i2 < extraDataRecord.b) {
                        System.arraycopy(bArr, i2, bArr2, 0, 8);
                        obj.f22010a = Raw.d(bArr2);
                        i2 += 8;
                        z = true;
                    }
                    if ((j3 & 65535) == 65535 && i2 < extraDataRecord.b) {
                        System.arraycopy(bArr, i2, bArr2, 0, 8);
                        obj.f22011c = Raw.d(bArr2);
                        i2 += 8;
                        z = true;
                    }
                    if ((i & 65535) == 65535 && i2 < extraDataRecord.b) {
                        System.arraycopy(bArr, i2, bArr3, 0, 4);
                        obj.d = Raw.b(bArr3);
                    } else {
                        z2 = z;
                    }
                    if (z2) {
                        return obj;
                    }
                    return null;
                }
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0371, code lost:
    
        r7 = new byte[r7];
        f(r2, r7);
        new java.lang.String(r7);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [net.lingala.zip4j.exception.ZipException, java.lang.Throwable, java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r4v17, types: [net.lingala.zip4j.model.Zip64EndCentralDirRecord, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.Object, net.lingala.zip4j.model.Zip64EndCentralDirLocator] */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Object, net.lingala.zip4j.model.CentralDirectory] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, net.lingala.zip4j.model.EndCentralDirRecord] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.lingala.zip4j.model.ZipModel c(java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 1030
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.core.HeaderReader.c(java.lang.String):net.lingala.zip4j.model.ZipModel");
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, net.lingala.zip4j.model.ExtraDataRecord] */
    public final ArrayList e(int i) {
        if (i > 0) {
            try {
                byte[] bArr = new byte[i];
                this.f21975a.read(bArr);
                ArrayList arrayList = new ArrayList();
                int i2 = 0;
                while (i2 < i) {
                    ?? obj = new Object();
                    obj.f22000a = Raw.e(bArr, i2);
                    int i3 = i2 + 2;
                    int e = Raw.e(bArr, i3);
                    if (e + 2 > i) {
                        e = (short) (((short) (((short) (bArr[i3] & UByte.MAX_VALUE)) << 8)) | (bArr[i2 + 3] & UByte.MAX_VALUE));
                        if (e + 2 > i) {
                            break;
                        }
                    }
                    obj.b = e;
                    int i4 = i2 + 4;
                    if (e > 0) {
                        byte[] bArr2 = new byte[e];
                        System.arraycopy(bArr, i4, bArr2, 0, e);
                        obj.f22001c = bArr2;
                    }
                    i2 = i4 + e;
                    arrayList.add(obj);
                }
                if (arrayList.size() > 0) {
                    return arrayList;
                }
                return null;
            } catch (IOException e2) {
                throw new ZipException(e2);
            }
        }
        return null;
    }

    public final LocalFileHeader g(FileHeader fileHeader) {
        boolean z;
        AESExtraDataRecord b;
        Zip64ExtendedInfo h;
        RandomAccessFile randomAccessFile = this.f21975a;
        if (fileHeader != null) {
            long j = fileHeader.o;
            Zip64ExtendedInfo zip64ExtendedInfo = fileHeader.u;
            if (zip64ExtendedInfo != null) {
                int i = (zip64ExtendedInfo.f22011c > 0L ? 1 : (zip64ExtendedInfo.f22011c == 0L ? 0 : -1));
            }
            if (j >= 0) {
                try {
                    randomAccessFile.seek(j);
                    LocalFileHeader localFileHeader = new LocalFileHeader();
                    byte[] bArr = new byte[2];
                    byte[] bArr2 = new byte[4];
                    f(randomAccessFile, bArr2);
                    int b2 = Raw.b(bArr2);
                    if (b2 == 67324752) {
                        localFileHeader.f22004a = b2;
                        f(randomAccessFile, bArr);
                        localFileHeader.b = Raw.e(bArr, 0);
                        f(randomAccessFile, bArr);
                        if ((Raw.e(bArr, 0) & 2048) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        localFileHeader.r = z;
                        byte b3 = bArr[0];
                        if ((b3 & 1) != 0) {
                            localFileHeader.m = true;
                        }
                        localFileHeader.f22005c = bArr;
                        String binaryString = Integer.toBinaryString(b3);
                        if (binaryString.length() >= 4) {
                            binaryString.charAt(3);
                        }
                        f(randomAccessFile, bArr);
                        localFileHeader.d = Raw.e(bArr, 0);
                        f(randomAccessFile, bArr2);
                        localFileHeader.e = Raw.b(bArr2);
                        f(randomAccessFile, bArr2);
                        localFileHeader.f = Raw.b(bArr2);
                        f(randomAccessFile, bArr2);
                        localFileHeader.g = Raw.d(a(bArr2));
                        f(randomAccessFile, bArr2);
                        localFileHeader.h = Raw.d(a(bArr2));
                        f(randomAccessFile, bArr);
                        int e = Raw.e(bArr, 0);
                        localFileHeader.i = e;
                        f(randomAccessFile, bArr);
                        localFileHeader.j = Raw.e(bArr, 0);
                        int i2 = 30;
                        if (e > 0) {
                            byte[] bArr3 = new byte[e];
                            f(randomAccessFile, bArr3);
                            String d = Zip4jUtil.d(bArr3, localFileHeader.r);
                            if (d.indexOf(":" + MainUtil.f1()) >= 0) {
                                d = d.substring(d.indexOf(":" + MainUtil.f1()) + 2);
                            }
                            localFileHeader.k = d;
                            i2 = 30 + e;
                        } else {
                            localFileHeader.k = null;
                        }
                        int i3 = localFileHeader.j;
                        if (i3 > 0) {
                            localFileHeader.p = e(i3);
                        }
                        localFileHeader.l = j + i2 + r10;
                        localFileHeader.o = fileHeader.t;
                        ArrayList arrayList = localFileHeader.p;
                        if (arrayList != null && arrayList.size() > 0 && (h = h(localFileHeader.p, localFileHeader.h, localFileHeader.g, -1L, -1)) != null) {
                            long j2 = h.b;
                            if (j2 != -1) {
                                localFileHeader.h = j2;
                            }
                            long j3 = h.f22010a;
                            if (j3 != -1) {
                                localFileHeader.g = j3;
                            }
                        }
                        ArrayList arrayList2 = localFileHeader.p;
                        if (arrayList2 != null && arrayList2.size() > 0 && (b = b(localFileHeader.p)) != null) {
                            localFileHeader.q = b;
                            localFileHeader.n = 99;
                        }
                        if (localFileHeader.m && localFileHeader.n != 99) {
                            if ((b3 & 64) == 64) {
                                localFileHeader.n = 1;
                            } else {
                                localFileHeader.n = 0;
                            }
                        }
                        if (localFileHeader.f <= 0) {
                            localFileHeader.f = fileHeader.g & 4294967295L;
                        }
                        if (localFileHeader.g <= 0) {
                            localFileHeader.g = fileHeader.i;
                        }
                        if (localFileHeader.h <= 0) {
                            localFileHeader.h = fileHeader.j;
                        }
                        return localFileHeader;
                    }
                    throw new ZipException("invalid local header signature for file: " + fileHeader.p);
                } catch (IOException e2) {
                    throw new ZipException(e2);
                }
            }
            throw new ZipException("invalid local header offset");
        }
        throw new ZipException("invalid read parameters for local header");
    }
}
