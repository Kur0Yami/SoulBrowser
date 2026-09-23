package com.bumptech.glide.disklrucache;

import android.os.Build;
import android.os.StrictMode;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class DiskLruCache implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final File f2097c;
    public final File f;
    public final File g;
    public final File h;
    public final long j;
    public BufferedWriter m;
    public int o;
    public long l = 0;
    public final LinkedHashMap n = new LinkedHashMap(0, 0.75f, true);
    public long p = 0;
    public final ThreadPoolExecutor q = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), (ThreadFactory) new Object());
    public final Callable r = new Callable<Void>() { // from class: com.bumptech.glide.disklrucache.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        public final Void call() {
            synchronized (DiskLruCache.this) {
                try {
                    DiskLruCache diskLruCache = DiskLruCache.this;
                    if (diskLruCache.m != null) {
                        diskLruCache.z();
                        if (DiskLruCache.this.k()) {
                            DiskLruCache.this.u();
                            DiskLruCache.this.o = 0;
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
    public final int k = 1;

    /* loaded from: classes.dex */
    public static final class DiskLruCacheThreadFactory implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public final synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    /* loaded from: classes.dex */
    public final class Editor {

        /* renamed from: a, reason: collision with root package name */
        public final Entry f2099a;
        public final boolean[] b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2100c;

        public Editor(Entry entry) {
            boolean[] zArr;
            this.f2099a = entry;
            if (entry.e) {
                zArr = null;
            } else {
                zArr = new boolean[DiskLruCache.this.k];
            }
            this.b = zArr;
        }

        public final void a() {
            DiskLruCache.a(DiskLruCache.this, this, false);
        }

        public final File b() {
            File file;
            synchronized (DiskLruCache.this) {
                try {
                    Entry entry = this.f2099a;
                    if (entry.f == this) {
                        if (!entry.e) {
                            this.b[0] = true;
                        }
                        file = entry.d[0];
                        DiskLruCache.this.f2097c.mkdirs();
                    } else {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return file;
        }
    }

    /* loaded from: classes.dex */
    public final class Entry {

        /* renamed from: a, reason: collision with root package name */
        public final String f2101a;
        public final long[] b;

        /* renamed from: c, reason: collision with root package name */
        public final File[] f2102c;
        public final File[] d;
        public boolean e;
        public Editor f;

        public Entry(String str) {
            this.f2101a = str;
            int i = DiskLruCache.this.k;
            File file = DiskLruCache.this.f2097c;
            this.b = new long[i];
            this.f2102c = new File[i];
            this.d = new File[i];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(i2);
                this.f2102c[i2] = new File(file, sb.toString());
                sb.append(".tmp");
                this.d[i2] = new File(file, sb.toString());
                sb.setLength(length);
            }
        }

        public final String a() {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public final class Value {

        /* renamed from: a, reason: collision with root package name */
        public final File[] f2103a;

        public Value(File[] fileArr) {
            this.f2103a = fileArr;
        }
    }

    /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    public DiskLruCache(File file, long j) {
        this.f2097c = file;
        this.f = new File(file, "journal");
        this.g = new File(file, "journal.tmp");
        this.h = new File(file, "journal.bkp");
        this.j = j;
    }

    public static void a(DiskLruCache diskLruCache, Editor editor, boolean z) {
        synchronized (diskLruCache) {
            Entry entry = editor.f2099a;
            if (entry.f == editor) {
                if (z && !entry.e) {
                    for (int i = 0; i < diskLruCache.k; i++) {
                        if (editor.b[i]) {
                            if (!entry.d[i].exists()) {
                                editor.a();
                                return;
                            }
                        } else {
                            editor.a();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                        }
                    }
                }
                for (int i2 = 0; i2 < diskLruCache.k; i2++) {
                    File file = entry.d[i2];
                    if (z) {
                        if (file.exists()) {
                            File file2 = entry.f2102c[i2];
                            file.renameTo(file2);
                            long j = entry.b[i2];
                            long length = file2.length();
                            entry.b[i2] = length;
                            diskLruCache.l = (diskLruCache.l - j) + length;
                        }
                    } else {
                        e(file);
                    }
                }
                diskLruCache.o++;
                entry.f = null;
                if (entry.e | z) {
                    entry.e = true;
                    diskLruCache.m.append((CharSequence) "CLEAN");
                    diskLruCache.m.append(' ');
                    diskLruCache.m.append((CharSequence) entry.f2101a);
                    diskLruCache.m.append((CharSequence) entry.a());
                    diskLruCache.m.append('\n');
                    if (z) {
                        diskLruCache.p++;
                    }
                } else {
                    diskLruCache.n.remove(entry.f2101a);
                    diskLruCache.m.append((CharSequence) "REMOVE");
                    diskLruCache.m.append(' ');
                    diskLruCache.m.append((CharSequence) entry.f2101a);
                    diskLruCache.m.append('\n');
                }
                i(diskLruCache.m);
                if (diskLruCache.l > diskLruCache.j || diskLruCache.k()) {
                    diskLruCache.q.submit(diskLruCache.r);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    public static void b(BufferedWriter bufferedWriter) {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void e(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void i(BufferedWriter bufferedWriter) {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static DiskLruCache l(File file, long j) {
        if (j > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    v(file2, file3, false);
                }
            }
            DiskLruCache diskLruCache = new DiskLruCache(file, j);
            if (diskLruCache.f.exists()) {
                try {
                    diskLruCache.n();
                    diskLruCache.m();
                    return diskLruCache;
                } catch (IOException e) {
                    System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    diskLruCache.d();
                }
            }
            file.mkdirs();
            DiskLruCache diskLruCache2 = new DiskLruCache(file, j);
            diskLruCache2.u();
            return diskLruCache2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public static void v(File file, File file2, boolean z) {
        if (z) {
            e(file2);
        }
        if (file.renameTo(file2)) {
        } else {
            throw new IOException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.m == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.n.values());
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Editor editor = ((Entry) obj).f;
                if (editor != null) {
                    editor.a();
                }
            }
            z();
            b(this.m);
            this.m = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void d() {
        close();
        Util.a(this.f2097c);
    }

    public final Editor f(String str) {
        synchronized (this) {
            try {
                if (this.m != null) {
                    Entry entry = (Entry) this.n.get(str);
                    if (entry == null) {
                        entry = new Entry(str);
                        this.n.put(str, entry);
                    } else if (entry.f != null) {
                        return null;
                    }
                    Editor editor = new Editor(entry);
                    entry.f = editor;
                    this.m.append((CharSequence) "DIRTY");
                    this.m.append(' ');
                    this.m.append((CharSequence) str);
                    this.m.append('\n');
                    i(this.m);
                    return editor;
                }
                throw new IllegalStateException("cache is closed");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized Value j(String str) {
        if (this.m != null) {
            Entry entry = (Entry) this.n.get(str);
            if (entry == null) {
                return null;
            }
            if (!entry.e) {
                return null;
            }
            for (File file : entry.f2102c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.o++;
            this.m.append((CharSequence) "READ");
            this.m.append(' ');
            this.m.append((CharSequence) str);
            this.m.append('\n');
            if (k()) {
                this.q.submit(this.r);
            }
            return new Value(entry.f2102c);
        }
        throw new IllegalStateException("cache is closed");
    }

    public final boolean k() {
        int i = this.o;
        if (i >= 2000 && i >= this.n.size()) {
            return true;
        }
        return false;
    }

    public final void m() {
        e(this.g);
        Iterator it = this.n.values().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            Editor editor = entry.f;
            int i = this.k;
            int i2 = 0;
            if (editor == null) {
                while (i2 < i) {
                    this.l += entry.b[i2];
                    i2++;
                }
            } else {
                entry.f = null;
                while (i2 < i) {
                    e(entry.f2102c[i2]);
                    e(entry.d[i2]);
                    i2++;
                }
                it.remove();
            }
        }
    }

    public final void n() {
        File file = this.f;
        StrictLineReader strictLineReader = new StrictLineReader(new FileInputStream(file), Util.f2106a);
        try {
            String a2 = strictLineReader.a();
            String a3 = strictLineReader.a();
            String a4 = strictLineReader.a();
            String a5 = strictLineReader.a();
            String a6 = strictLineReader.a();
            if ("libcore.io.DiskLruCache".equals(a2) && "1".equals(a3) && Integer.toString(this.i).equals(a4) && Integer.toString(this.k).equals(a5) && RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(a6)) {
                int i = 0;
                while (true) {
                    try {
                        o(strictLineReader.a());
                        i++;
                    } catch (EOFException unused) {
                        this.o = i - this.n.size();
                        if (strictLineReader.i == -1) {
                            u();
                        } else {
                            this.m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), Util.f2106a));
                        }
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

    public final void o(String str) {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            LinkedHashMap linkedHashMap = this.n;
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
                entry.e = true;
                entry.f = null;
                if (split2.length == DiskLruCache.this.k) {
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
                entry.f = new Editor(entry);
                return;
            } else if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
                return;
            } else {
                throw new IOException("unexpected journal line: ".concat(str));
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    public final synchronized void u() {
        try {
            BufferedWriter bufferedWriter = this.m;
            if (bufferedWriter != null) {
                b(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.g), Util.f2106a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.i));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.k));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (Entry entry : this.n.values()) {
                    if (entry.f != null) {
                        bufferedWriter2.write("DIRTY " + entry.f2101a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + entry.f2101a + entry.a() + '\n');
                    }
                }
                b(bufferedWriter2);
                if (this.f.exists()) {
                    v(this.f, this.h, true);
                }
                v(this.g, this.f, false);
                this.h.delete();
                this.m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f, true), Util.f2106a));
            } catch (Throwable th) {
                b(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void z() {
        while (this.l > this.j) {
            String str = (String) ((Map.Entry) this.n.entrySet().iterator().next()).getKey();
            synchronized (this) {
                try {
                    if (this.m != null) {
                        Entry entry = (Entry) this.n.get(str);
                        if (entry != null && entry.f == null) {
                            for (int i = 0; i < this.k; i++) {
                                File file = entry.f2102c[i];
                                if (file.exists() && !file.delete()) {
                                    throw new IOException("failed to delete " + file);
                                }
                                long j = this.l;
                                long[] jArr = entry.b;
                                this.l = j - jArr[i];
                                jArr[i] = 0;
                            }
                            this.o++;
                            this.m.append((CharSequence) "REMOVE");
                            this.m.append(' ');
                            this.m.append((CharSequence) str);
                            this.m.append('\n');
                            this.n.remove(str);
                            if (k()) {
                                this.q.submit(this.r);
                            }
                        }
                    } else {
                        throw new IllegalStateException("cache is closed");
                    }
                } finally {
                }
            }
        }
    }
}
