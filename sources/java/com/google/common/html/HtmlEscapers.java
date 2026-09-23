package com.google.common.html;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escapers;
import java.util.HashMap;
import kotlin.text.Typography;

@GwtCompatible
/* loaded from: classes3.dex */
public final class HtmlEscapers {
    static {
        Escapers.Builder builder = new Escapers.Builder();
        Character valueOf = Character.valueOf(Typography.quote);
        HashMap hashMap = builder.f12431a;
        hashMap.put(valueOf, "&quot;");
        hashMap.put('\'', "&#39;");
        hashMap.put(Character.valueOf(Typography.amp), "&amp;");
        hashMap.put(Character.valueOf(Typography.less), "&lt;");
        hashMap.put(Character.valueOf(Typography.greater), "&gt;");
        builder.a();
    }
}
