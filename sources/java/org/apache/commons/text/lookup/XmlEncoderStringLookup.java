package org.apache.commons.text.lookup;

import org.apache.commons.text.StringEscapeUtils;

/* loaded from: classes4.dex */
final class XmlEncoderStringLookup extends AbstractStringLookup {
    public static final XmlEncoderStringLookup b = new Object();

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        return StringEscapeUtils.f22469a.b(str);
    }
}
