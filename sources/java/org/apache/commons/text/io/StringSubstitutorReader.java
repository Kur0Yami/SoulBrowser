package org.apache.commons.text.io;

import java.io.FilterReader;

/* loaded from: classes4.dex */
public class StringSubstitutorReader extends FilterReader {
    @Override // java.io.FilterReader, java.io.Reader
    public final int read(char[] cArr, int i, int i2) {
        if (i2 <= 0) {
            return 0;
        }
        throw null;
    }

    @Override // java.io.FilterReader, java.io.Reader
    public final int read() {
        while (true) {
            read(null, 0, 1);
        }
    }
}
