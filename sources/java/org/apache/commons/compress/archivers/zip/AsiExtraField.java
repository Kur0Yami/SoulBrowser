package org.apache.commons.compress.archivers.zip;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
import kotlin.KotlinVersion;

/* loaded from: classes4.dex */
public class AsiExtraField implements ZipExtraField, UnixStat, Cloneable {
    public static final ZipShort k = new ZipShort(30062);

    /* renamed from: c, reason: collision with root package name */
    public int f22276c;
    public int f;
    public int g;
    public String h;
    public boolean i;
    public CRC32 j;

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return k;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort b() {
        return new ZipShort(this.h.getBytes().length + 14);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void c(byte[] bArr, int i, int i2) {
        long b = ZipLong.b(bArr, i);
        int i3 = i2 - 4;
        byte[] bArr2 = new byte[i3];
        boolean z = false;
        System.arraycopy(bArr, i + 4, bArr2, 0, i3);
        this.j.reset();
        this.j.update(bArr2);
        long value = this.j.getValue();
        if (b == value) {
            int b2 = ZipShort.b(bArr2, 0);
            int b3 = (int) ZipLong.b(bArr2, 2);
            byte[] bArr3 = new byte[b3];
            this.f = ZipShort.b(bArr2, 6);
            this.g = ZipShort.b(bArr2, 8);
            if (b3 == 0) {
                this.h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                System.arraycopy(bArr2, 10, bArr3, 0, b3);
                this.h = new String(bArr3);
            }
            if ((b2 & 16384) != 0) {
                z = true;
            }
            this.i = z;
            this.f22276c = h(this.f22276c);
            this.f22276c = h(b2);
            return;
        }
        throw new ZipException("bad CRC checksum " + Long.toHexString(b) + " instead of " + Long.toHexString(value));
    }

    public final Object clone() {
        try {
            AsiExtraField asiExtraField = (AsiExtraField) super.clone();
            asiExtraField.j = new CRC32();
            return asiExtraField;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] d() {
        int i = b().f22313c;
        int i2 = i - 4;
        byte[] bArr = new byte[i2];
        int i3 = this.f22276c;
        System.arraycopy(new byte[]{(byte) (i3 & KotlinVersion.MAX_COMPONENT_VALUE), (byte) ((i3 & 65280) >> 8)}, 0, bArr, 0, 2);
        byte[] bytes = this.h.getBytes();
        System.arraycopy(ZipLong.a(bytes.length), 0, bArr, 2, 4);
        int i4 = this.f;
        System.arraycopy(new byte[]{(byte) (i4 & KotlinVersion.MAX_COMPONENT_VALUE), (byte) ((i4 & 65280) >> 8)}, 0, bArr, 6, 2);
        int i5 = this.g;
        System.arraycopy(new byte[]{(byte) (i5 & KotlinVersion.MAX_COMPONENT_VALUE), (byte) ((65280 & i5) >> 8)}, 0, bArr, 8, 2);
        System.arraycopy(bytes, 0, bArr, 10, bytes.length);
        this.j.reset();
        this.j.update(bArr);
        byte[] bArr2 = new byte[i];
        System.arraycopy(ZipLong.a(this.j.getValue()), 0, bArr2, 0, 4);
        System.arraycopy(bArr, 0, bArr2, 4, i2);
        return bArr2;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final byte[] e() {
        return d();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort f() {
        return b();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final void g(byte[] bArr, int i, int i2) {
        c(bArr, i, i2);
    }

    public final int h(int i) {
        int i2;
        if (this.h.length() != 0) {
            i2 = 40960;
        } else if (this.i && this.h.length() == 0) {
            i2 = 16384;
        } else {
            i2 = 32768;
        }
        return (i & 4095) | i2;
    }
}
