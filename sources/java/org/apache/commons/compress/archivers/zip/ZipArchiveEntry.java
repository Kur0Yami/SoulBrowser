package org.apache.commons.compress.archivers.zip;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import org.apache.commons.compress.archivers.ArchiveEntry;

/* loaded from: classes4.dex */
public class ZipArchiveEntry extends ZipEntry implements ArchiveEntry {
    public static final byte[] n = new byte[0];
    public static final ZipExtraField[] o = new ZipExtraField[0];

    /* renamed from: c, reason: collision with root package name */
    public int f22300c;
    public long f;
    public int g;
    public int h;
    public long i;
    public ZipExtraField[] j;
    public UnparseableExtraFieldData k;
    public String l;
    public GeneralPurposeBit m;

    public final ZipExtraField[] a() {
        ZipExtraField[] zipExtraFieldArr = this.j;
        if (zipExtraFieldArr == null) {
            UnparseableExtraFieldData unparseableExtraFieldData = this.k;
            if (unparseableExtraFieldData == null) {
                return o;
            }
            return new ZipExtraField[]{unparseableExtraFieldData};
        }
        if (this.k != null) {
            int length = zipExtraFieldArr.length + 1;
            ZipExtraField[] zipExtraFieldArr2 = new ZipExtraField[length];
            System.arraycopy(zipExtraFieldArr, 0, zipExtraFieldArr2, 0, Math.min(zipExtraFieldArr.length, length));
            zipExtraFieldArr2[this.j.length] = this.k;
            return zipExtraFieldArr2;
        }
        return zipExtraFieldArr;
    }

    public final byte[] b() {
        boolean z;
        byte[] e;
        ZipExtraField[] a2 = a();
        ConcurrentHashMap concurrentHashMap = ExtraFieldUtils.f22281a;
        if (a2.length > 0 && (a2[a2.length - 1] instanceof UnparseableExtraFieldData)) {
            z = true;
        } else {
            z = false;
        }
        int length = a2.length;
        if (z) {
            length--;
        }
        int i = length * 4;
        for (ZipExtraField zipExtraField : a2) {
            i += zipExtraField.f().f22313c;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            System.arraycopy(a2[i3].a().a(), 0, bArr, i2, 2);
            System.arraycopy(a2[i3].f().a(), 0, bArr, i2 + 2, 2);
            i2 += 4;
            byte[] e2 = a2[i3].e();
            if (e2 != null) {
                System.arraycopy(e2, 0, bArr, i2, e2.length);
                i2 += e2.length;
            }
        }
        if (z && (e = a2[a2.length - 1].e()) != null) {
            System.arraycopy(e, 0, bArr, i2, e.length);
        }
        return bArr;
    }

    public final ZipExtraField c(ZipShort zipShort) {
        ZipExtraField[] zipExtraFieldArr = this.j;
        if (zipExtraFieldArr != null) {
            for (ZipExtraField zipExtraField : zipExtraFieldArr) {
                if (zipShort.equals(zipExtraField.a())) {
                    return zipExtraField;
                }
            }
            return null;
        }
        return null;
    }

