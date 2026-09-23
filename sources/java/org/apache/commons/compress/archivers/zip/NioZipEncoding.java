package org.apache.commons.compress.archivers.zip;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;

/* loaded from: classes4.dex */
class NioZipEncoding implements ZipEncoding {

    /* renamed from: a, reason: collision with root package name */
    public final Charset f22285a;

    public NioZipEncoding(Charset charset) {
        this.f22285a = charset;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
    public final String a(byte[] bArr) {
        CharsetDecoder newDecoder = this.f22285a.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        return newDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(bArr)).toString();
    }
}
