package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public final class zzaqq {
    public static X509Certificate[][] a(String str) {
        RandomAccessFile randomAccessFile;
        Pair a2;
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, "r");
        try {
            if (randomAccessFile2.length() < 22) {
                a2 = null;
            } else {
                a2 = zzaqr.a(randomAccessFile2, 0);
                if (a2 == null) {
                    a2 = zzaqr.a(randomAccessFile2, 65535);
                }
            }
        } catch (Throwable th) {
            th = th;
            randomAccessFile = randomAccessFile2;
        }
        try {
            if (a2 != null) {
                ByteBuffer byteBuffer = (ByteBuffer) a2.first;
                long longValue = ((Long) a2.second).longValue();
                long j = (-20) + longValue;
                if (j >= 0) {
                    randomAccessFile2.seek(j);
                    if (randomAccessFile2.readInt() == 1347094023) {
                        throw new Exception("ZIP64 APK not supported");
                    }
                }
                zzaqr.b(byteBuffer);
                long j2 = byteBuffer.getInt(byteBuffer.position() + 16) & 4294967295L;
                if (j2 < longValue) {
                    zzaqr.b(byteBuffer);
                    if ((byteBuffer.getInt(byteBuffer.position() + 12) & 4294967295L) + j2 == longValue) {
                        if (j2 >= 32) {
                            ByteBuffer allocate = ByteBuffer.allocate(24);
                            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                            allocate.order(byteOrder);
                            randomAccessFile2.seek(j2 - allocate.capacity());
                            randomAccessFile2.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                            if (allocate.getLong(8) == 2334950737559900225L && allocate.getLong(16) == 3617552046287187010L) {
                                long j3 = allocate.getLong(0);
                                if (j3 >= allocate.capacity() && j3 <= 2147483639) {
                                    int i = (int) (8 + j3);
                                    long j4 = j2 - i;
                                    if (j4 >= 0) {
                                        ByteBuffer allocate2 = ByteBuffer.allocate(i);
                                        allocate2.order(byteOrder);
                                        randomAccessFile2.seek(j4);
                                        long j5 = j2;
                                        randomAccessFile2.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                                        long j6 = allocate2.getLong(0);
                                        if (j6 == j3) {
                                            Pair create = Pair.create(allocate2, Long.valueOf(j4));
                                            ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                                            long longValue2 = ((Long) create.second).longValue();
                                            if (byteBuffer2.order() == byteOrder) {
                                                int capacity = byteBuffer2.capacity() - 24;
                                                randomAccessFile = randomAccessFile2;
                                                if (capacity >= 8) {
                                                    int capacity2 = byteBuffer2.capacity();
                                                    if (capacity <= byteBuffer2.capacity()) {
                                                        int limit = byteBuffer2.limit();
                                                        int position = byteBuffer2.position();
                                                        try {
                                                            byteBuffer2.position(0);
                                                            byteBuffer2.limit(capacity);
                                                            byteBuffer2.position(8);
                                                            ByteBuffer slice = byteBuffer2.slice();
                                                            slice.order(byteBuffer2.order());
                                                            byteBuffer2.position(0);
                                                            byteBuffer2.limit(limit);
                                                            byteBuffer2.position(position);
                                                            int i2 = 0;
                                                            while (slice.hasRemaining()) {
                                                                i2++;
                                                                if (slice.remaining() >= 8) {
                                                                    long j7 = slice.getLong();
                                                                    if (j7 >= 4 && j7 <= 2147483647L) {
                                                                        int i3 = (int) j7;
                                                                        int position2 = slice.position() + i3;
                                                                        if (i3 <= slice.remaining()) {
                                                                            if (slice.getInt() == 1896449818) {
                                                                                X509Certificate[][] b = b(randomAccessFile.getChannel(), new zzaqm(h(slice, i3 - 4), longValue2, j5, longValue, byteBuffer));
                                                                                randomAccessFile.close();
                                                                                try {
                                                                                    randomAccessFile.close();
                                                                                } catch (IOException unused) {
                                                                                }
                                                                                return b;
                                                                            }
                                                                            long j8 = j5;
                                                                            slice.position(position2);
                                                                            j5 = j8;
                                                                        } else {
                                                                            int remaining = slice.remaining();
                                                                            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 45 + String.valueOf(i3).length() + 13 + String.valueOf(remaining).length());
                                                                            sb.append("APK Signing Block entry #");
                                                                            sb.append(i2);
                                                                            sb.append(" size out of range: ");
                                                                            sb.append(i3);
                                                                            sb.append(", available: ");
                                                                            sb.append(remaining);
                                                                            throw new Exception(sb.toString());
                                                                        }
                                                                    } else {
                                                                        StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 45 + String.valueOf(j7).length());
                                                                        sb2.append("APK Signing Block entry #");
                                                                        sb2.append(i2);
                                                                        sb2.append(" size out of range: ");
                                                                        sb2.append(j7);
                                                                        throw new Exception(sb2.toString());
                                                                    }
                                                                } else {
                                                                    StringBuilder sb3 = new StringBuilder(String.valueOf(i2).length() + 59);
                                                                    sb3.append("Insufficient data to read size of APK Signing Block entry #");
                                                                    sb3.append(i2);
                                                                    throw new Exception(sb3.toString());
                                                                }
                                                            }
                                                            throw new Exception("No APK Signature Scheme v2 block in APK Signing Block");
                                                        } catch (Throwable th2) {
                                                            byteBuffer2.position(0);
                                                            byteBuffer2.limit(limit);
                                                            byteBuffer2.position(position);
                                                            throw th2;
                                                        }
                                                    }
                                                    StringBuilder sb4 = new StringBuilder(String.valueOf(capacity).length() + 19 + String.valueOf(capacity2).length());
                                                    sb4.append("end > capacity: ");
                                                    sb4.append(capacity);
                                                    sb4.append(" > ");
                                                    sb4.append(capacity2);
                                                    throw new IllegalArgumentException(sb4.toString());
                                                }
                                                StringBuilder sb5 = new StringBuilder(String.valueOf(capacity).length() + 17);
                                                sb5.append("end < start: ");
                                                sb5.append(capacity);
                                                sb5.append(" < 8");
                                                throw new IllegalArgumentException(sb5.toString());
                                            }
                                            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                                        }
                                        StringBuilder sb6 = new StringBuilder(String.valueOf(j6).length() + 63 + String.valueOf(j3).length());
                                        sb6.append("APK Signing Block sizes in header and footer do not match: ");
                                        sb6.append(j6);
                                        sb6.append(" vs ");
                                        sb6.append(j3);
                                        throw new Exception(sb6.toString());
                                    }
                                    StringBuilder sb7 = new StringBuilder(String.valueOf(j4).length() + 39);
                                    sb7.append("APK Signing Block offset out of range: ");
                                    sb7.append(j4);
                                    throw new Exception(sb7.toString());
                                }
                                StringBuilder sb8 = new StringBuilder(String.valueOf(j3).length() + 37);
                                sb8.append("APK Signing Block size out of range: ");
                                sb8.append(j3);
                                throw new Exception(sb8.toString());
                            }
                            throw new Exception("No APK Signing Block before ZIP Central Directory");
                        }
                        StringBuilder sb9 = new StringBuilder(String.valueOf(j2).length() + 67);
                        sb9.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                        sb9.append(j2);
                        throw new Exception(sb9.toString());
                    }
                    throw new Exception("ZIP Central Directory is not immediately followed by End of Central Directory");
                }
                StringBuilder sb10 = new StringBuilder(String.valueOf(j2).length() + 82 + String.valueOf(longValue).length());
                sb10.append("ZIP Central Directory offset out of range: ");
                sb10.append(j2);
                sb10.append(". ZIP End of Central Directory offset: ");
                sb10.append(longValue);
                throw new Exception(sb10.toString());
            }
            long length = randomAccessFile2.length();
            StringBuilder sb11 = new StringBuilder(String.valueOf(length).length() + 82);
            sb11.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
            sb11.append(length);
            sb11.append(" bytes");
            throw new Exception(sb11.toString());
        } catch (Throwable th3) {
            th = th3;
            try {
                randomAccessFile.close();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }

    public static X509Certificate[][] b(FileChannel fileChannel, zzaqm zzaqmVar) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer i = i(zzaqmVar.f4350a);
                int i2 = 0;
                while (i.hasRemaining()) {
                    i2++;
                    try {
                        arrayList.add(c(i(i), hashMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e) {
                        throw new SecurityException(androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(i2).length() + 37), "Failed to parse/verify signer #", i2, " block"), e);
                    }
                }
                if (i2 > 0) {
                    if (!hashMap.isEmpty()) {
                        long j = zzaqmVar.b;
                        long j2 = zzaqmVar.f4351c;
                        long j3 = zzaqmVar.d;
                        ByteBuffer byteBuffer = zzaqmVar.e;
                        if (!hashMap.isEmpty()) {
                            zzaql zzaqlVar = new zzaql(fileChannel, 0L, j);
                            zzaql zzaqlVar2 = new zzaql(fileChannel, j2, j3 - j2);
                            ByteBuffer duplicate = byteBuffer.duplicate();
                            duplicate.order(ByteOrder.LITTLE_ENDIAN);
                            zzaqr.b(duplicate);
                            int position = duplicate.position() + 16;
                            if (j >= 0 && j <= 4294967295L) {
                                duplicate.putInt(duplicate.position() + position, (int) j);
                                zzaqj zzaqjVar = new zzaqj(duplicate);
                                int size = hashMap.size();
                                int[] iArr = new int[size];
                                Iterator it = hashMap.keySet().iterator();
                                int i3 = 0;
                                while (it.hasNext()) {
                                    iArr[i3] = ((Integer) it.next()).intValue();
                                    i3++;
                                }
                                try {
                                    byte[][] d = d(iArr, new zzaqk[]{zzaqlVar, zzaqlVar2, zzaqjVar});
                                    for (int i4 = 0; i4 < size; i4++) {
                                        int i5 = iArr[i4];
                                        if (!MessageDigest.isEqual((byte[]) hashMap.get(Integer.valueOf(i5)), d[i4])) {
                                            throw new SecurityException(f(i5).concat(" digest of contents did not verify"));
                                        }
                                    }
                                    return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                                } catch (DigestException e2) {
                                    throw new SecurityException("Failed to compute digest(s) of contents", e2);
                                }
                            }
                            StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 27);
                            sb.append("uint32 value of out range: ");
                            sb.append(j);
                            throw new IllegalArgumentException(sb.toString());
                        }
                        throw new SecurityException("No digests provided");
                    }
                    throw new SecurityException("No content digests found");
                }
                throw new SecurityException("No signers found");
            } catch (IOException e3) {
                throw new SecurityException("Failed to read list of signers", e3);
            }
        } catch (CertificateException e4) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
    
        r11 = e(r6);
        r12 = e(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
    
        if (r11 == 1) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
    
        if (r12 == 1) goto L141;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate[] c(java.nio.ByteBuffer r22, java.util.HashMap r23, java.security.cert.CertificateFactory r24) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqq.c(java.nio.ByteBuffer, java.util.HashMap, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    public static byte[][] d(int[] iArr, zzaqk[] zzaqkVarArr) {
        long j;
        int i;
        int length;
        char c2;
        int i2 = 0;
        long j2 = 0;
        while (true) {
            j = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            if (i2 >= 3) {
                break;
            }
            j2 += (zzaqkVarArr[i2].zza() + 1048575) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            i2++;
        }
        if (j2 < 2097151) {
            byte[][] bArr = new byte[iArr.length];
            int i3 = 0;
            while (true) {
                length = iArr.length;
                c2 = 5;
                if (i3 >= length) {
                    break;
                }
                int i4 = (int) j2;
                byte[] bArr2 = new byte[(g(iArr[i3]) * i4) + 5];
                bArr2[0] = 90;
                k(bArr2, i4);
                bArr[i3] = bArr2;
                i3++;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            for (int i5 = 0; i5 < iArr.length; i5++) {
                String f = f(iArr[i5]);
                try {
                    messageDigestArr[i5] = MessageDigest.getInstance(f);
                } catch (NoSuchAlgorithmException e) {
                    throw new RuntimeException(f.concat(" digest not supported"), e);
                }
            }
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            for (i = 3; i6 < i; i = 3) {
                zzaqk zzaqkVar = zzaqkVarArr[i6];
                int i9 = i6;
                long zza = zzaqkVar.zza();
                long j3 = 0;
                while (zza > 0) {
                    char c3 = c2;
                    int i10 = i7;
                    int min = (int) Math.min(zza, j);
                    k(bArr3, min);
                    for (int i11 = 0; i11 < length; i11++) {
                        messageDigestArr[i11].update(bArr3);
                    }
                    try {
                        zzaqkVar.a(messageDigestArr, j3, min);
                        int i12 = 0;
                        while (i12 < iArr.length) {
                            int i13 = iArr[i12];
                            byte[] bArr4 = bArr[i12];
                            int g = g(i13);
                            zzaqk zzaqkVar2 = zzaqkVar;
                            MessageDigest messageDigest = messageDigestArr[i12];
                            long j4 = zza;
                            int digest = messageDigest.digest(bArr4, (i10 * g) + 5, g);
                            if (digest == g) {
                                i12++;
                                zzaqkVar = zzaqkVar2;
                                zza = j4;
                            } else {
                                String algorithm = messageDigest.getAlgorithm();
                                StringBuilder sb = new StringBuilder(String.valueOf(algorithm).length() + 35 + String.valueOf(digest).length());
                                sb.append("Unexpected output size of ");
                                sb.append(algorithm);
                                sb.append(" digest: ");
                                sb.append(digest);
                                throw new RuntimeException(sb.toString());
                            }
                        }
                        zzaqk zzaqkVar3 = zzaqkVar;
                        long j5 = min;
                        j3 += j5;
                        i7 = i10 + 1;
                        zza -= j5;
                        c2 = c3;
                        zzaqkVar = zzaqkVar3;
                        j = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                    } catch (IOException e2) {
                        throw new DigestException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i10).length() + 37 + String.valueOf(i8).length()), "Failed to digest chunk #", i10, " of section #", i8), e2);
                    }
                }
                i8++;
                i6 = i9 + 1;
                j = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            }
            byte[][] bArr5 = new byte[iArr.length];
            for (int i14 = 0; i14 < iArr.length; i14++) {
                int i15 = iArr[i14];
                byte[] bArr6 = bArr[i14];
                String f2 = f(i15);
                try {
                    bArr5[i14] = MessageDigest.getInstance(f2).digest(bArr6);
                } catch (NoSuchAlgorithmException e3) {
                    throw new RuntimeException(f2.concat(" digest not supported"), e3);
                }
            }
            return bArr5;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(j2).length() + 17);
        sb2.append("Too many chunks: ");
        sb2.append(j2);
        throw new DigestException(sb2.toString());
    }

    public static int e(int i) {
        if (i != 513) {
            if (i != 514) {
                if (i != 769) {
                    switch (i) {
                        case 257:
                        case 259:
                            return 1;
                        case 258:
                        case 260:
                            return 2;
                        default:
                            throw new IllegalArgumentException("Unknown signature algorithm: 0x".concat(String.valueOf(Long.toHexString(i))));
                    }
                }
                return 1;
            }
            return 2;
        }
        return 1;
    }

    public static String f(int i) {
        if (i != 1) {
            if (i == 2) {
                return "SHA-512";
            }
            throw new IllegalArgumentException(androidx.work.impl.workers.a.r(i, "Unknown content digest algorthm: ", new StringBuilder(String.valueOf(i).length() + 33)));
        }
        return "SHA-256";
    }

    public static int g(int i) {
        if (i != 1) {
            if (i == 2) {
                return 64;
            }
            throw new IllegalArgumentException(androidx.work.impl.workers.a.r(i, "Unknown content digest algorthm: ", new StringBuilder(String.valueOf(i).length() + 33)));
        }
        return 32;
    }

    public static ByteBuffer h(ByteBuffer byteBuffer, int i) {
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (i2 >= position && i2 <= limit) {
            byteBuffer.limit(i2);
            try {
                ByteBuffer slice = byteBuffer.slice();
                slice.order(byteBuffer.order());
                byteBuffer.position(i2);
                return slice;
            } finally {
                byteBuffer.limit(limit);
            }
        }
        throw new BufferUnderflowException();
    }

    public static ByteBuffer i(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i >= 0) {
                if (i <= byteBuffer.remaining()) {
                    return h(byteBuffer, i);
                }
                int remaining = byteBuffer.remaining();
                throw new IOException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 79 + String.valueOf(remaining).length()), "Length-prefixed field longer than remaining buffer. Field length: ", i, ", remaining: ", remaining));
            }
            throw new IllegalArgumentException("Negative length");
        }
        int remaining2 = byteBuffer.remaining();
        throw new IOException(androidx.work.impl.workers.a.r(remaining2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: ", new StringBuilder(String.valueOf(remaining2).length() + 82)));
    }

    public static byte[] j(ByteBuffer byteBuffer) {
        int i = byteBuffer.getInt();
        if (i >= 0) {
            if (i <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i];
                byteBuffer.get(bArr);
                return bArr;
            }
            int remaining = byteBuffer.remaining();
            throw new IOException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 68 + String.valueOf(remaining).length()), "Underflow while reading length-prefixed value. Length: ", i, ", available: ", remaining));
        }
        throw new IOException("Negative length");
    }

    public static void k(byte[] bArr, int i) {
        bArr[1] = (byte) (i & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[2] = (byte) ((i >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[3] = (byte) ((i >>> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[4] = (byte) (i >> 24);
    }
}
