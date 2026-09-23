package org.apache.commons.compress.archivers.zip;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import java.util.zip.ZipException;
import kotlin.io.ConstantsKt;
import org.apache.commons.compress.archivers.zip.UnsupportedZipFeatureException;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream;

/* loaded from: classes4.dex */
public class ZipFile implements Closeable {
    public static final long p = ZipLong.b(ZipArchiveOutputStream.f, 0);

    /* renamed from: c, reason: collision with root package name */
    public final LinkedList f22305c;
    public final HashMap f;
    public final ZipEncoding g;
    public final String h;
    public final RandomAccessFile i;
    public final boolean j;
    public volatile boolean k;
    public final byte[] l;
    public final byte[] m;
    public final byte[] n;
    public final byte[] o;

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipFile$2, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass2 implements Comparator<ZipArchiveEntry> {
        @Override // java.util.Comparator
        public final int compare(ZipArchiveEntry zipArchiveEntry, ZipArchiveEntry zipArchiveEntry2) {
            Entry entry;
            ZipArchiveEntry zipArchiveEntry3 = zipArchiveEntry;
            ZipArchiveEntry zipArchiveEntry4 = zipArchiveEntry2;
            if (zipArchiveEntry3 != null || zipArchiveEntry4 != null) {
                if (zipArchiveEntry3 != null) {
                    if (zipArchiveEntry4 != null) {
                        if (zipArchiveEntry3 != zipArchiveEntry4) {
                            Entry entry2 = null;
                            if (zipArchiveEntry3 instanceof Entry) {
                                entry = (Entry) zipArchiveEntry3;
                            } else {
                                entry = null;
                            }
                            if (zipArchiveEntry4 instanceof Entry) {
                                entry2 = (Entry) zipArchiveEntry4;
                            }
                            if (entry != null) {
                                if (entry2 != null) {
                                    long j = entry.p.f22310a - entry2.p.f22310a;
                                    if (j == 0) {
                                        return 0;
                                    }
                                    if (j < 0) {
                                        return -1;
                                    }
                                    return 1;
                                }
                                return -1;
                            }
                            return 1;
                        }
                        return 0;
                    }
                    return -1;
                }
                return 1;
            }
            return 0;
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipFile$3, reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22307a;

        static {
            int[] iArr = new int[ZipMethod.values().length];
            f22307a = iArr;
            try {
                Map map = ZipMethod.f;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f22307a;
                Map map2 = ZipMethod.f;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f22307a;
                Map map3 = ZipMethod.f;
                iArr3[6] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = f22307a;
                Map map4 = ZipMethod.f;
                iArr4[8] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = f22307a;
                Map map5 = ZipMethod.f;
                iArr5[11] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = f22307a;
                Map map6 = ZipMethod.f;
                iArr6[16] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = f22307a;
                Map map7 = ZipMethod.f;
                iArr7[9] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = f22307a;
                Map map8 = ZipMethod.f;
                iArr8[2] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = f22307a;
                Map map9 = ZipMethod.f;
                iArr9[3] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                int[] iArr10 = f22307a;
                Map map10 = ZipMethod.f;
                iArr10[4] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                int[] iArr11 = f22307a;
                Map map11 = ZipMethod.f;
                iArr11[5] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                int[] iArr12 = f22307a;
                Map map12 = ZipMethod.f;
                iArr12[13] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                int[] iArr13 = f22307a;
                Map map13 = ZipMethod.f;
                iArr13[12] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                int[] iArr14 = f22307a;
                Map map14 = ZipMethod.f;
                iArr14[10] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                int[] iArr15 = f22307a;
                Map map15 = ZipMethod.f;
                iArr15[15] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                int[] iArr16 = f22307a;
                Map map16 = ZipMethod.f;
                iArr16[7] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                int[] iArr17 = f22307a;
                Map map17 = ZipMethod.f;
                iArr17[17] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                int[] iArr18 = f22307a;
                Map map18 = ZipMethod.f;
                iArr18[14] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class Entry extends ZipArchiveEntry {
        public final OffsetEntry p;

        public Entry(OffsetEntry offsetEntry) {
            super(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            this.f22300c = -1;
            this.f = -1L;
            this.g = 0;
            this.h = 0;
            this.i = 0L;
            this.k = null;
            this.l = null;
            this.m = new GeneralPurposeBit();
            g(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            this.p = offsetEntry;
        }

        @Override // org.apache.commons.compress.archivers.zip.ZipArchiveEntry
        public final boolean equals(Object obj) {
            if (super.equals(obj)) {
                OffsetEntry offsetEntry = this.p;
                long j = offsetEntry.f22310a;
                OffsetEntry offsetEntry2 = ((Entry) obj).p;
                if (j == offsetEntry2.f22310a && offsetEntry.b == offsetEntry2.b) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.apache.commons.compress.archivers.zip.ZipArchiveEntry, java.util.zip.ZipEntry
        public final int hashCode() {
            return (super.hashCode() * 3) + ((int) (this.p.f22310a % 2147483647L));
        }
    }

    /* loaded from: classes4.dex */
    public static final class NameAndComment {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f22309a;
        public final byte[] b;

        public NameAndComment(byte[] bArr, byte[] bArr2) {
            this.f22309a = bArr;
            this.b = bArr2;
        }
    }

    /* loaded from: classes4.dex */
    public static final class OffsetEntry {

        /* renamed from: a, reason: collision with root package name */
        public long f22310a;
        public long b;
    }

    public ZipFile(String str, String str2) {
        File file = new File(str);
        this.f22305c = new LinkedList();
        this.f = new HashMap(509);
        this.k = true;
        this.l = new byte[8];
        this.m = new byte[4];
        this.n = new byte[42];
        this.o = new byte[2];
        this.h = file.getAbsolutePath();
        this.g = ZipEncodingHelper.a(str2);
        this.j = true;
        this.i = new RandomAccessFile(file, "r");
        try {
            d(b());
            this.k = false;
        } catch (Throwable th) {
            this.k = true;
            RandomAccessFile randomAccessFile = this.i;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused) {
                }
            }
            throw th;
        }
    }

    public final InputStream a(ZipArchiveEntry zipArchiveEntry) {
        if (!(zipArchiveEntry instanceof Entry)) {
            return null;
        }
        OffsetEntry offsetEntry = ((Entry) zipArchiveEntry).p;
        if (!zipArchiveEntry.m.g) {
            int i = zipArchiveEntry.f22300c;
            if (i != 0) {
                Map map = ZipMethod.f;
                if (i != 1 && i != 6 && i != 8 && i != 12) {
                    ZipMethod zipMethod = (ZipMethod) ZipMethod.f.get(Integer.valueOf(i));
                    if (zipMethod == null) {
                        throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.f22293c, zipArchiveEntry);
                    }
                    throw new ZipException("unsupported feature method '" + zipMethod.name() + "' used in entry " + zipArchiveEntry.getName());
                }
            }
            BoundedInputStream boundedInputStream = new BoundedInputStream(offsetEntry.b, zipArchiveEntry.getCompressedSize());
            int ordinal = ((ZipMethod) ZipMethod.f.get(Integer.valueOf(zipArchiveEntry.f22300c))).ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 6) {
                        if (ordinal != 8) {
                            if (ordinal == 11) {
                                return new BZip2CompressorInputStream(boundedInputStream);
                            }
                            throw new ZipException("Found unsupported compression method " + zipArchiveEntry.f22300c);
                        }
                        boundedInputStream.g = true;
                        final Inflater inflater = new Inflater(true);
                        return new InflaterInputStream(boundedInputStream, inflater) { // from class: org.apache.commons.compress.archivers.zip.ZipFile.1
                            @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                            public final void close() {
                                Inflater inflater2 = inflater;
                                try {
                                    super.close();
                                } finally {
                                    inflater2.end();
                                }
                            }
                        };
                    }
                    GeneralPurposeBit generalPurposeBit = zipArchiveEntry.m;
                    return new ExplodingInputStream(generalPurposeBit.i, generalPurposeBit.j, new BufferedInputStream(boundedInputStream));
                }
                return new UnshrinkingInputStream(boundedInputStream);
            }
            return boundedInputStream;
        }
        throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.b, zipArchiveEntry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [int, boolean, long] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, org.apache.commons.compress.archivers.zip.ZipFile$OffsetEntry] */
    public final HashMap b() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        boolean z7;
        int i2;
        int i3;
        ZipEncoding zipEncoding;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        HashMap hashMap = new HashMap();
        byte[] bArr = ZipArchiveOutputStream.g;
        RandomAccessFile randomAccessFile = this.i;
        long length = randomAccessFile.length() - 22;
        long max = Math.max(0L, randomAccessFile.length() - 65557);
        ?? r13 = 1;
        int i9 = 0;
        if (length >= 0) {
            while (length >= max) {
                randomAccessFile.seek(length);
                int read = randomAccessFile.read();
                if (read != -1) {
                    if (read == bArr[0] && randomAccessFile.read() == bArr[1] && randomAccessFile.read() == bArr[2] && randomAccessFile.read() == bArr[3]) {
                        z = true;
                        break;
                    }
                    length--;
                } else {
                    break;
                }
            }
        }
        z = false;
        if (z) {
            randomAccessFile.seek(length);
        }
        if (z) {
            if (randomAccessFile.getFilePointer() > 20) {
                z2 = true;
            } else {
                z2 = false;
            }
            byte[] bArr2 = this.m;
            if (z2) {
                randomAccessFile.seek(randomAccessFile.getFilePointer() - 20);
                randomAccessFile.readFully(bArr2);
                z3 = Arrays.equals(ZipArchiveOutputStream.i, bArr2);
            } else {
                z3 = false;
            }
            int i10 = 4;
            int i11 = 16;
            if (!z3) {
                if (z2) {
                    e(16);
                }
                e(16);
                randomAccessFile.readFully(bArr2);
                randomAccessFile.seek(ZipLong.b(bArr2, 0));
            } else {
                e(4);
                byte[] bArr3 = this.l;
                randomAccessFile.readFully(bArr3);
                randomAccessFile.seek(ZipEightByteInteger.b(bArr3, 0).longValue());
                randomAccessFile.readFully(bArr2);
                if (Arrays.equals(bArr2, ZipArchiveOutputStream.h)) {
                    e(44);
                    randomAccessFile.readFully(bArr3);
                    randomAccessFile.seek(ZipEightByteInteger.b(bArr3, 0).longValue());
                } else {
                    throw new ZipException("archive's ZIP64 end of central directory locator is corrupt.");
                }
            }
            randomAccessFile.readFully(bArr2);
            long b = ZipLong.b(bArr2, 0);
            long j = p;
            if (b != j) {
                randomAccessFile.seek(0L);
                randomAccessFile.readFully(bArr2);
                if (Arrays.equals(bArr2, ZipArchiveOutputStream.f22301c)) {
                    throw new IOException("central directory is empty, can't expand corrupt archive.");
                }
            }
            while (b == j) {
                byte[] bArr4 = this.n;
                randomAccessFile.readFully(bArr4);
                ?? obj = new Object();
                obj.f22310a = -1L;
                obj.b = -1L;
                Entry entry = new Entry(obj);
                entry.h = (ZipShort.b(bArr4, i9) >> 8) & 15;
                ZipShort.b(bArr4, 2);
                int b2 = ZipShort.b(bArr4, i10);
                GeneralPurposeBit generalPurposeBit = new GeneralPurposeBit();
                if ((b2 & 8) != 0) {
                    z4 = r13;
                } else {
                    z4 = i9;
                }
                generalPurposeBit.f = z4;
                if ((b2 & 2048) != 0) {
                    z5 = r13;
                } else {
                    z5 = i9;
                }
                generalPurposeBit.f22283c = z5;
                if ((b2 & 64) != 0) {
                    i = i11;
                    z6 = r13;
                } else {
                    i = i11;
                    z6 = i9;
                }
                generalPurposeBit.h = z6;
                if (z6 != 0) {
                    generalPurposeBit.g = r13;
                }
                if ((b2 & 1) != 0) {
                    z7 = r13;
                } else {
                    z7 = i9;
                }
                generalPurposeBit.g = z7;
                if ((b2 & 2) != 0) {
                    i2 = 8192;
                } else {
                    i2 = ConstantsKt.DEFAULT_BLOCK_SIZE;
                }
                generalPurposeBit.i = i2;
                if ((b2 & 4) != 0) {
                    i3 = 3;
                } else {
                    i3 = 2;
                }
                generalPurposeBit.j = i3;
                if (z5 != 0) {
                    zipEncoding = ZipEncodingHelper.b;
                } else {
                    zipEncoding = this.g;
                }
                entry.m = generalPurposeBit;
                ZipShort.b(bArr4, i10);
                entry.setMethod(ZipShort.b(bArr4, 6));
                long b3 = ZipLong.b(bArr4, 8);
                Calendar calendar = Calendar.getInstance();
                ZipEncoding zipEncoding2 = zipEncoding;
                calendar.set(r13, ((int) ((b3 >> 25) & 127)) + 1980);
                calendar.set(2, ((int) ((b3 >> 21) & 15)) - r13);
                calendar.set(5, ((int) (b3 >> i)) & 31);
                calendar.set(11, ((int) (b3 >> 11)) & 31);
                calendar.set(12, ((int) (b3 >> 5)) & 63);
                calendar.set(13, ((int) (b3 << r13)) & 62);
                calendar.set(14, i9);
                entry.setTime(calendar.getTime().getTime());
                entry.setCrc(ZipLong.b(bArr4, 12));
                entry.setCompressedSize(ZipLong.b(bArr4, i));
                entry.setSize(ZipLong.b(bArr4, 20));
                int b4 = ZipShort.b(bArr4, 24);
                int b5 = ZipShort.b(bArr4, 26);
                int b6 = ZipShort.b(bArr4, 28);
                int b7 = ZipShort.b(bArr4, 30);
                entry.g = ZipShort.b(bArr4, 32);
                entry.i = ZipLong.b(bArr4, 34);
                byte[] bArr5 = new byte[b4];
                randomAccessFile.readFully(bArr5);
                entry.g(zipEncoding2.a(bArr5));
                obj.f22310a = ZipLong.b(bArr4, 38);
                this.f22305c.add(entry);
                byte[] bArr6 = new byte[b5];
                randomAccessFile.readFully(bArr6);
                try {
                    entry.d(ExtraFieldUtils.b(bArr6, false), false);
                    Zip64ExtendedInformationExtraField zip64ExtendedInformationExtraField = (Zip64ExtendedInformationExtraField) entry.c(Zip64ExtendedInformationExtraField.j);
                    if (zip64ExtendedInformationExtraField != null) {
                        if (entry.f == 4294967295L) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        if (entry.getCompressedSize() == 4294967295L) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (obj.f22310a == 4294967295L) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (b7 == 65535) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        byte[] bArr7 = zip64ExtendedInformationExtraField.i;
                        if (bArr7 != null) {
                            if (z9) {
                                i4 = 8;
                            } else {
                                i4 = 0;
                            }
                            if (z10) {
                                i5 = 8;
                            } else {
                                i5 = 0;
                            }
                            int i12 = i4 + i5;
                            if (z11) {
                                i6 = 8;
                            } else {
                                i6 = 0;
                            }
                            int i13 = i12 + i6;
                            if (z12) {
                                i7 = 4;
                            } else {
                                i7 = 0;
                            }
                            z8 = z5;
                            int i14 = i13 + i7;
                            if (bArr7.length >= i14) {
                                if (z9) {
                                    z13 = z9;
                                    zip64ExtendedInformationExtraField.f22298c = new ZipEightByteInteger(zip64ExtendedInformationExtraField.i, 0);
                                    i8 = 8;
                                } else {
                                    z13 = z9;
                                    i8 = 0;
                                }
                                if (z10) {
                                    zip64ExtendedInformationExtraField.f = new ZipEightByteInteger(zip64ExtendedInformationExtraField.i, i8);
                                    i8 += 8;
                                }
                                if (z11) {
                                    zip64ExtendedInformationExtraField.g = new ZipEightByteInteger(zip64ExtendedInformationExtraField.i, i8);
                                    i8 += 8;
                                }
                                if (z12) {
                                    zip64ExtendedInformationExtraField.h = new ZipLong(zip64ExtendedInformationExtraField.i, i8);
                                }
                            } else {
                                StringBuilder s = a.s(i14, "central directory zip64 extended information extra field's length doesn't match central directory data.  Expected length ", " but is ");
                                s.append(zip64ExtendedInformationExtraField.i.length);
                                throw new ZipException(s.toString());
                            }
                        } else {
                            z8 = z5;
                            z13 = z9;
                        }
                        if (z13) {
                            z14 = z11;
                            entry.setSize(zip64ExtendedInformationExtraField.f22298c.f22302c.longValue());
                        } else {
                            z14 = z11;
                            if (z10) {
                                zip64ExtendedInformationExtraField.f22298c = new ZipEightByteInteger(entry.f);
                            }
                        }
                        if (z10) {
                            entry.setCompressedSize(zip64ExtendedInformationExtraField.f.f22302c.longValue());
                        } else if (z13) {
                            zip64ExtendedInformationExtraField.f = new ZipEightByteInteger(entry.getCompressedSize());
                        }
                        if (z14) {
                            obj.f22310a = zip64ExtendedInformationExtraField.g.f22302c.longValue();
                        }
                    } else {
                        z8 = z5;
                    }
                    byte[] bArr8 = new byte[b6];
                    randomAccessFile.readFully(bArr8);
                    entry.setComment(zipEncoding2.a(bArr8));
                    if (!z8 && this.j) {
                        hashMap.put(entry, new NameAndComment(bArr5, bArr8));
                    }
                    randomAccessFile.readFully(bArr2);
                    b = ZipLong.b(bArr2, 0);
                    i9 = 0;
                    i10 = 4;
                    i11 = 16;
                    r13 = 1;
                } catch (ZipException e) {
                    throw new RuntimeException(e.getMessage(), e);
                }
            }
            return hashMap;
        }
        throw new ZipException("archive is not a ZIP archive");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.k = true;
        this.i.close();
    }

    public final void d(HashMap hashMap) {
        String b;
        Iterator it = this.f22305c.iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) ((ZipArchiveEntry) it.next());
            OffsetEntry offsetEntry = entry.p;
            long j = offsetEntry.f22310a;
            RandomAccessFile randomAccessFile = this.i;
            randomAccessFile.seek(26 + j);
            byte[] bArr = this.o;
            randomAccessFile.readFully(bArr);
            int b2 = ZipShort.b(bArr, 0);
            randomAccessFile.readFully(bArr);
            int b3 = ZipShort.b(bArr, 0);
            int i = b2;
            while (i > 0) {
                int skipBytes = randomAccessFile.skipBytes(i);
                if (skipBytes > 0) {
                    i -= skipBytes;
                } else {
                    throw new IOException("failed to skip file name in local file header");
                }
            }
            byte[] bArr2 = new byte[b3];
            randomAccessFile.readFully(bArr2);
            entry.setExtra(bArr2);
            offsetEntry.b = j + 30 + b2 + b3;
            if (hashMap.containsKey(entry)) {
                NameAndComment nameAndComment = (NameAndComment) hashMap.get(entry);
                byte[] bArr3 = nameAndComment.f22309a;
                byte[] bArr4 = nameAndComment.b;
                UnicodePathExtraField unicodePathExtraField = (UnicodePathExtraField) entry.c(UnicodePathExtraField.h);
                String name = entry.getName();
                String b4 = ZipUtil.b(unicodePathExtraField, bArr3);
                if (b4 != null && !name.equals(b4)) {
                    entry.g(b4);
                }
                if (bArr4.length > 0 && (b = ZipUtil.b((UnicodeCommentExtraField) entry.c(UnicodeCommentExtraField.h), bArr4)) != null) {
                    entry.setComment(b);
                }
            }
            String name2 = entry.getName();
            HashMap hashMap2 = this.f;
            LinkedList linkedList = (LinkedList) hashMap2.get(name2);
            if (linkedList == null) {
                linkedList = new LinkedList();
                hashMap2.put(name2, linkedList);
            }
            linkedList.addLast(entry);
        }
    }

    public final void e(int i) {
        int i2 = 0;
        while (i2 < i) {
            int skipBytes = this.i.skipBytes(i - i2);
            if (skipBytes > 0) {
                i2 += skipBytes;
            } else {
                throw new EOFException();
            }
        }
    }

    public final void finalize() {
        try {
            if (!this.k) {
                System.err.println("Cleaning up unclosed ZipFile for archive " + this.h);
                close();
            }
        } finally {
            super.finalize();
        }
    }

    /* loaded from: classes4.dex */
    public class BoundedInputStream extends InputStream {

        /* renamed from: c, reason: collision with root package name */
        public long f22308c;
        public long f;
        public boolean g = false;

        public BoundedInputStream(long j, long j2) {
            this.f22308c = j2;
            this.f = j;
        }

        @Override // java.io.InputStream
        public final int read() {
            int read;
            long j = this.f22308c;
            this.f22308c = j - 1;
            if (j <= 0) {
                if (!this.g) {
                    return -1;
                }
                this.g = false;
                return 0;
            }
            synchronized (ZipFile.this.i) {
                RandomAccessFile randomAccessFile = ZipFile.this.i;
                long j2 = this.f;
                this.f = 1 + j2;
                randomAccessFile.seek(j2);
                read = ZipFile.this.i.read();
            }
            return read;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            int read;
            long j = this.f22308c;
            if (j <= 0) {
                if (!this.g) {
                    return -1;
                }
                this.g = false;
                bArr[i] = 0;
                return 1;
            }
            if (i2 <= 0) {
                return 0;
            }
            if (i2 > j) {
                i2 = (int) j;
            }
            synchronized (ZipFile.this.i) {
                ZipFile.this.i.seek(this.f);
                read = ZipFile.this.i.read(bArr, i, i2);
            }
            if (read > 0) {
                long j2 = read;
                this.f += j2;
                this.f22308c -= j2;
            }
            return read;
        }
    }
}
