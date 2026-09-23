package androidx.profileinstaller;

import androidx.annotation.RequiresApi;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi
/* loaded from: classes.dex */
public class ProfileTranscoder {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f1479a = {112, 114, 111, 0};
    public static final byte[] b = {112, 114, 109, 0};

    public static byte[] a(DexProfileData[] dexProfileDataArr, byte[] bArr) {
        int i = 0;
        for (DexProfileData dexProfileData : dexProfileDataArr) {
            i += ((((dexProfileData.g * 2) + 7) & (-8)) / 8) + (dexProfileData.e * 2) + b(bArr, dexProfileData.f1474a, dexProfileData.b).getBytes(StandardCharsets.UTF_8).length + 16 + dexProfileData.f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i);
        if (Arrays.equals(bArr, ProfileVersion.f1485c)) {
            for (DexProfileData dexProfileData2 : dexProfileDataArr) {
                j(byteArrayOutputStream, dexProfileData2, b(bArr, dexProfileData2.f1474a, dexProfileData2.b));
                l(byteArrayOutputStream, dexProfileData2);
                int[] iArr = dexProfileData2.h;
                int length = iArr.length;
                int i2 = 0;
                int i3 = 0;
                while (i2 < length) {
                    int i4 = iArr[i2];
                    Encoding.f(byteArrayOutputStream, i4 - i3);
                    i2++;
                    i3 = i4;
                }
                k(byteArrayOutputStream, dexProfileData2);
            }
        } else {
            for (DexProfileData dexProfileData3 : dexProfileDataArr) {
                j(byteArrayOutputStream, dexProfileData3, b(bArr, dexProfileData3.f1474a, dexProfileData3.b));
            }
            for (DexProfileData dexProfileData4 : dexProfileDataArr) {
                l(byteArrayOutputStream, dexProfileData4);
                int[] iArr2 = dexProfileData4.h;
                int length2 = iArr2.length;
                int i5 = 0;
                int i6 = 0;
                while (i5 < length2) {
                    int i7 = iArr2[i5];
                    Encoding.f(byteArrayOutputStream, i7 - i6);
                    i5++;
                    i6 = i7;
                }
                k(byteArrayOutputStream, dexProfileData4);
            }
        }
        if (byteArrayOutputStream.size() == i) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i);
    }

    public static String b(byte[] bArr, String str, String str2) {
        Object obj;
        byte[] bArr2 = ProfileVersion.e;
        boolean equals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = ProfileVersion.d;
        String str3 = "!";
        if (!equals && !Arrays.equals(bArr, bArr3)) {
            obj = "!";
        } else {
            obj = ":";
        }
        if (str.length() <= 0) {
            if ("!".equals(obj)) {
                return str2.replace(":", "!");
            }
            if (":".equals(obj)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (!str2.contains("!") && !str2.contains(":")) {
                if (!str2.endsWith(".apk")) {
                    StringBuilder t = android.support.v4.media.a.t(str);
                    if (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) {
                        str3 = ":";
                    }
                    return android.support.v4.media.a.p(t, str3, str2);
                }
            } else {
                if ("!".equals(obj)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(obj)) {
                    return str2.replace("!", ":");
                }
            }
        }
        return str2;
    }

    public static int[] c(ByteArrayInputStream byteArrayInputStream, int i) {
        int[] iArr = new int[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += (int) Encoding.d(byteArrayInputStream, 2);
            iArr[i3] = i2;
        }
        return iArr;
    }

    public static DexProfileData[] d(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, DexProfileData[] dexProfileDataArr) {
        byte[] bArr3 = ProfileVersion.f;
        if (Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(ProfileVersion.f1484a, bArr2)) {
                if (Arrays.equals(bArr, bArr3)) {
                    int d = (int) Encoding.d(fileInputStream, 1);
                    byte[] c2 = Encoding.c(fileInputStream, (int) Encoding.d(fileInputStream, 4), (int) Encoding.d(fileInputStream, 4));
                    if (fileInputStream.read() <= 0) {
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(c2);
                        try {
                            DexProfileData[] e = e(byteArrayInputStream, d, dexProfileDataArr);
                            byteArrayInputStream.close();
                            return e;
                        } catch (Throwable th) {
                            try {
                                byteArrayInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    throw new IllegalStateException("Content found after the end of file");
                }
                throw new IllegalStateException("Unsupported meta version");
            }
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (Arrays.equals(bArr, ProfileVersion.g)) {
            int d2 = (int) Encoding.d(fileInputStream, 2);
            byte[] c3 = Encoding.c(fileInputStream, (int) Encoding.d(fileInputStream, 4), (int) Encoding.d(fileInputStream, 4));
            if (fileInputStream.read() <= 0) {
                ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(c3);
                try {
                    DexProfileData[] f = f(byteArrayInputStream2, bArr2, d2, dexProfileDataArr);
                    byteArrayInputStream2.close();
                    return f;
                } catch (Throwable th3) {
                    try {
                        byteArrayInputStream2.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
            throw new IllegalStateException("Content found after the end of file");
        }
        throw new IllegalStateException("Unsupported meta version");
    }

    public static DexProfileData[] e(ByteArrayInputStream byteArrayInputStream, int i, DexProfileData[] dexProfileDataArr) {
        if (byteArrayInputStream.available() == 0) {
            return new DexProfileData[0];
        }
        if (i == dexProfileDataArr.length) {
            String[] strArr = new String[i];
            int[] iArr = new int[i];
            for (int i2 = 0; i2 < i; i2++) {
                int d = (int) Encoding.d(byteArrayInputStream, 2);
                iArr[i2] = (int) Encoding.d(byteArrayInputStream, 2);
                strArr[i2] = new String(Encoding.b(byteArrayInputStream, d), StandardCharsets.UTF_8);
            }
            for (int i3 = 0; i3 < i; i3++) {
                DexProfileData dexProfileData = dexProfileDataArr[i3];
                if (dexProfileData.b.equals(strArr[i3])) {
                    int i4 = iArr[i3];
                    dexProfileData.e = i4;
                    dexProfileData.h = c(byteArrayInputStream, i4);
                } else {
                    throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
                }
            }
            return dexProfileDataArr;
        }
        throw new IllegalStateException("Mismatched number of dex files found in metadata");
    }

    public static DexProfileData[] f(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i, DexProfileData[] dexProfileDataArr) {
        String str;
        if (byteArrayInputStream.available() == 0) {
            return new DexProfileData[0];
        }
        if (i == dexProfileDataArr.length) {
            for (int i2 = 0; i2 < i; i2++) {
                Encoding.d(byteArrayInputStream, 2);
                String str2 = new String(Encoding.b(byteArrayInputStream, (int) Encoding.d(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
                long d = Encoding.d(byteArrayInputStream, 4);
                int d2 = (int) Encoding.d(byteArrayInputStream, 2);
                DexProfileData dexProfileData = null;
                if (dexProfileDataArr.length > 0) {
                    int indexOf = str2.indexOf("!");
                    if (indexOf < 0) {
                        indexOf = str2.indexOf(":");
                    }
                    if (indexOf > 0) {
                        str = str2.substring(indexOf + 1);
                    } else {
                        str = str2;
                    }
                    int i3 = 0;
                    while (true) {
                        if (i3 >= dexProfileDataArr.length) {
                            break;
                        }
                        if (dexProfileDataArr[i3].b.equals(str)) {
                            dexProfileData = dexProfileDataArr[i3];
                            break;
                        }
                        i3++;
                    }
                }
                if (dexProfileData != null) {
                    dexProfileData.d = d;
                    int[] c2 = c(byteArrayInputStream, d2);
                    if (Arrays.equals(bArr, ProfileVersion.e)) {
                        dexProfileData.e = d2;
                        dexProfileData.h = c2;
                    }
                } else {
                    throw new IllegalStateException("Missing profile key: ".concat(str2));
                }
            }
            return dexProfileDataArr;
        }
        throw new IllegalStateException("Mismatched number of dex files found in metadata");
    }

    public static DexProfileData[] g(FileInputStream fileInputStream, byte[] bArr, String str) {
        if (Arrays.equals(bArr, ProfileVersion.b)) {
            int d = (int) Encoding.d(fileInputStream, 1);
            byte[] c2 = Encoding.c(fileInputStream, (int) Encoding.d(fileInputStream, 4), (int) Encoding.d(fileInputStream, 4));
            if (fileInputStream.read() <= 0) {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(c2);
                try {
                    DexProfileData[] h = h(byteArrayInputStream, str, d);
                    byteArrayInputStream.close();
                    return h;
                } catch (Throwable th) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            throw new IllegalStateException("Content found after the end of file");
        }
        throw new IllegalStateException("Unsupported version");
    }

    public static DexProfileData[] h(ByteArrayInputStream byteArrayInputStream, String str, int i) {
        int i2;
        int i3 = 0;
        if (byteArrayInputStream.available() == 0) {
            return new DexProfileData[0];
        }
        DexProfileData[] dexProfileDataArr = new DexProfileData[i];
        for (int i4 = 0; i4 < i; i4++) {
            int d = (int) Encoding.d(byteArrayInputStream, 2);
            int d2 = (int) Encoding.d(byteArrayInputStream, 2);
            dexProfileDataArr[i4] = new DexProfileData(str, new String(Encoding.b(byteArrayInputStream, d), StandardCharsets.UTF_8), Encoding.d(byteArrayInputStream, 4), d2, (int) Encoding.d(byteArrayInputStream, 4), (int) Encoding.d(byteArrayInputStream, 4), new int[d2], new TreeMap());
        }
        int i5 = 0;
        while (i5 < i) {
            DexProfileData dexProfileData = dexProfileDataArr[i5];
            int available = byteArrayInputStream.available();
            int i6 = dexProfileData.f;
            int i7 = dexProfileData.g;
            TreeMap treeMap = dexProfileData.i;
            int i8 = available - i6;
            int i9 = i3;
            while (byteArrayInputStream.available() > i8) {
                i9 += (int) Encoding.d(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(i9), 1);
                int d3 = (int) Encoding.d(byteArrayInputStream, 2);
                while (d3 > 0) {
                    Encoding.d(byteArrayInputStream, 2);
                    int d4 = (int) Encoding.d(byteArrayInputStream, 1);
                    if (d4 != 6 && d4 != 7) {
                        while (d4 > 0) {
                            Encoding.d(byteArrayInputStream, 1);
                            int i10 = i3;
                            int i11 = i5;
                            for (int d5 = (int) Encoding.d(byteArrayInputStream, 1); d5 > 0; d5--) {
                                Encoding.d(byteArrayInputStream, 2);
                            }
                            d4--;
                            i3 = i10;
                            i5 = i11;
                        }
                    }
                    d3--;
                    i3 = i3;
                    i5 = i5;
                }
            }
            int i12 = i3;
            int i13 = i5;
            if (byteArrayInputStream.available() == i8) {
                dexProfileData.h = c(byteArrayInputStream, dexProfileData.e);
                BitSet valueOf = BitSet.valueOf(Encoding.b(byteArrayInputStream, (((i7 * 2) + 7) & (-8)) / 8));
                for (int i14 = i12; i14 < i7; i14++) {
                    if (valueOf.get(i14)) {
                        i2 = 2;
                    } else {
                        i2 = i12;
                    }
                    if (valueOf.get(i14 + i7)) {
                        i2 |= 4;
                    }
                    if (i2 != 0) {
                        Integer num = (Integer) treeMap.get(Integer.valueOf(i14));
                        if (num == null) {
                            num = Integer.valueOf(i12);
                        }
                        treeMap.put(Integer.valueOf(i14), Integer.valueOf(i2 | num.intValue()));
                    }
                }
                i5 = i13 + 1;
                i3 = i12;
            } else {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
        }
        return dexProfileDataArr;
    }

    /* JADX WARN: Finally extract failed */
    public static boolean i(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, DexProfileData[] dexProfileDataArr) {
        ArrayList arrayList;
        int length;
        byte[] bArr2 = ProfileVersion.f1484a;
        int i = 0;
        if (Arrays.equals(bArr, bArr2)) {
            ArrayList arrayList2 = new ArrayList(3);
            ArrayList arrayList3 = new ArrayList(3);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                Encoding.f(byteArrayOutputStream2, dexProfileDataArr.length);
                int i2 = 2;
                int i3 = 2;
                for (DexProfileData dexProfileData : dexProfileDataArr) {
                    Encoding.e(byteArrayOutputStream2, dexProfileData.f1475c, 4);
                    Encoding.e(byteArrayOutputStream2, dexProfileData.d, 4);
                    Encoding.e(byteArrayOutputStream2, dexProfileData.g, 4);
                    String b2 = b(bArr2, dexProfileData.f1474a, dexProfileData.b);
                    Charset charset = StandardCharsets.UTF_8;
                    int length2 = b2.getBytes(charset).length;
                    Encoding.f(byteArrayOutputStream2, length2);
                    i3 = i3 + 14 + length2;
                    byteArrayOutputStream2.write(b2.getBytes(charset));
                }
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                if (i3 == byteArray.length) {
                    WritableFileSection writableFileSection = new WritableFileSection(FileSectionType.DEX_FILES, byteArray, false);
                    byteArrayOutputStream2.close();
                    arrayList2.add(writableFileSection);
                    ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                    int i4 = 0;
                    for (int i5 = 0; i5 < dexProfileDataArr.length; i5++) {
                        try {
                            DexProfileData dexProfileData2 = dexProfileDataArr[i5];
                            Encoding.f(byteArrayOutputStream3, i5);
                            Encoding.f(byteArrayOutputStream3, dexProfileData2.e);
                            i4 = i4 + 4 + (dexProfileData2.e * i2);
                            int[] iArr = dexProfileData2.h;
                            int length3 = iArr.length;
                            int i6 = 0;
                            int i7 = 0;
                            while (i6 < length3) {
                                int i8 = iArr[i6];
                                Encoding.f(byteArrayOutputStream3, i8 - i7);
                                i6++;
                                i2 = i2;
                                i7 = i8;
                            }
                        } catch (Throwable th) {
                        }
                    }
                    byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
                    if (i4 == byteArray2.length) {
                        WritableFileSection writableFileSection2 = new WritableFileSection(FileSectionType.CLASSES, byteArray2, true);
                        byteArrayOutputStream3.close();
                        arrayList2.add(writableFileSection2);
                        byteArrayOutputStream3 = new ByteArrayOutputStream();
                        int i9 = 0;
                        int i10 = 0;
                        while (i9 < dexProfileDataArr.length) {
                            try {
                                DexProfileData dexProfileData3 = dexProfileDataArr[i9];
                                Iterator it = dexProfileData3.i.entrySet().iterator();
                                int i11 = i;
                                while (it.hasNext()) {
                                    i11 |= ((Integer) ((Map.Entry) it.next()).getValue()).intValue();
                                }
                                ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                                try {
                                    k(byteArrayOutputStream4, dexProfileData3);
                                    byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                                    byteArrayOutputStream4.close();
                                    byteArrayOutputStream4 = new ByteArrayOutputStream();
                                    try {
                                        l(byteArrayOutputStream4, dexProfileData3);
                                        byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                                        byteArrayOutputStream4.close();
                                        Encoding.f(byteArrayOutputStream3, i9);
                                        int length4 = byteArray3.length + 2 + byteArray4.length;
                                        int i12 = i10 + 6;
                                        ArrayList arrayList4 = arrayList3;
                                        Encoding.e(byteArrayOutputStream3, length4, 4);
                                        Encoding.f(byteArrayOutputStream3, i11);
                                        byteArrayOutputStream3.write(byteArray3);
                                        byteArrayOutputStream3.write(byteArray4);
                                        i10 = i12 + length4;
                                        i9++;
                                        arrayList3 = arrayList4;
                                        i = 0;
                                    } finally {
                                    }
                                } finally {
                                }
                            } finally {
                                try {
                                    byteArrayOutputStream3.close();
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                        }
                        ArrayList arrayList5 = arrayList3;
                        byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
                        if (i10 == byteArray5.length) {
                            WritableFileSection writableFileSection3 = new WritableFileSection(FileSectionType.METHODS, byteArray5, true);
                            byteArrayOutputStream3.close();
                            arrayList2.add(writableFileSection3);
                            long j = 4;
                            long size = j + j + 4 + (arrayList2.size() * 16);
                            Encoding.e(byteArrayOutputStream, arrayList2.size(), 4);
                            int i13 = 0;
                            while (i13 < arrayList2.size()) {
                                WritableFileSection writableFileSection4 = (WritableFileSection) arrayList2.get(i13);
                                FileSectionType fileSectionType = writableFileSection4.f1486a;
                                byte[] bArr3 = writableFileSection4.b;
                                Encoding.e(byteArrayOutputStream, fileSectionType.f1476c, 4);
                                Encoding.e(byteArrayOutputStream, size, 4);
                                if (writableFileSection4.f1487c) {
                                    long length5 = bArr3.length;
                                    byte[] a2 = Encoding.a(bArr3);
                                    arrayList = arrayList5;
                                    arrayList.add(a2);
                                    Encoding.e(byteArrayOutputStream, a2.length, 4);
                                    Encoding.e(byteArrayOutputStream, length5, 4);
                                    length = a2.length;
                                } else {
                                    arrayList = arrayList5;
                                    arrayList.add(bArr3);
                                    Encoding.e(byteArrayOutputStream, bArr3.length, 4);
                                    Encoding.e(byteArrayOutputStream, 0L, 4);
                                    length = bArr3.length;
                                }
                                size += length;
                                i13++;
                                arrayList5 = arrayList;
                            }
                            ArrayList arrayList6 = arrayList5;
                            for (int i14 = 0; i14 < arrayList6.size(); i14++) {
                                byteArrayOutputStream.write((byte[]) arrayList6.get(i14));
                            }
                            return true;
                        }
                        throw new IllegalStateException("Expected size " + i10 + ", does not match actual size " + byteArray5.length);
                    }
                    throw new IllegalStateException("Expected size " + i4 + ", does not match actual size " + byteArray2.length);
                }
                throw new IllegalStateException("Expected size " + i3 + ", does not match actual size " + byteArray.length);
            } catch (Throwable th3) {
                try {
                    byteArrayOutputStream2.close();
                    throw th3;
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                    throw th3;
                }
            }
        }
        byte[] bArr4 = ProfileVersion.b;
        if (Arrays.equals(bArr, bArr4)) {
            byte[] a3 = a(dexProfileDataArr, bArr4);
            Encoding.e(byteArrayOutputStream, dexProfileDataArr.length, 1);
            Encoding.e(byteArrayOutputStream, a3.length, 4);
            byte[] a4 = Encoding.a(a3);
            Encoding.e(byteArrayOutputStream, a4.length, 4);
            byteArrayOutputStream.write(a4);
            return true;
        }
        byte[] bArr5 = ProfileVersion.d;
        if (Arrays.equals(bArr, bArr5)) {
            Encoding.e(byteArrayOutputStream, dexProfileDataArr.length, 1);
            for (DexProfileData dexProfileData4 : dexProfileDataArr) {
                int size2 = dexProfileData4.i.size() * 4;
                String b3 = b(bArr5, dexProfileData4.f1474a, dexProfileData4.b);
                Charset charset2 = StandardCharsets.UTF_8;
                Encoding.f(byteArrayOutputStream, b3.getBytes(charset2).length);
                Encoding.f(byteArrayOutputStream, dexProfileData4.h.length);
                Encoding.e(byteArrayOutputStream, size2, 4);
                Encoding.e(byteArrayOutputStream, dexProfileData4.f1475c, 4);
                byteArrayOutputStream.write(b3.getBytes(charset2));
                Iterator it2 = dexProfileData4.i.keySet().iterator();
                while (it2.hasNext()) {
                    Encoding.f(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                    Encoding.f(byteArrayOutputStream, 0);
                }
                for (int i15 : dexProfileData4.h) {
                    Encoding.f(byteArrayOutputStream, i15);
                }
            }
            return true;
        }
        byte[] bArr6 = ProfileVersion.f1485c;
        if (Arrays.equals(bArr, bArr6)) {
            byte[] a5 = a(dexProfileDataArr, bArr6);
            Encoding.e(byteArrayOutputStream, dexProfileDataArr.length, 1);
            Encoding.e(byteArrayOutputStream, a5.length, 4);
            byte[] a6 = Encoding.a(a5);
            Encoding.e(byteArrayOutputStream, a6.length, 4);
            byteArrayOutputStream.write(a6);
            return true;
        }
        byte[] bArr7 = ProfileVersion.e;
        if (Arrays.equals(bArr, bArr7)) {
            Encoding.f(byteArrayOutputStream, dexProfileDataArr.length);
            for (DexProfileData dexProfileData5 : dexProfileDataArr) {
                String str = dexProfileData5.f1474a;
                TreeMap treeMap = dexProfileData5.i;
                String b4 = b(bArr7, str, dexProfileData5.b);
                Charset charset3 = StandardCharsets.UTF_8;
                Encoding.f(byteArrayOutputStream, b4.getBytes(charset3).length);
                Encoding.f(byteArrayOutputStream, treeMap.size());
                Encoding.f(byteArrayOutputStream, dexProfileData5.h.length);
                Encoding.e(byteArrayOutputStream, dexProfileData5.f1475c, 4);
                byteArrayOutputStream.write(b4.getBytes(charset3));
                Iterator it3 = treeMap.keySet().iterator();
                while (it3.hasNext()) {
                    Encoding.f(byteArrayOutputStream, ((Integer) it3.next()).intValue());
                }
                for (int i16 : dexProfileData5.h) {
                    Encoding.f(byteArrayOutputStream, i16);
                }
            }
            return true;
        }
        return false;
    }

    public static void j(ByteArrayOutputStream byteArrayOutputStream, DexProfileData dexProfileData, String str) {
        Charset charset = StandardCharsets.UTF_8;
        Encoding.f(byteArrayOutputStream, str.getBytes(charset).length);
        Encoding.f(byteArrayOutputStream, dexProfileData.e);
        Encoding.e(byteArrayOutputStream, dexProfileData.f, 4);
        Encoding.e(byteArrayOutputStream, dexProfileData.f1475c, 4);
        Encoding.e(byteArrayOutputStream, dexProfileData.g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void k(ByteArrayOutputStream byteArrayOutputStream, DexProfileData dexProfileData) {
        byte[] bArr = new byte[(((dexProfileData.g * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : dexProfileData.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue2 & 2) != 0) {
                int i = intValue / 8;
                bArr[i] = (byte) (bArr[i] | (1 << (intValue % 8)));
            }
            if ((intValue2 & 4) != 0) {
                int i2 = intValue + dexProfileData.g;
                int i3 = i2 / 8;
                bArr[i3] = (byte) ((1 << (i2 % 8)) | bArr[i3]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void l(ByteArrayOutputStream byteArrayOutputStream, DexProfileData dexProfileData) {
        int i = 0;
        for (Map.Entry entry : dexProfileData.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                Encoding.f(byteArrayOutputStream, intValue - i);
                Encoding.f(byteArrayOutputStream, 0);
                i = intValue;
            }
        }
    }
}
