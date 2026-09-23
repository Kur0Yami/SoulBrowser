package org.apache.commons.compress.archivers.tar;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import kotlin.UByte;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.utils.ArchiveUtils;

/* loaded from: classes4.dex */
public class TarArchiveEntry implements TarConstants, ArchiveEntry {

    /* renamed from: c, reason: collision with root package name */
    public String f22271c;
    public long f;
    public final byte g;
    public final boolean h;

    public TarArchiveEntry(byte[] bArr, ZipEncoding zipEncoding) {
        boolean z;
        this.f22271c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        long j = 0;
        this.f = 0L;
        String property = System.getProperty("user.name", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (property.length() > 31) {
            property.substring(0, 31);
        }
        this.f22271c = TarUtils.a(bArr, 0, 100, zipEncoding);
        TarUtils.c(bArr, 100, 8);
        TarUtils.c(bArr, 108, 8);
        TarUtils.c(bArr, 116, 8);
        this.f = TarUtils.c(bArr, 124, 12);
        TarUtils.c(bArr, 136, 12);
        long b = TarUtils.b(bArr, 148, 8);
        long j2 = 0;
        int i = 0;
        while (true) {
            byte b2 = 32;
            if (i >= bArr.length) {
                break;
            }
            byte b3 = bArr[i];
            if (148 > i || i >= 156) {
                b2 = b3;
            }
            j += b2 & UByte.MAX_VALUE;
            j2 += b2;
            i++;
        }
        if (b != j) {
            int i2 = (b > j2 ? 1 : (b == j2 ? 0 : -1));
        }
        this.g = bArr[156];
        TarUtils.a(bArr, 157, 100, zipEncoding);
        try {
            try {
                TarUtils.a(bArr, 257, 6, TarUtils.f22274a);
            } catch (IOException unused) {
                TarUtils.a(bArr, 257, 6, TarUtils.b);
            }
            try {
                try {
                    TarUtils.a(bArr, 263, 2, TarUtils.f22274a);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            } catch (IOException unused2) {
                TarUtils.a(bArr, 263, 2, TarUtils.b);
            }
            TarUtils.a(bArr, 265, 32, zipEncoding);
            TarUtils.a(bArr, 297, 32, zipEncoding);
            TarUtils.c(bArr, 329, 8);
            TarUtils.c(bArr, 337, 8);
            if (ArchiveUtils.a("ustar ", bArr, 257, 6)) {
                if (bArr[482] == 1) {
                    z = true;
                } else {
                    z = false;
                }
                this.h = z;
                TarUtils.b(bArr, 483, 12);
                return;
            }
            if (ArchiveUtils.a("ustar\u0000", bArr, 257, 6) && ArchiveUtils.a("tar\u0000", bArr, 508, 4)) {
                String a2 = TarUtils.a(bArr, 345, 131, zipEncoding);
                if (a2.length() > 0) {
                    StringBuilder v = a.v(a2, "/");
                    v.append(this.f22271c);
                    this.f22271c = v.toString();
                    return;
                }
                return;
            }
            String a3 = TarUtils.a(bArr, 345, 155, zipEncoding);
            if (isDirectory() && !this.f22271c.endsWith("/")) {
                this.f22271c = a.p(new StringBuilder(), this.f22271c, "/");
            }
            if (a3.length() > 0) {
                StringBuilder v2 = a.v(a3, "/");
                v2.append(this.f22271c);
                this.f22271c = v2.toString();
            }
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public final void a(String str) {
        int indexOf;
        String lowerCase = System.getProperty("os.name").toLowerCase(Locale.ENGLISH);
        if (lowerCase != null) {
            if (lowerCase.startsWith("windows")) {
                if (str.length() > 2) {
                    char charAt = str.charAt(0);
                    if (str.charAt(1) == ':' && ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z'))) {
                        str = str.substring(2);
                    }
                }
            } else if (lowerCase.contains("netware") && (indexOf = str.indexOf(58)) != -1) {
                str = str.substring(indexOf + 1);
            }
        }
        String replace = str.replace(File.separatorChar, '/');
        while (replace.startsWith("/")) {
            replace = replace.substring(1);
        }
        this.f22271c = replace;
    }

    public final boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            return this.f22271c.equals(((TarArchiveEntry) obj).f22271c);
        }
        return false;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public final String getName() {
        return this.f22271c;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public final long getSize() {
        return this.f;
    }

    public final int hashCode() {
        return this.f22271c.hashCode();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public final boolean isDirectory() {
        byte b = this.g;
        if (b != 53) {
            if (b != 120 && b != 88 && b != 103 && this.f22271c.endsWith("/")) {
                return true;
            }
            return false;
        }
        return true;
    }
}
