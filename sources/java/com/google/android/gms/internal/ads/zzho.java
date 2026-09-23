package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public final class zzho extends zzgt {
    public RandomAccessFile e;
    public Uri f;
    public long g;
    public boolean h;

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        Uri uri = zzhfVar.f8483a;
        this.f = uri;
        d(zzhfVar);
        int i = 2006;
        try {
            String path = uri.getPath();
            if (path != null) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
                this.e = randomAccessFile;
                try {
                    long j = zzhfVar.f8484c;
                    randomAccessFile.seek(j);
                    long j2 = zzhfVar.d;
                    if (j2 == -1) {
                        j2 = this.e.length() - j;
                    }
                    this.g = j2;
                    if (j2 >= 0) {
                        this.h = true;
                        e(zzhfVar);
                        return this.g;
                    }
                    throw new zzhc(null, null, 2008);
                } catch (IOException e) {
                    throw new zzhc(2000, e);
                }
            }
            throw null;
        } catch (FileNotFoundException e2) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                if (!(e2.getCause() instanceof ErrnoException) || ((ErrnoException) e2.getCause()).errno != OsConstants.EACCES) {
                    i = 2005;
                }
                throw new zzhc(i, e2);
            }
            String path2 = uri.getPath();
            String query = uri.getQuery();
            String fragment = uri.getFragment();
            StringBuilder u = androidx.work.impl.workers.a.u("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=", path2, ",query=", query, ",fragment=");
            u.append(fragment);
            throw new zzhc(u.toString(), e2, 1004);
        } catch (SecurityException e3) {
            throw new zzhc(2006, e3);
        } catch (RuntimeException e4) {
            throw new zzhc(2000, e4);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.g;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.e;
            String str = zzfj.f7405a;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.g -= read;
                f(read);
            }
            return read;
        } catch (IOException e) {
            throw new zzhc(2000, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        this.f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.e = null;
                if (this.h) {
                    this.h = false;
                    g();
                }
            } catch (IOException e) {
                throw new zzhc(2000, e);
            }
        } catch (Throwable th) {
            this.e = null;
            if (this.h) {
                this.h = false;
                g();
            }
            throw th;
        }
    }
}
