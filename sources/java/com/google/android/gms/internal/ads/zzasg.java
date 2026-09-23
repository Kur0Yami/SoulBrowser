package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public final class zzasg implements zzaqu {

    /* renamed from: c, reason: collision with root package name */
    public final zzasf f4388c;

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f4387a = new LinkedHashMap(16, 0.75f, true);
    public long b = 0;
    public final int d = 5242880;

    public zzasg(zzasf zzasfVar) {
        this.f4388c = zzasfVar;
    }

    public static byte[] c(zzase zzaseVar, long j) {
        long j2 = zzaseVar.f4386c - zzaseVar.f;
        if (j >= 0 && j <= j2) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(zzaseVar).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 33 + String.valueOf(j2).length());
        a.j(sb, "streamToBytes length=", j, ", maxLength=");
        sb.append(j2);
        throw new IOException(sb.toString());
    }

    public static void d(BufferedOutputStream bufferedOutputStream, int i) {
        bufferedOutputStream.write(i & KotlinVersion.MAX_COMPONENT_VALUE);
        bufferedOutputStream.write((i >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        bufferedOutputStream.write((i >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
        bufferedOutputStream.write((i >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    public static int e(InputStream inputStream) {
        return (m(inputStream) << 24) | m(inputStream) | (m(inputStream) << 8) | (m(inputStream) << 16);
    }

    public static void f(BufferedOutputStream bufferedOutputStream, long j) {
        bufferedOutputStream.write((byte) j);
        bufferedOutputStream.write((byte) (j >>> 8));
        bufferedOutputStream.write((byte) (j >>> 16));
        bufferedOutputStream.write((byte) (j >>> 24));
        bufferedOutputStream.write((byte) (j >>> 32));
        bufferedOutputStream.write((byte) (j >>> 40));
        bufferedOutputStream.write((byte) (j >>> 48));
        bufferedOutputStream.write((byte) (j >>> 56));
    }

    public static long g(InputStream inputStream) {
        return (m(inputStream) & 255) | ((m(inputStream) & 255) << 8) | ((m(inputStream) & 255) << 16) | ((m(inputStream) & 255) << 24) | ((m(inputStream) & 255) << 32) | ((m(inputStream) & 255) << 40) | ((m(inputStream) & 255) << 48) | ((m(inputStream) & 255) << 56);
    }

    public static void h(BufferedOutputStream bufferedOutputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        f(bufferedOutputStream, length);
        bufferedOutputStream.write(bytes, 0, length);
    }

    public static String k(zzase zzaseVar) {
        return new String(c(zzaseVar, g(zzaseVar)), "UTF-8");
    }

    public static int m(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    public static final String n(String str) {
        int length = str.length() >> 1;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())).concat(String.valueOf(String.valueOf(str.substring(length).hashCode())));
    }

    public final synchronized void a(String str) {
        boolean delete = b(str).delete();
        zzasd zzasdVar = (zzasd) this.f4387a.remove(str);
        if (zzasdVar != null) {
            this.b -= zzasdVar.f4384a;
        }
        if (!delete) {
            zzarw.b("Could not delete cache entry for key=%s, filename=%s", str, n(str));
        }
    }

    public final File b(String str) {
        return new File(this.f4388c.zza(), n(str));
    }

    @Override // com.google.android.gms.internal.ads.zzaqu
    public final synchronized void i(String str) {
        zzaqt zza = zza(str);
        if (zza != null) {
            zza.f = 0L;
            zza.e = 0L;
            j(str, zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqu
    public final synchronized void j(String str, zzaqt zzaqtVar) {
        int i;
        int i2;
        long j;
        char c2;
        float f;
        try {
            long j2 = this.b;
            int length = zzaqtVar.f4353a.length;
            long j3 = j2 + length;
            int i3 = this.d;
            float f2 = 0.9f;
            if (j3 <= i3 || length <= i3 * 0.9f) {
                File b = b(str);
                int i4 = 0;
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(b));
                    zzasd zzasdVar = new zzasd(str, zzaqtVar);
                    try {
                        try {
                            d(bufferedOutputStream, 538247942);
                            h(bufferedOutputStream, str);
                            String str2 = zzasdVar.f4385c;
                            if (str2 == null) {
                                str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                            }
                            h(bufferedOutputStream, str2);
                            f(bufferedOutputStream, zzasdVar.d);
                            f(bufferedOutputStream, zzasdVar.e);
                            f(bufferedOutputStream, zzasdVar.f);
                            f(bufferedOutputStream, zzasdVar.g);
                            List<zzarc> list = zzasdVar.h;
                            if (list != null) {
                                d(bufferedOutputStream, list.size());
                                for (zzarc zzarcVar : list) {
                                    h(bufferedOutputStream, zzarcVar.f4362a);
                                    h(bufferedOutputStream, zzarcVar.b);
                                }
                            } else {
                                d(bufferedOutputStream, 0);
                            }
                            bufferedOutputStream.flush();
                            bufferedOutputStream.write(zzaqtVar.f4353a);
                            bufferedOutputStream.close();
                            zzasdVar.f4384a = b.length();
                            l(str, zzasdVar);
                            long j4 = this.b;
                            int i5 = this.d;
                            if (j4 >= i5) {
                                boolean z = zzarw.f4376a;
                                if (z) {
                                    zzarw.a("Pruning old cache entries.", new Object[0]);
                                }
                                long j5 = this.b;
                                long elapsedRealtime = SystemClock.elapsedRealtime();
                                Iterator it = this.f4387a.entrySet().iterator();
                                int i6 = 0;
                                while (true) {
                                    if (it.hasNext()) {
                                        zzasd zzasdVar2 = (zzasd) ((Map.Entry) it.next()).getValue();
                                        String str3 = zzasdVar2.b;
                                        if (b(str3).delete()) {
                                            i2 = i4;
                                            j = j5;
                                            f = f2;
                                            c2 = 1;
                                            this.b -= zzasdVar2.f4384a;
                                        } else {
                                            f = f2;
                                            i2 = i4;
                                            j = j5;
                                            c2 = 1;
                                            String n = n(str3);
                                            Object[] objArr = new Object[2];
                                            objArr[i2] = str3;
                                            objArr[1] = n;
                                            zzarw.b("Could not delete cache entry for key=%s, filename=%s", objArr);
                                        }
                                        it.remove();
                                        i6++;
                                        if (((float) this.b) < i5 * f) {
                                            break;
                                        }
                                        j5 = j;
                                        i4 = i2;
                                        f2 = f;
                                    } else {
                                        i2 = i4;
                                        j = j5;
                                        c2 = 1;
                                        break;
                                    }
                                }
                                if (z) {
                                    Integer valueOf = Integer.valueOf(i6);
                                    Long valueOf2 = Long.valueOf(this.b - j);
                                    Long valueOf3 = Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime);
                                    Object[] objArr2 = new Object[3];
                                    objArr2[i2] = valueOf;
                                    objArr2[c2] = valueOf2;
                                    objArr2[2] = valueOf3;
                                    zzarw.a("pruned %d files, %d bytes, %d ms", objArr2);
                                }
                            }
                        } catch (IOException unused) {
                            if (!b.delete()) {
                                Object[] objArr3 = new Object[1];
                                objArr3[i] = b.getAbsolutePath();
                                zzarw.b("Could not clean up file %s", objArr3);
                            }
                            if (!this.f4388c.zza().exists()) {
                                zzarw.b("Re-initializing cache after external clearing.", new Object[i]);
                                this.f4387a.clear();
                                this.b = 0L;
                                zzc();
                            }
                        }
                    } catch (IOException e) {
                        zzarw.b("%s", e.toString());
                        bufferedOutputStream.close();
                        zzarw.b("Failed to write header for %s", b.getAbsolutePath());
                        throw new IOException();
                    }
                } catch (IOException unused2) {
                    i = i4;
                }
            }
        } finally {
        }
    }

    public final void l(String str, zzasd zzasdVar) {
        LinkedHashMap linkedHashMap = this.f4387a;
        if (!linkedHashMap.containsKey(str)) {
            this.b += zzasdVar.f4384a;
        } else {
            this.b = (zzasdVar.f4384a - ((zzasd) linkedHashMap.get(str)).f4384a) + this.b;
        }
        linkedHashMap.put(str, zzasdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqu
    public final synchronized zzaqt zza(String str) {
        zzasd zzasdVar = (zzasd) this.f4387a.get(str);
        if (zzasdVar == null) {
            return null;
        }
        File b = b(str);
        try {
            zzase zzaseVar = new zzase(new BufferedInputStream(new FileInputStream(b)), b.length());
            try {
                String str2 = zzasd.a(zzaseVar).b;
                if (!TextUtils.equals(str, str2)) {
                    zzarw.b("%s: key=%s, found=%s", b.getAbsolutePath(), str, str2);
                    zzasd zzasdVar2 = (zzasd) this.f4387a.remove(str);
                    if (zzasdVar2 != null) {
                        this.b -= zzasdVar2.f4384a;
                    }
                    return null;
                }
                byte[] c2 = c(zzaseVar, zzaseVar.f4386c - zzaseVar.f);
                zzaqt zzaqtVar = new zzaqt();
                zzaqtVar.f4353a = c2;
                zzaqtVar.b = zzasdVar.f4385c;
                zzaqtVar.f4354c = zzasdVar.d;
                zzaqtVar.d = zzasdVar.e;
                zzaqtVar.e = zzasdVar.f;
                zzaqtVar.f = zzasdVar.g;
                List<zzarc> list = zzasdVar.h;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (zzarc zzarcVar : list) {
                    treeMap.put(zzarcVar.f4362a, zzarcVar.b);
                }
                zzaqtVar.g = treeMap;
                zzaqtVar.h = DesugarCollections.unmodifiableList(list);
                return zzaqtVar;
            } finally {
                zzaseVar.close();
            }
        } catch (IOException e) {
            zzarw.b("%s: %s", b.getAbsolutePath(), e.toString());
            a(str);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqu
    public final synchronized void zzc() {
        File zza = this.f4388c.zza();
        if (!zza.exists()) {
            if (!zza.mkdirs()) {
                zzarw.c("Unable to create cache dir %s", zza.getAbsolutePath());
            }
        } else {
            File[] listFiles = zza.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        long length = file.length();
                        zzase zzaseVar = new zzase(new BufferedInputStream(new FileInputStream(file)), length);
                        try {
                            zzasd a2 = zzasd.a(zzaseVar);
                            a2.f4384a = length;
                            l(a2.b, a2);
                            zzaseVar.close();
                        } catch (Throwable th) {
                            zzaseVar.close();
                            throw th;
                            break;
                        }
                    } catch (IOException unused) {
                        file.delete();
                    }
                }
            }
        }
    }

    public zzasg(File file) {
        this.f4388c = new zzasc(this, file);
    }
}
