package org.apache.commons.compress.archivers.zip;

/* loaded from: classes4.dex */
public class UnicodePathExtraField extends AbstractUnicodeExtraField {
    public static final ZipShort h = new ZipShort(28789);

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return h;
    }
}
