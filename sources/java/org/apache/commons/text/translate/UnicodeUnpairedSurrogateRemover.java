package org.apache.commons.text.translate;

import java.io.StringWriter;

/* loaded from: classes4.dex */
public class UnicodeUnpairedSurrogateRemover extends CodePointTranslator {
    @Override // org.apache.commons.text.translate.CodePointTranslator
    public final boolean c(int i, StringWriter stringWriter) {
        if (i >= 55296 && i <= 57343) {
            return true;
        }
        return false;
    }
}
