package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.List;

/* loaded from: classes.dex */
public final class zzhx extends zzgt {
    public final Context e;
    public zzhf f;
    public AssetFileDescriptor g;
    public FileInputStream h;
    public long i;
    public boolean j;

    public zzhx(Context context) {
        super(false);
        this.e = context.getApplicationContext();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        String host;
        Resources resourcesForApplication;
        int parseInt;
        Resources resources;
        long j;
        long min;
        this.f = zzhfVar;
        d(zzhfVar);
        Uri uri = zzhfVar.f8483a;
        long j2 = zzhfVar.f8484c;
        Uri normalizeScheme = uri.normalizeScheme();
        boolean equals = TextUtils.equals("rawresource", normalizeScheme.getScheme());
        Context context = this.e;
        if (equals) {
            resources = context.getResources();
            List<String> pathSegments = normalizeScheme.getPathSegments();
            if (pathSegments.size() == 1) {
                try {
                    parseInt = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new zzhc("Resource identifier must be an integer.", null, 1004);
                }
            } else {
                int size = pathSegments.size();
                throw new zzhc(androidx.work.impl.workers.a.r(size, "rawresource:// URI must have exactly one path element, found ", new StringBuilder(String.valueOf(size).length() + 61)), null, 2000);
            }
        } else if (TextUtils.equals("android.resource", normalizeScheme.getScheme())) {
            String path = normalizeScheme.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            if (TextUtils.isEmpty(normalizeScheme.getHost())) {
                host = context.getPackageName();
            } else {
                host = normalizeScheme.getHost();
            }
            if (host.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(host);
                } catch (PackageManager.NameNotFoundException e) {
                    throw new zzhc("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e, 2005);
                }
            }
            if (path.matches("\\d+")) {
                try {
                    parseInt = Integer.parseInt(path);
                } catch (NumberFormatException unused2) {
                    throw new zzhc("Resource identifier must be an integer.", null, 1004);
                }
            } else {
                parseInt = resourcesForApplication.getIdentifier(android.support.v4.media.a.q(new StringBuilder(host.length() + 1 + path.length()), host, ":", path), "raw", null);
                if (parseInt == 0) {
                    throw new zzhc("Resource not found.", null, 2005);
                }
            }
            resources = resourcesForApplication;
        } else {
            String scheme = normalizeScheme.getScheme();
            throw new zzhc(android.support.v4.media.a.q(new StringBuilder(String.valueOf(scheme).length() + 62), "Unsupported URI scheme (", scheme, "). Only android.resource is supported."), null, 1004);
        }
        try {
            AssetFileDescriptor openRawResourceFd = resources.openRawResourceFd(parseInt);
            if (openRawResourceFd != null) {
                this.g = openRawResourceFd;
                long length = openRawResourceFd.getLength();
                FileInputStream fileInputStream = new FileInputStream(this.g.getFileDescriptor());
                this.h = fileInputStream;
                try {
                    if (length != -1 && j2 > length) {
                        throw new zzhc(null, null, 2008);
                    }
                    long startOffset = this.g.getStartOffset();
                    long skip = fileInputStream.skip(startOffset + j2) - startOffset;
                    if (skip == j2) {
                        if (length == -1) {
                            FileChannel channel = fileInputStream.getChannel();
                            if (channel.size() == 0) {
                                this.i = -1L;
                                j = -1;
                            } else {
                                j = channel.size() - channel.position();
                                this.i = j;
                                if (j < 0) {
                                    throw new zzhc(null, null, 2008);
                                }
                            }
                        } else {
                            j = length - skip;
                            this.i = j;
                            if (j < 0) {
                                throw new zzhc();
                            }
                        }
                        long j3 = zzhfVar.d;
                        if (j3 != -1) {
                            if (j == -1) {
                                min = j3;
                            } else {
                                min = Math.min(j, j3);
                            }
                            this.i = min;
                        }
                        this.j = true;
                        e(zzhfVar);
                        if (j3 != -1) {
                            return j3;
                        }
                        return this.i;
                    }
                    throw new zzhc(null, null, 2008);
                } catch (zzhw e2) {
                    throw e2;
                } catch (IOException e3) {
                    throw new zzhc(null, e3, 2000);
                }
            }
            throw new zzhc("Resource is compressed: ".concat(String.valueOf(normalizeScheme)), null, 2000);
        } catch (Resources.NotFoundException e4) {
            throw new zzhc(null, e4, 2005);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.i;
        if (j != 0) {
            if (j != -1) {
                try {
                    i2 = (int) Math.min(j, i2);
                } catch (IOException e) {
                    throw new zzhc(null, e, 2000);
                }
            }
            FileInputStream fileInputStream = this.h;
            String str = zzfj.f7405a;
            int read = fileInputStream.read(bArr, i, i2);
            if (read == -1) {
                if (this.i != -1) {
                    throw new zzhc("End of stream reached having not read sufficient data.", new EOFException(), 2000);
                }
            } else {
                long j2 = this.i;
                if (j2 != -1) {
                    this.i = j2 - read;
                }
                f(read);
                return read;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        zzhf zzhfVar = this.f;
        if (zzhfVar != null) {
            return zzhfVar.f8483a;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        this.f = null;
        try {
            try {
                try {
                    FileInputStream fileInputStream = this.h;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    this.h = null;
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.g = null;
                        if (this.j) {
                            this.j = false;
                            g();
                        }
                    } catch (IOException e) {
                        throw new zzhc(null, e, 2000);
                    }
                } catch (IOException e2) {
                    throw new zzhc(null, e2, 2000);
                }
            } catch (Throwable th) {
                this.h = null;
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.g = null;
                    if (this.j) {
                        this.j = false;
                        g();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new zzhc(null, e3, 2000);
                }
            }
        } catch (Throwable th2) {
            this.g = null;
            if (this.j) {
                this.j = false;
                g();
            }
            throw th2;
        }
    }
}
