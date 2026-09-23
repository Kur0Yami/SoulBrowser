package com.google.common.xml;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escapers;
import java.util.HashMap;
import kotlin.text.Typography;

@GwtCompatible
/* loaded from: classes3.dex */
public class XmlEscapers {
    static {
        Escapers.Builder builder = new Escapers.Builder();
        builder.b = (char) 65533;
        builder.f12432c = "�";
        char c2 = 0;
        while (true) {
            HashMap hashMap = builder.f12431a;
            if (c2 <= 31) {
                if (c2 != '\t' && c2 != '\n' && c2 != '\r') {
                    hashMap.put(Character.valueOf(c2), "�");
                }
                c2 = (char) (c2 + 1);
            } else {
                hashMap.put(Character.valueOf(Typography.amp), "&amp;");
                hashMap.put(Character.valueOf(Typography.less), "&lt;");
                hashMap.put(Character.valueOf(Typography.greater), "&gt;");
                builder.a();
                hashMap.put('\'', "&apos;");
                hashMap.put(Character.valueOf(Typography.quote), "&quot;");
                hashMap.put('\t', "&#x9;");
                hashMap.put('\n', "&#xA;");
                hashMap.put('\r', "&#xD;");
                builder.a();
                return;
            }
        }
    }
}
