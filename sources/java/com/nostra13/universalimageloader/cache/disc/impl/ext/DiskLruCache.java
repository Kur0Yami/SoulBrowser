package com.nostra13.universalimageloader.cache.disc.impl.ext;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainUtil;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class DiskLruCache implements Closeable {
    public static final Pattern u = Pattern.compile("[a-z\\d_-]{1,64}");
    public static final OutputStream v = new OutputStream();

    /* renamed from: c, reason: collision with root package name */
    public final File f20940c;
    public final File f;
    public final File g;
    public final File h;
    public final long j;
    public final int k;
    public BufferedWriter o;
    public int q;
    public long m = 0;
    public int n = 0;
    public final LinkedHashMap p = new LinkedHashMap(0, 0.75f, true);
    public long r = 0;
    public final ThreadPoolExecutor s = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    public final Callable t = new Callable<Void>() { // from class: com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        public final Void call() {
            synchronized (DiskLruCache.this) {
                try {
                    DiskLruCache diskLruCache = DiskLruCache.this;
                    if (diskLruCache.o != null) {
                        diskLruCache.A();
                        DiskLruCache.this.z();
                        if (DiskLruCache.this.j()) {
                            DiskLruCache.this.o();
                            DiskLruCache.this.q = 0;
                        }
                        return null;
                    }
                    return null;
                } finally {
                }
            }
        }
    };
    public final int i = 1;
    public final int l = 1;

    /* renamed from: com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends OutputStream {
        @Override // java.io.OutputStream
        public final void write(int i) {
        }
    }

    /* loaded from: classes3.dex */
    public final class Editor {

        /* renamed from: a, reason: collision with root package name */
        public final Entry f20942a;
        public final boolean[] b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f20943c;

        public Editor(Entry entry) {
            boolean[] zArr;
            this.f20942a = entry;
            if (entry.f20946c) {
                zArr = null;
            } else {
                zArr = new boolean[DiskLruCache.this.l];
            }
            this.b = zArr;
        }

        public final void a() {
            DiskLruCache.a(DiskLruCache.this, this, false);
        }

        public final void b() {
            boolean z = this.f20943c;
            DiskLruCache diskLruCache = DiskLruCache.this;
            if (z) {
                DiskLruCache.a(diskLruCache, this, false);
                diskLruCache.u(this.f20942a.f20945a);
            } else {
                DiskLruCache.a(diskLruCache, this, true);
            }
        }

        public final OutputStream c() {
            OutputStream c1;
            FaultHidingOutputStream faultHidingOutputStream;
            synchronized (DiskLruCache.this) {
                try {
                    Entry entry = this.f20942a;
                    if (entry.d == this) {
                        if (!entry.f20946c) {
                            this.b[0] = true;
                        }
                        File b = entry.b(0);
                        try {
                            c1 = MainUtil.c1(b.getPath(), false);
                        } catch (Exception unused) {
                            DiskLruCache.this.f20940c.mkdirs();
                            try {
                                c1 = MainUtil.c1(b.getPath(), false);
                            } catch (Exception unused2) {
                                return DiskLruCache.v;
                            }
                        }
                        faultHidingOutputStream = new FaultHidingOutputStream(c1);
                    } else {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return faultHidingOutputStream;
        }

        /* loaded from: classes3.dex */
        public class FaultHidingOutputStream extends FilterOutputStream {
            public FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    Editor.this.f20943c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    Editor.this.f20943c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    Editor.this.f20943c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    Editor.this.f20943c = true;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public final class Entry {

        /* renamed from: a, reason: collision with root package name */
        public final String f20945a;
        public final long[] b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f20946c;
        public Editor d;

        public Entry(String str) {
            this.f20945a = str;
            this.b = new long[DiskLruCache.this.l];
        }

        public final File a(int i) {
            return new File(DiskLruCache.this.f20940c, this.f20945a + RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i);
        }

        public final File b(int i) {
            return new File(DiskLruCache.this.f20940c, this.f20945a + RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i + ".tmp");
        }

        public final String c() {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    public final class Snapshot implements Closeable {

        /* renamed from: c, reason: collision with root package name */
        public final File[] f20947c;
        public final InputStream[] f;

        public Snapshot(File[] fileArr, InputStream[] inputStreamArr) {
            this.f20947c = fileArr;
            this.f = inputStreamArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (InputStream inputStream : this.f) {
                Charset charset = Util.f20952a;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (RuntimeException e) {
                        throw e;
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    public DiskLruCache(File file, long j, int i) {
        this.f20940c = file;
        this.f = new File(file, "journal");
        this.g = new File(file, "journal.tmp");
        this.h = new File(file, "journal.bkp");
        this.j = j;
        this.k = i;
    }

    public static void B(String str) {
        if (u.matcher(str).matches()) {
        } else {
            throw new IllegalArgumentException(a.l("keys must match regex [a-z0-9_-]{1,64}: \"", str, "\""));
        }
    }

    public static void a(DiskLruCache diskLruCache, Editor editor, boolean z) {
        synchronized (diskLruCache) {
            Entry entry = editor.f20942a;
            if (entry.d == editor) {
                if (z && !entry.f20946c) {
                    for (int i = 0; i < diskLruCache.l; i++) {
                        if (editor.b[i]) {
                            if (!entry.b(i).exists()) {
                                editor.a();
                                return;
                            }
                        } else {
                            editor.a();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                        }
                    }
                }
                for (int i2 = 0; i2 < diskLruCache.l; i2++) {
                    File b = entry.b(i2);
                    if (z) {
                        if (b.exists()) {
                            File a2 = entry.a(i2);
                            b.renameTo(a2);
                            long j = entry.b[i2];
                            long length = a2.length();
                            entry.b[i2] = length;
                            diskLruCache.m = (diskLruCache.m - j) + length;
                            diskLruCache.n++;
                        }
                    } else {
                        d(b);
                    }
                }
                diskLruCache.q++;
                entry.d = null;
                if (entry.f20946c | z) {
                    entry.f20946c = true;
                    diskLruCache.o.write("CLEAN " + entry.f20945a + entry.c() + '\n');
                    if (z) {
                        diskLruCache.r++;
                    }
                } else {
                    diskLruCache.p.remove(entry.f20945a);
                    diskLruCache.o.write("REMOVE " + entry.f20945a + '\n');
                }
                diskLruCache.o.flush();
                if (diskLruCache.m > diskLruCache.j || diskLruCache.n > diskLruCache.k || diskLruCache.j()) {
                    diskLruCache.s.submit(diskLruCache.t);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    public static void d(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static DiskLruCache k(File file, long j, int i) {
        if (j > 0) {
            if (i > 0) {
                File file2 = new File(file, "journal.bkp");
                if (file2.exists()) {
                    File file3 = new File(file, "journal");
                    if (file3.exists()) {
                        file2.delete();
                    } else {
                        v(file2, file3, false);
                    }
                }
                DiskLruCache diskLruCache = new DiskLruCache(file, j, i);
                File file4 = diskLruCache.f;
                if (file4.exists()) {
                    try {
                        diskLruCache.m();
                        diskLruCache.l();
                        diskLruCache.o = new BufferedWriter(new OutputStreamWriter(MainUtil.c1(file4.getPath(), true), Util.f20952a));
                        return diskLruCache;
                    } catch (IOException e) {
                        System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                        diskLruCache.b(0, 0L);
                        Util.a(diskLruCache.f20940c);
                    }
                }
                file.mkdirs();
                DiskLruCache diskLruCache2 = new DiskLruCache(file, j, i);
                diskLruCache2.o();
                return diskLruCache2;
            }
            throw new IllegalArgumentException("maxFileCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public static void v(File file, File file2, boolean z) {
        if (z) {
            d(file2);
        }
        if (file.renameTo(file2)) {
        } else {
            throw new IOException();
        }
    }

    public final void A() {
        while (this.m > this.j) {
            u((String) ((Map.Entry) this.p.entrySet().iterator().next()).getKey());
        }
    }

    public final synchronized void b(int i, long j) {
        try {
            if (this.o == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.p.values());
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                Editor editor = ((Entry) obj).d;
                if (editor != null) {
                    editor.a();
                }
            }
            while (this.m > j) {
                u((String) ((Map.Entry) this.p.entrySet().iterator().next()).getKey());
            }
            while (this.n > i) {
                u((String) ((Map.Entry) this.p.entrySet().iterator().next()).getKey());
            }
            this.o.close();
            this.o = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.o == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.p.values());
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Editor editor = ((Entry) obj).d;
                if (editor != null) {
                    editor.a();
                }
            }
            A();
            z();
            this.o.close();
            this.o = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Editor e(String str) {
        synchronized (this) {
            try {
                if (this.o == null) {
                    return null;
                }
                B(str);
                Entry entry = (Entry) this.p.get(str);
                if (entry == null) {
                    entry = new Entry(str);
                    this.p.put(str, entry);
                } else if (entry.d != null) {
                    return null;
                }
                Editor editor = new Editor(entry);
                entry.d = editor;
                this.o.write("DIRTY " + str + '\n');
                this.o.flush();
                return editor;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized Snapshot f(String str) {
        InputStream inputStream;
        if (this.o == null) {
            return null;
        }
        B(str);
        Entry entry = (Entry) this.p.get(str);
        if (entry == null) {
            return null;
        }
        if (!entry.f20946c) {
            return null;
        }
        int i = this.l;
        File[] fileArr = new File[i];
        InputStream[] inputStreamArr = new InputStream[i];
        for (int i2 = 0; i2 < this.l; i2++) {
            try {
                File a2 = entry.a(i2);
                fileArr[i2] = a2;
                inputStreamArr[i2] = MainUtil.a1(a2.getPath());
            } catch (Exception unused) {
                for (int i3 = 0; i3 < this.l && (inputStream = inputStreamArr[i3]) != null; i3++) {
                    Charset charset = Util.f20952a;
                    try {
                        inputStream.close();
                    } catch (RuntimeException e) {
                        throw e;
                    } catch (Exception unused2) {
                    }
                }
                return null;
            }
        }
        this.q++;
        this.o.append((CharSequence) ("READ " + str + '\n'));
        if (j()) {
            this.s.submit(this.t);
        }
        return new Snapshot(fileArr, inputStreamArr);
    }

    public final synchronized int i() {
        return this.k;
    }

    public final boolean j() {
        int i = this.q;
        if (i >= 2000 && i >= this.p.size()) {
            return true;
        }
        return false;
    }

    public final void l() {
        d(this.g);
        Iterator it = this.p.values().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            Editor editor = entry.d;
            int i = this.l;
            int i2 = 0;
            if (editor == null) {
                while (i2 < i) {
                    this.m += entry.b[i2];
                    this.n++;
                    i2++;
                }
            } else {
                entry.d = null;
                while (i2 < i) {
                    d(entry.a(i2));
                    d(entry.b(i2));
                    i2++;
                }
                it.remove();
            }
        }
    }

    public final void m() {
        StrictLineReader strictLineReader = new StrictLineReader(MainUtil.a1(this.f.getPath()), Util.f20952a);
        try {
            String a2 = strictLineReader.a();
            String a3 = strictLineReader.a();
            String a4 = strictLineReader.a();
            String a5 = strictLineReader.a();
            String a6 = strictLineReader.a();
            if ("libcore.io.DiskLruCache".equals(a2) && "1".equals(a3) && Integer.toString(this.i).equals(a4) && Integer.toString(this.l).equals(a5) && RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(a6)) {
                int i = 0;
                while (true) {
                    try {
                        n(strictLineReader.a());
                        i++;
                    } catch (EOFException unused) {
                        this.q = i - this.p.size();
                        try {
                            strictLineReader.close();
                            return;
                        } catch (RuntimeException e) {
                            throw e;
                        } catch (Exception unused2) {
                            return;
                        }
                    }
                }
            } else {
                throw new IOException("unexpected journal header: [" + a2 + ", " + a3 + ", " + a5 + ", " + a6 + "]");
            }
        } catch (Throwable th) {
            try {
                strictLineReader.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final void n(String str) {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            LinkedHashMap linkedHashMap = this.p;
            if (indexOf2 == -1) {
                substring = str.substring(i);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    linkedHashMap.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i, indexOf2);
            }
            Entry entry = (Entry) linkedHashMap.get(substring);
            if (entry == null) {
                entry = new Entry(substring);
                linkedHashMap.put(substring, entry);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split2 = str.substring(indexOf2 + 1).split(" ");
                entry.f20946c = true;
                entry.d = null;
                if (split2.length == DiskLruCache.this.l) {
                    for (int i2 = 0; i2 < split2.length; i2++) {
                        try {
                            entry.b[i2] = Long.parseLong(split2[i2]);
                        } catch (NumberFormatException unused) {
                            throw new IOException("unexpected journal line: " + Arrays.toString(split2));
                        }
                    }
                    return;
                }
                throw new IOException("unexpected journal line: " + Arrays.toString(split2));
            }
            if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                entry.d = new Editor(entry);
                return;
            } else if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
                return;
            } else {
                throw new IOException("unexpected journal line: ".concat(str));
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    public final synchronized void o() {
        try {
            BufferedWriter bufferedWriter = this.o;
            if (bufferedWriter != null) {
                bufferedWriter.close();
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(MainUtil.c1(this.g.getPath(), false), Util.f20952a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.i));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.l));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (Entry entry : this.p.values()) {
                    if (entry.d != null) {
                        bufferedWriter2.write("DIRTY " + entry.f20945a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + entry.f20945a + entry.c() + '\n');
                    }
                }
                bufferedWriter2.close();
                if (this.f.exists()) {
                    v(this.f, this.h, true);
                }
                v(this.g, this.f, false);
                this.h.delete();
                this.o = new BufferedWriter(new OutputStreamWriter(MainUtil.c1(this.f.getPath(), true), Util.f20952a));
            } catch (Throwable th) {
                bufferedWriter2.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized boolean u(String str) {
        try {
            if (this.o == null) {
                return false;
            }
            B(str);
            Entry entry = (Entry) this.p.get(str);
            if (entry != null && entry.d == null) {
                for (int i = 0; i < this.l; i++) {
                    File a2 = entry.a(i);
                    if (a2.exists() && !a2.delete()) {
                        throw new IOException("failed to delete " + a2);
                    }
                    long j = this.m;
                    long[] jArr = entry.b;
                    this.m = j - jArr[i];
                    this.n--;
                    jArr[i] = 0;
                }
                this.q++;
                this.o.append((CharSequence) ("REMOVE " + str + '\n'));
                this.p.remove(str);
                if (j()) {
                    this.s.submit(this.t);
                }
                return true;
            }
            return false;
        } finally {
        }
    }

    public final void z() {
        while (this.n > this.k) {
            u((String) ((Map.Entry) this.p.entrySet().iterator().next()).getKey());
        }
    }
}
