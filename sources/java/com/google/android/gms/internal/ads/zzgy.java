package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import j$.util.Objects;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes.dex */
public final class zzgy extends zzgt {
    public final ContentResolver e;
    public Uri f;
    public AssetFileDescriptor g;
    public FileInputStream h;
    public long i;
    public boolean j;

    public zzgy(Context context) {
        super(false);
        this.e = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        int i;
        int i2;
        AssetFileDescriptor openAssetFileDescriptor;
        long j;
        long min;
        try {
            try {
                Uri uri = zzhfVar.f8483a;
                long j2 = zzhfVar.f8484c;
                Uri normalizeScheme = uri.normalizeScheme();
                this.f = normalizeScheme;
                d(zzhfVar);
                boolean equals = Objects.equals(normalizeScheme.getScheme(), "content");
                ContentResolver contentResolver = this.e;
                if (equals) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    openAssetFileDescriptor = contentResolver.openTypedAssetFileDescriptor(normalizeScheme, "*/*", bundle);
                } else {
                    openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(normalizeScheme, "r");
                }
                this.g = openAssetFileDescriptor;
                if (openAssetFileDescriptor != null) {
                    long length = openAssetFileDescriptor.getLength();
                    FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                    this.h = fileInputStream;
                    if (length != -1 && j2 > length) {
                        throw new zzhc(2008, (Exception) null);
                    }
                    long startOffset = openAssetFileDescriptor.getStartOffset();
                    long skip = fileInputStream.skip(startOffset + j2) - startOffset;
                    if (skip == j2) {
                        if (length == -1) {
                            FileChannel channel = fileInputStream.getChannel();
                            long size = channel.size();
                            if (size == 0) {
                                this.i = -1L;
                                j = -1;
                            } else {
                                j = size - channel.position();
                                this.i = j;
                                if (j < 0) {
                                    throw new zzhc(2008, (Exception) null);
                                }
                            }
                        } else {
                            j = length - skip;
                            this.i = j;
                            if (j < 0) {
                                throw new zzhc(2008, (Exception) null);
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
                    throw new zzhc(2008, (Exception) null);
                }
                String valueOf = String.valueOf(normalizeScheme);
                StringBuilder sb = new StringBuilder(valueOf.length() + 36);
                sb.append("Could not open file descriptor for: ");
                sb.append(valueOf);
                i = 2000;
                try {
                    throw new zzhc(2000, new IOException(sb.toString()));
                } catch (IOException e) {
                    e = e;
                    if (true != (e instanceof FileNotFoundException)) {
                        i2 = i;
                    } else {
                        i2 = 2005;
                    }
                    throw new zzhc(i2, e);
                }
            } catch (IOException e2) {
                e = e2;
                i = 2000;
            }
        } catch (zzgx e3) {
            throw e3;
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
                    throw new zzhc(2000, e);
                }
            }
            FileInputStream fileInputStream = this.h;
            String str = zzfj.f7405a;
            int read = fileInputStream.read(bArr, i, i2);
            if (read != -1) {
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
        return this.f;
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
                        throw new zzhc(2000, e);
                    }
                } catch (IOException e2) {
                    throw new zzhc(2000, e2);
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
                    throw new zzhc(2000, e3);
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
