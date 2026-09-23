package org.apache.commons.compress.archivers.tar;

import org.apache.commons.compress.archivers.zip.ZipEncoding;

/* loaded from: classes4.dex */
public class TarArchiveSparseEntry implements TarConstants {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f22273c;

    public TarArchiveSparseEntry(byte[] bArr) {
        ZipEncoding zipEncoding = TarUtils.f22274a;
        this.f22273c = bArr[504] == 1;
    }
}
