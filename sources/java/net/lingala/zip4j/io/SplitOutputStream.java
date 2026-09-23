package net.lingala.zip4j.io;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainUtil;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.Raw;
import net.lingala.zip4j.util.Zip4jUtil;

/* loaded from: classes4.dex */
public class SplitOutputStream extends OutputStream {

    /* renamed from: c, reason: collision with root package name */
    public RandomAccessFile f21993c;
    public final long f;
    public File g;
    public final File h;
    public int i;
    public long j;

    public SplitOutputStream(File file, long j) {
        if (j >= 0 && j < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
            throw new ZipException("split length less than minimum allowed split length of 65536 Bytes");
        }
        this.f21993c = new RandomAccessFile(file, "rw");
        this.f = j;
        this.h = file;
        this.g = file;
        this.i = 0;
        this.j = 0L;
    }

    public final boolean a(int i) {
        if (i >= 0) {
            if (i >= 0) {
                long j = this.f;
                if (j >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH && this.j + i > j) {
                    try {
                        b();
                        this.j = 0L;
                        return true;
                    } catch (IOException e) {
                        throw new ZipException(e);
                    }
                }
                return false;
            }
            throw new ZipException("negative buffersize for isBuffSizeFitForCurrSplitFile");
        }
        throw new ZipException("negative buffersize for checkBuffSizeAndStartNextSplitFile");
    }

    public final void b() {
        String str;
        File file;
        File file2 = this.h;
        try {
            String name = file2.getName();
            if (Zip4jUtil.l(name)) {
                if (name.indexOf(MainUtil.f1()) >= 0) {
                    name = name.substring(name.lastIndexOf(MainUtil.f1()));
                }
                if (name.indexOf(".") > 0) {
                    name = name.substring(0, name.lastIndexOf("."));
                }
                String absolutePath = this.g.getAbsolutePath();
                if (file2.getParent() == null) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    str = file2.getParent() + MainUtil.f1();
                }
                if (this.i < 9) {
                    file = new File(str + name + ".z0" + (this.i + 1));
                } else {
                    file = new File(str + name + ".z" + (this.i + 1));
                }
                this.f21993c.close();
                if (!file.exists()) {
                    if (this.g.renameTo(file)) {
                        this.g = new File(absolutePath);
                        this.f21993c = new RandomAccessFile(this.g, "rw");
                        this.i++;
                        return;
                    }
                    throw new IOException("cannot rename newly created split file");
                }
                throw new IOException("split file: " + file.getName() + " already exists in the current directory, cannot rename this file");
            }
            throw new ZipException("zip file name is empty or null, cannot determine zip file name");
        } catch (ZipException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        RandomAccessFile randomAccessFile = this.f21993c;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        long j = this.f;
        if (j == -1) {
            this.f21993c.write(bArr, i, i2);
            this.j += i2;
            return;
        }
        if (j >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
            long j2 = this.j;
            if (j2 >= j) {
                b();
                this.f21993c.write(bArr, i, i2);
                this.j = i2;
                return;
            }
            long j3 = i2;
            if (j2 + j3 > j) {
                if (bArr != null && bArr.length >= 4) {
                    int b = Raw.b(bArr);
                    long[] jArr = {67324752, 134695760, 33639248, 101010256, 84233040, 134630224, 134695760, 117853008, 101075792, 1, 39169};
                    for (int i3 = 0; i3 < 11; i3++) {
                        long j4 = jArr[i3];
                        if (j4 != 134695760 && j4 == b) {
                            b();
                            this.f21993c.write(bArr, i, i2);
                            this.j = j3;
                            return;
                        }
                    }
                }
                this.f21993c.write(bArr, i, (int) (j - this.j));
                b();
                RandomAccessFile randomAccessFile = this.f21993c;
                long j5 = j - this.j;
                randomAccessFile.write(bArr, i + ((int) j5), (int) (j3 - j5));
                this.j = j3 - (j - this.j);
                return;
            }
            this.f21993c.write(bArr, i, i2);
            this.j += j3;
            return;
        }
        throw new IOException("split length less than minimum allowed split length of 65536 Bytes");
    }
}
