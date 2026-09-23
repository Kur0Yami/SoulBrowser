package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class zzgs extends zzgt {
    public final AssetManager e;
    public Uri f;
    public InputStream g;
    public long h;
    public boolean i;

    public zzgs(Context context) {
        super(false);
        this.e = context.getAssets();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        int i;
        try {
            Uri uri = zzhfVar.f8483a;
            this.f = uri;
            String path = uri.getPath();
            if (path != null) {
                if (path.startsWith("/android_asset/")) {
                    path = path.substring(15);
                } else if (path.startsWith("/")) {
                    path = path.substring(1);
                }
                d(zzhfVar);
                InputStream open = this.e.open(path, 1);
                this.g = open;
                long j = zzhfVar.f8484c;
                if (open.skip(j) >= j) {
                    long j2 = zzhfVar.d;
                    if (j2 != -1) {
                        this.h = j2;
                    } else {
                        long available = this.g.available();
                        this.h = available;
                        if (available == 2147483647L) {
                            this.h = -1L;
                        }
                    }
                    this.i = true;
                    e(zzhfVar);
                    return this.h;
                }
                throw new zzhc(2008, (Exception) null);
            }
            throw null;
        } catch (zzgr e) {
            throw e;
        } catch (IOException e2) {
            if (true != (e2 instanceof FileNotFoundException)) {
                i = 2000;
            } else {
                i = 2005;
            }
            throw new zzhc(i, e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.h;
        if (j != 0) {
            if (j != -1) {
                try {
                    i2 = (int) Math.min(j, i2);
                } catch (IOException e) {
                    throw new zzhc(2000, e);
                }
            }
            InputStream inputStream = this.g;
            String str = zzfj.f7405a;
            int read = inputStream.read(bArr, i, i2);
            if (read != -1) {
                long j2 = this.h;
                if (j2 != -1) {
                    this.h = j2 - read;
                }
                f(read);
                return read;
            }
        }
        return -1;
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
                InputStream inputStream = this.g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.g = null;
                if (this.i) {
                    this.i = false;
                    g();
                }
            } catch (IOException e) {
                throw new zzhc(2000, e);
            }
        } catch (Throwable th) {
            this.g = null;
            if (this.i) {
                this.i = false;
                g();
            }
            throw th;
        }
    }
}
