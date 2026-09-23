package org.apache.commons.compress.archivers.zip;

/* loaded from: classes4.dex */
public class UnicodeCommentExtraField extends AbstractUnicodeExtraField {
    public static final ZipShort h = new ZipShort(25461);

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public final ZipShort a() {
        return h;
    }
}
