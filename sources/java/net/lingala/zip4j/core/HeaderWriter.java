package net.lingala.zip4j.core;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.SplitOutputStream;
import net.lingala.zip4j.model.AESExtraDataRecord;
import net.lingala.zip4j.model.CentralDirectory;
import net.lingala.zip4j.model.EndCentralDirRecord;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.model.Zip64EndCentralDirLocator;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.util.Raw;
import net.lingala.zip4j.util.Zip4jUtil;

/* loaded from: classes4.dex */
public class HeaderWriter {
    public static byte[] a(ArrayList arrayList) {
        if (arrayList.size() <= 0) {
            return null;
        }
        byte[] bArr = new byte[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            bArr[i] = Byte.parseByte((String) arrayList.get(i));
        }
        return bArr;
    }

    public static void b(ArrayList arrayList, byte[] bArr) {
        if (bArr != null) {
            for (byte b : bArr) {
                arrayList.add(Byte.toString(b));
            }
            return;
        }
        throw new ZipException("one of the input parameters is null, cannot copy byte array to array list");
    }

    public static int c(int i, ArrayList arrayList) {
        if (arrayList != null) {
            int i2 = 0;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                if (((FileHeader) arrayList.get(i3)).m == i) {
                    i2++;
                }
            }
            return i2;
        }
        throw new ZipException("file headers are null, cannot calculate number of entries on this disk");
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, net.lingala.zip4j.model.Zip64EndCentralDirLocator] */
    /* JADX WARN: Type inference failed for: r0v8, types: [net.lingala.zip4j.model.Zip64EndCentralDirRecord, java.lang.Object] */
    public static void d(ZipModel zipModel, OutputStream outputStream) {
        ZipModel zipModel2;
        OutputStream outputStream2;
        if (zipModel != null && outputStream != null) {
            try {
                e(zipModel, outputStream);
                long j = zipModel.g.e;
                ArrayList arrayList = new ArrayList();
                int f = f(zipModel, outputStream, arrayList);
                if (zipModel.m) {
                    if (zipModel.i == null) {
                        zipModel.i = new Object();
                    }
                    if (zipModel.h == null) {
                        zipModel.h = new Object();
                    }
                    Zip64EndCentralDirLocator zip64EndCentralDirLocator = zipModel.h;
                    zip64EndCentralDirLocator.b = f + j;
                    if (outputStream instanceof SplitOutputStream) {
                        zip64EndCentralDirLocator.f22006a = ((SplitOutputStream) outputStream).i;
                        zip64EndCentralDirLocator.f22007c = ((SplitOutputStream) outputStream).i + 1;
                    } else {
                        zip64EndCentralDirLocator.f22006a = 0;
                        zip64EndCentralDirLocator.f22007c = 1;
                    }
                    zipModel2 = zipModel;
                    outputStream2 = outputStream;
                    j(zipModel2, outputStream2, f, j, arrayList);
                    i(zipModel2, outputStream2, arrayList);
                } else {
                    zipModel2 = zipModel;
                    outputStream2 = outputStream;
                }
                g(zipModel2, outputStream2, f, j, arrayList);
                k(zipModel2, outputStream2, a(arrayList));
                return;
            } catch (ZipException e) {
                throw e;
            } catch (Exception e2) {
                throw new ZipException(e2);
            }
        }
        throw new ZipException("input parameters is null, cannot finalize zip file");
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, net.lingala.zip4j.model.Zip64EndCentralDirLocator] */
    /* JADX WARN: Type inference failed for: r0v6, types: [net.lingala.zip4j.model.Zip64EndCentralDirRecord, java.lang.Object] */
    public static void e(ZipModel zipModel, OutputStream outputStream) {
        int i;
        try {
            if (outputStream instanceof SplitOutputStream) {
                zipModel.g.e = ((SplitOutputStream) outputStream).f21993c.getFilePointer();
                i = ((SplitOutputStream) outputStream).i;
            } else {
                i = 0;
            }
            if (zipModel.m) {
                if (zipModel.i == null) {
                    zipModel.i = new Object();
                }
                if (zipModel.h == null) {
                    zipModel.h = new Object();
                }
                Zip64EndCentralDirLocator zip64EndCentralDirLocator = zipModel.h;
                zip64EndCentralDirLocator.f22006a = i;
                zip64EndCentralDirLocator.f22007c = i + 1;
            }
            EndCentralDirRecord endCentralDirRecord = zipModel.g;
            endCentralDirRecord.b = i;
            endCentralDirRecord.f21999c = i;
        } catch (IOException e) {
            throw new ZipException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ef, code lost:
    
        r8 = 20;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fb A[Catch: Exception -> 0x01e4, TryCatch #0 {Exception -> 0x01e4, blocks: (B:17:0x0033, B:19:0x008d, B:21:0x009a, B:22:0x00bd, B:24:0x00d5, B:29:0x00f7, B:31:0x00fb, B:32:0x00fd, B:34:0x0117, B:35:0x011e, B:37:0x012b, B:38:0x0137, B:41:0x0195, B:43:0x0199, B:45:0x01d5, B:47:0x0157, B:51:0x0168, B:52:0x016a, B:54:0x0175, B:56:0x018b, B:59:0x0139, B:61:0x014a, B:63:0x01dc, B:64:0x01e3, B:67:0x011b, B:71:0x00f3, B:73:0x00de, B:75:0x00b0), top: B:16:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0117 A[Catch: Exception -> 0x01e4, TryCatch #0 {Exception -> 0x01e4, blocks: (B:17:0x0033, B:19:0x008d, B:21:0x009a, B:22:0x00bd, B:24:0x00d5, B:29:0x00f7, B:31:0x00fb, B:32:0x00fd, B:34:0x0117, B:35:0x011e, B:37:0x012b, B:38:0x0137, B:41:0x0195, B:43:0x0199, B:45:0x01d5, B:47:0x0157, B:51:0x0168, B:52:0x016a, B:54:0x0175, B:56:0x018b, B:59:0x0139, B:61:0x014a, B:63:0x01dc, B:64:0x01e3, B:67:0x011b, B:71:0x00f3, B:73:0x00de, B:75:0x00b0), top: B:16:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x012b A[Catch: Exception -> 0x01e4, TryCatch #0 {Exception -> 0x01e4, blocks: (B:17:0x0033, B:19:0x008d, B:21:0x009a, B:22:0x00bd, B:24:0x00d5, B:29:0x00f7, B:31:0x00fb, B:32:0x00fd, B:34:0x0117, B:35:0x011e, B:37:0x012b, B:38:0x0137, B:41:0x0195, B:43:0x0199, B:45:0x01d5, B:47:0x0157, B:51:0x0168, B:52:0x016a, B:54:0x0175, B:56:0x018b, B:59:0x0139, B:61:0x014a, B:63:0x01dc, B:64:0x01e3, B:67:0x011b, B:71:0x00f3, B:73:0x00de, B:75:0x00b0), top: B:16:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0199 A[Catch: Exception -> 0x01e4, TryCatch #0 {Exception -> 0x01e4, blocks: (B:17:0x0033, B:19:0x008d, B:21:0x009a, B:22:0x00bd, B:24:0x00d5, B:29:0x00f7, B:31:0x00fb, B:32:0x00fd, B:34:0x0117, B:35:0x011e, B:37:0x012b, B:38:0x0137, B:41:0x0195, B:43:0x0199, B:45:0x01d5, B:47:0x0157, B:51:0x0168, B:52:0x016a, B:54:0x0175, B:56:0x018b, B:59:0x0139, B:61:0x014a, B:63:0x01dc, B:64:0x01e3, B:67:0x011b, B:71:0x00f3, B:73:0x00de, B:75:0x00b0), top: B:16:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0168 A[Catch: Exception -> 0x01e4, TryCatch #0 {Exception -> 0x01e4, blocks: (B:17:0x0033, B:19:0x008d, B:21:0x009a, B:22:0x00bd, B:24:0x00d5, B:29:0x00f7, B:31:0x00fb, B:32:0x00fd, B:34:0x0117, B:35:0x011e, B:37:0x012b, B:38:0x0137, B:41:0x0195, B:43:0x0199, B:45:0x01d5, B:47:0x0157, B:51:0x0168, B:52:0x016a, B:54:0x0175, B:56:0x018b, B:59:0x0139, B:61:0x014a, B:63:0x01dc, B:64:0x01e3, B:67:0x011b, B:71:0x00f3, B:73:0x00de, B:75:0x00b0), top: B:16:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0175 A[Catch: Exception -> 0x01e4, TryCatch #0 {Exception -> 0x01e4, blocks: (B:17:0x0033, B:19:0x008d, B:21:0x009a, B:22:0x00bd, B:24:0x00d5, B:29:0x00f7, B:31:0x00fb, B:32:0x00fd, B:34:0x0117, B:35:0x011e, B:37:0x012b, B:38:0x0137, B:41:0x0195, B:43:0x0199, B:45:0x01d5, B:47:0x0157, B:51:0x0168, B:52:0x016a, B:54:0x0175, B:56:0x018b, B:59:0x0139, B:61:0x014a, B:63:0x01dc, B:64:0x01e3, B:67:0x011b, B:71:0x00f3, B:73:0x00de, B:75:0x00b0), top: B:16:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018b A[Catch: Exception -> 0x01e4, TryCatch #0 {Exception -> 0x01e4, blocks: (B:17:0x0033, B:19:0x008d, B:21:0x009a, B:22:0x00bd, B:24:0x00d5, B:29:0x00f7, B:31:0x00fb, B:32:0x00fd, B:34:0x0117, B:35:0x011e, B:37:0x012b, B:38:0x0137, B:41:0x0195, B:43:0x0199, B:45:0x01d5, B:47:0x0157, B:51:0x0168, B:52:0x016a, B:54:0x0175, B:56:0x018b, B:59:0x0139, B:61:0x014a, B:63:0x01dc, B:64:0x01e3, B:67:0x011b, B:71:0x00f3, B:73:0x00de, B:75:0x00b0), top: B:16:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0139 A[Catch: Exception -> 0x01e4, TryCatch #0 {Exception -> 0x01e4, blocks: (B:17:0x0033, B:19:0x008d, B:21:0x009a, B:22:0x00bd, B:24:0x00d5, B:29:0x00f7, B:31:0x00fb, B:32:0x00fd, B:34:0x0117, B:35:0x011e, B:37:0x012b, B:38:0x0137, B:41:0x0195, B:43:0x0199, B:45:0x01d5, B:47:0x0157, B:51:0x0168, B:52:0x016a, B:54:0x0175, B:56:0x018b, B:59:0x0139, B:61:0x014a, B:63:0x01dc, B:64:0x01e3, B:67:0x011b, B:71:0x00f3, B:73:0x00de, B:75:0x00b0), top: B:16:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011b A[Catch: Exception -> 0x01e4, TryCatch #0 {Exception -> 0x01e4, blocks: (B:17:0x0033, B:19:0x008d, B:21:0x009a, B:22:0x00bd, B:24:0x00d5, B:29:0x00f7, B:31:0x00fb, B:32:0x00fd, B:34:0x0117, B:35:0x011e, B:37:0x012b, B:38:0x0137, B:41:0x0195, B:43:0x0199, B:45:0x01d5, B:47:0x0157, B:51:0x0168, B:52:0x016a, B:54:0x0175, B:56:0x018b, B:59:0x0139, B:61:0x014a, B:63:0x01dc, B:64:0x01e3, B:67:0x011b, B:71:0x00f3, B:73:0x00de, B:75:0x00b0), top: B:16:0x0033 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int f(net.lingala.zip4j.model.ZipModel r21, java.io.OutputStream r22, java.util.ArrayList r23) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.core.HeaderWriter.f(net.lingala.zip4j.model.ZipModel, java.io.OutputStream, java.util.ArrayList):int");
    }

    public static void g(ZipModel zipModel, OutputStream outputStream, int i, long j, ArrayList arrayList) {
        ArrayList arrayList2;
        int i2;
        if (zipModel != null && outputStream != null) {
            try {
                byte[] bArr = new byte[2];
                byte[] bArr2 = new byte[4];
                byte[] bArr3 = new byte[8];
                Raw.f(bArr2, (int) zipModel.g.f21998a);
                b(arrayList, bArr2);
                Raw.h(bArr, (short) zipModel.g.b);
                b(arrayList, bArr);
                Raw.h(bArr, (short) zipModel.g.f21999c);
                b(arrayList, bArr);
                CentralDirectory centralDirectory = zipModel.f;
                if (centralDirectory != null && (arrayList2 = centralDirectory.f21997a) != null) {
                    int size = arrayList2.size();
                    if (zipModel.j) {
                        i2 = c(zipModel.g.b, zipModel.f.f21997a);
                    } else {
                        i2 = size;
                    }
                    Raw.h(bArr, (short) i2);
                    b(arrayList, bArr);
                    Raw.h(bArr, (short) size);
                    b(arrayList, bArr);
                    Raw.f(bArr2, i);
                    b(arrayList, bArr2);
                    int i3 = 0;
                    if (j > 4294967295L) {
                        Raw.g(bArr3, 4294967295L);
                        System.arraycopy(bArr3, 0, bArr2, 0, 4);
                        b(arrayList, bArr2);
                    } else {
                        Raw.g(bArr3, j);
                        System.arraycopy(bArr3, 0, bArr2, 0, 4);
                        b(arrayList, bArr2);
                    }
                    EndCentralDirRecord endCentralDirRecord = zipModel.g;
                    if (endCentralDirRecord.g != null) {
                        i3 = endCentralDirRecord.f;
                    }
                    Raw.h(bArr, (short) i3);
                    b(arrayList, bArr);
                    if (i3 > 0) {
                        b(arrayList, zipModel.g.h);
                        return;
                    }
                    return;
                }
                throw new ZipException("invalid central directory/file headers, cannot write end of central directory record");
            } catch (Exception e) {
                throw new ZipException(e);
            }
        }
        throw new ZipException("zip model or output stream is null, cannot write end of central directory record");
    }

    public static int h(ZipModel zipModel, LocalFileHeader localFileHeader, SplitOutputStream splitOutputStream) {
        boolean z;
        int i;
        if (localFileHeader != null) {
            try {
                ArrayList arrayList = new ArrayList();
                byte[] bArr = new byte[2];
                byte[] bArr2 = new byte[4];
                byte[] bArr3 = new byte[8];
                byte[] bArr4 = {0, 0, 0, 0, 0, 0, 0, 0};
                Raw.f(bArr2, localFileHeader.f22004a);
                b(arrayList, bArr2);
                Raw.h(bArr, (short) localFileHeader.b);
                b(arrayList, bArr);
                b(arrayList, localFileHeader.f22005c);
                Raw.h(bArr, (short) localFileHeader.d);
                b(arrayList, bArr);
                Raw.f(bArr2, localFileHeader.e);
                b(arrayList, bArr2);
                Raw.f(bArr2, (int) localFileHeader.f);
                b(arrayList, bArr2);
                if (localFileHeader.h + 50 >= 4294967295L) {
                    Raw.g(bArr3, 4294967295L);
                    System.arraycopy(bArr3, 0, bArr2, 0, 4);
                    b(arrayList, bArr2);
                    b(arrayList, bArr2);
                    zipModel.m = true;
                    z = true;
                } else {
                    Raw.g(bArr3, localFileHeader.g);
                    System.arraycopy(bArr3, 0, bArr2, 0, 4);
                    b(arrayList, bArr2);
                    Raw.g(bArr3, localFileHeader.h);
                    System.arraycopy(bArr3, 0, bArr2, 0, 4);
                    b(arrayList, bArr2);
                    z = false;
                }
                Raw.h(bArr, (short) localFileHeader.i);
                b(arrayList, bArr);
                if (z) {
                    i = 20;
                } else {
                    i = 0;
                }
                if (localFileHeader.q != null) {
                    i += 11;
                }
                Raw.h(bArr, (short) i);
                b(arrayList, bArr);
                if (Zip4jUtil.l(zipModel.n)) {
                    b(arrayList, localFileHeader.k.getBytes(zipModel.n));
                } else {
                    b(arrayList, Zip4jUtil.c(localFileHeader.k));
                }
                if (z) {
                    Raw.h(bArr, (short) 1);
                    b(arrayList, bArr);
                    Raw.h(bArr, (short) 16);
                    b(arrayList, bArr);
                    Raw.g(bArr3, localFileHeader.h);
                    b(arrayList, bArr3);
                    b(arrayList, bArr4);
                }
                AESExtraDataRecord aESExtraDataRecord = localFileHeader.q;
                if (aESExtraDataRecord != null) {
                    Raw.h(bArr, (short) aESExtraDataRecord.f21995a);
                    b(arrayList, bArr);
                    Raw.h(bArr, (short) aESExtraDataRecord.b);
                    b(arrayList, bArr);
                    Raw.h(bArr, (short) aESExtraDataRecord.f21996c);
                    b(arrayList, bArr);
                    b(arrayList, aESExtraDataRecord.d.getBytes());
                    b(arrayList, new byte[]{(byte) aESExtraDataRecord.e});
                    Raw.h(bArr, (short) aESExtraDataRecord.f);
                    b(arrayList, bArr);
                }
                byte[] a2 = a(arrayList);
                splitOutputStream.write(a2);
                return a2.length;
            } catch (ZipException e) {
                throw e;
            } catch (Exception e2) {
                throw new ZipException(e2);
            }
        }
        throw new ZipException("input parameters are null, cannot write local file header");
    }

    public static void i(ZipModel zipModel, OutputStream outputStream, ArrayList arrayList) {
        if (zipModel != null && outputStream != null) {
            try {
                byte[] bArr = new byte[4];
                byte[] bArr2 = new byte[8];
                Raw.f(bArr, 117853008);
                b(arrayList, bArr);
                Raw.f(bArr, zipModel.h.f22006a);
                b(arrayList, bArr);
                Raw.g(bArr2, zipModel.h.b);
                b(arrayList, bArr2);
                Raw.f(bArr, zipModel.h.f22007c);
                b(arrayList, bArr);
                return;
            } catch (ZipException e) {
                throw e;
            } catch (Exception e2) {
                throw new ZipException(e2);
            }
        }
        throw new ZipException("zip model or output stream is null, cannot write zip64 end of central directory locator");
    }

    public static void j(ZipModel zipModel, OutputStream outputStream, int i, long j, ArrayList arrayList) {
        ArrayList arrayList2;
        ArrayList arrayList3;
        if (zipModel != null && outputStream != null) {
            try {
                byte[] bArr = new byte[2];
                byte[] bArr2 = {0, 0};
                byte[] bArr3 = new byte[4];
                byte[] bArr4 = new byte[8];
                Raw.f(bArr3, 101075792);
                b(arrayList, bArr3);
                Raw.g(bArr4, 44L);
                b(arrayList, bArr4);
                CentralDirectory centralDirectory = zipModel.f;
                int i2 = 0;
                if (centralDirectory != null && (arrayList3 = centralDirectory.f21997a) != null && arrayList3.size() > 0) {
                    Raw.h(bArr, (short) ((FileHeader) zipModel.f.f21997a.get(0)).b);
                    b(arrayList, bArr);
                    Raw.h(bArr, (short) ((FileHeader) zipModel.f.f21997a.get(0)).f22003c);
                    b(arrayList, bArr);
                } else {
                    b(arrayList, bArr2);
                    b(arrayList, bArr2);
                }
                Raw.f(bArr3, zipModel.g.b);
                b(arrayList, bArr3);
                Raw.f(bArr3, zipModel.g.f21999c);
                b(arrayList, bArr3);
                CentralDirectory centralDirectory2 = zipModel.f;
                if (centralDirectory2 != null && (arrayList2 = centralDirectory2.f21997a) != null) {
                    int size = arrayList2.size();
                    if (zipModel.j) {
                        c(zipModel.g.b, zipModel.f.f21997a);
                    } else {
                        i2 = size;
                    }
                    Raw.g(bArr4, i2);
                    b(arrayList, bArr4);
                    Raw.g(bArr4, size);
                    b(arrayList, bArr4);
                    Raw.g(bArr4, i);
                    b(arrayList, bArr4);
                    Raw.g(bArr4, j);
                    b(arrayList, bArr4);
                    return;
                }
                throw new ZipException("invalid central directory/file headers, cannot write end of central directory record");
            } catch (ZipException e) {
                throw e;
            } catch (Exception e2) {
                throw new ZipException(e2);
            }
        }
        throw new ZipException("zip model or output stream is null, cannot write zip64 end of central directory record");
    }

    public static void k(ZipModel zipModel, OutputStream outputStream, byte[] bArr) {
        if (bArr != null) {
            try {
                if ((outputStream instanceof SplitOutputStream) && ((SplitOutputStream) outputStream).a(bArr.length)) {
                    d(zipModel, outputStream);
                    return;
                } else {
                    outputStream.write(bArr);
                    return;
                }
            } catch (IOException e) {
                throw new ZipException(e);
            }
        }
        throw new ZipException("invalid buff to write as zip headers");
    }
}
