package org.jsoup.nodes;

import java.util.Comparator;
import org.jsoup.nodes.Entities;

/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Entities.EscapeMode escapeMode = Entities.EscapeMode.xhtml;
        return ((String) obj2).length() - ((String) obj).length();
    }
}
