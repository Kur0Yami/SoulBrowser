package org.apache.commons.lang3.text.translate;

import java.io.StringWriter;

@Deprecated
/* loaded from: classes4.dex */
public class UnicodeUnpairedSurrogateRemover extends CodePointTranslator {
    @Override // org.apache.commons.lang3.text.translate.CodePointTranslator
    public final boolean b(int i, StringWriter stringWriter) {
        if (i >= 55296 && i <= 57343) {
            return true;
        }
        return false;
    }
}