    @Override // java.util.zip.ZipEntry
    public final Object clone() {
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) super.clone();
        zipArchiveEntry.g = this.g;
        zipArchiveEntry.i = this.i;
        zipArchiveEntry.f(a());
        return zipArchiveEntry;
    }

    public final void d(ZipExtraField[] zipExtraFieldArr, boolean z) {
        ZipExtraField c2;
        if (this.j == null) {
            f(zipExtraFieldArr);
            return;
        }
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            boolean z2 = zipExtraField instanceof UnparseableExtraFieldData;
            if (z2) {
                c2 = this.k;
            } else {
                c2 = c(zipExtraField.a());
            }
            if (c2 == null) {
                if (z2) {
                    this.k = (UnparseableExtraFieldData) zipExtraField;
                } else if (this.j == null) {
                    this.j = new ZipExtraField[]{zipExtraField};
                } else {
                    if (c(zipExtraField.a()) != null) {
                        ZipShort a2 = zipExtraField.a();
                        if (this.j != null) {
                            ArrayList arrayList = new ArrayList();
                            for (ZipExtraField zipExtraField2 : this.j) {
                                if (!a2.equals(zipExtraField2.a())) {
                                    arrayList.add(zipExtraField2);
                                }
                            }
                            if (this.j.length != arrayList.size()) {
                                this.j = (ZipExtraField[]) arrayList.toArray(new ZipExtraField[arrayList.size()]);
                                e();
                            } else {
                                throw new NoSuchElementException();
                            }
                        } else {
                            throw new NoSuchElementException();
                        }
                    }
                    ZipExtraField[] zipExtraFieldArr2 = this.j;
                    int length = zipExtraFieldArr2.length;
                    int i = length + 1;
                    ZipExtraField[] zipExtraFieldArr3 = new ZipExtraField[i];
                    System.arraycopy(zipExtraFieldArr2, 0, zipExtraFieldArr3, 0, Math.min(zipExtraFieldArr2.length, i));
                    zipExtraFieldArr3[length] = zipExtraField;
                    this.j = zipExtraFieldArr3;
                }
                e();
            } else if (z) {
                byte[] d = zipExtraField.d();
                c2.c(d, 0, d.length);
            } else {
                byte[] e = zipExtraField.e();
                c2.g(e, 0, e.length);
            }
        }
        e();
    }

    public final void e() {
        boolean z;
        byte[] d;
        ZipExtraField[] a2 = a();
        ConcurrentHashMap concurrentHashMap = ExtraFieldUtils.f22281a;
        if (a2.length > 0 && (a2[a2.length - 1] instanceof UnparseableExtraFieldData)) {
            z = true;
        } else {
            z = false;
        }
        int length = a2.length;
        if (z) {
            length--;
        }
        int i = length * 4;
        for (ZipExtraField zipExtraField : a2) {
            i += zipExtraField.b().f22313c;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            System.arraycopy(a2[i3].a().a(), 0, bArr, i2, 2);
            System.arraycopy(a2[i3].b().a(), 0, bArr, i2 + 2, 2);
            i2 += 4;
            byte[] d2 = a2[i3].d();
            if (d2 != null) {
                System.arraycopy(d2, 0, bArr, i2, d2.length);
                i2 += d2.length;
            }
        }
        if (z && (d = a2[a2.length - 1].d()) != null) {
            System.arraycopy(d, 0, bArr, i2, d.length);
        }
        super.setExtra(bArr);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && getClass() == obj.getClass()) {
                ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) obj;
                String name = getName();
                String name2 = zipArchiveEntry.getName();
                if (name == null) {
                    if (name2 != null) {
                        return false;
                    }
                } else if (!name.equals(name2)) {
                    return false;
                }
                String comment = getComment();
                String comment2 = zipArchiveEntry.getComment();
                if (comment == null) {
                    comment = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                if (comment2 == null) {
                    comment2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                if (getTime() == zipArchiveEntry.getTime() && comment.equals(comment2) && this.g == zipArchiveEntry.g && this.h == zipArchiveEntry.h && this.i == zipArchiveEntry.i && this.f22300c == zipArchiveEntry.f22300c && this.f == zipArchiveEntry.f && getCrc() == zipArchiveEntry.getCrc() && getCompressedSize() == zipArchiveEntry.getCompressedSize() && Arrays.equals(b(), zipArchiveEntry.b())) {
                    byte[] extra = getExtra();
                    byte[] bArr = n;
                    if (extra == null) {
                        extra = bArr;
                    }
                    byte[] extra2 = zipArchiveEntry.getExtra();
                    if (extra2 != null) {
                        bArr = extra2;
                    }
                    if (Arrays.equals(extra, bArr) && this.m.equals(zipArchiveEntry.m)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final void f(ZipExtraField[] zipExtraFieldArr) {
        ArrayList arrayList = new ArrayList();
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            if (zipExtraField instanceof UnparseableExtraFieldData) {
                this.k = (UnparseableExtraFieldData) zipExtraField;
            } else {
                arrayList.add(zipExtraField);
            }
        }
        this.j = (ZipExtraField[]) arrayList.toArray(new ZipExtraField[arrayList.size()]);
        e();
    }

    public final void g(String str) {
        if (str != null && this.h == 0 && !str.contains("/")) {
            str = str.replace('\\', '/');
        }
        this.l = str;
    }

    @Override // java.util.zip.ZipEntry
    public final int getMethod() {
        return this.f22300c;
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public final String getName() {
        String str = this.l;
        if (str == null) {
            return super.getName();
        }
        return str;
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public final long getSize() {
        return this.f;
    }

    @Override // java.util.zip.ZipEntry
    public int hashCode() {
        return getName().hashCode();
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public final boolean isDirectory() {
        return getName().endsWith("/");
    }

    @Override // java.util.zip.ZipEntry
    public final void setExtra(byte[] bArr) {
        try {
            d(ExtraFieldUtils.b(bArr, true), true);
        } catch (ZipException e) {
            throw new RuntimeException("Error parsing extra fields for entry: " + getName() + " - " + e.getMessage(), e);
        }
    }

    @Override // java.util.zip.ZipEntry
    public final void setMethod(int i) {
        if (i >= 0) {
            this.f22300c = i;
            return;
        }
        throw new IllegalArgumentException(a.e(i, "ZIP compression method can not be negative: "));
    }

    @Override // java.util.zip.ZipEntry
    public final void setSize(long j) {
        if (j >= 0) {
            this.f = j;
            return;
        }
        throw new IllegalArgumentException("invalid entry size");
    }
}
