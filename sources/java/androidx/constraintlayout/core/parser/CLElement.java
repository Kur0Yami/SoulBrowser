package androidx.constraintlayout.core.parser;

import android.support.v4.media.a;

/* loaded from: classes.dex */
public class CLElement {
    public String toString() {
        int i = (int) 0;
        String substring = new String((char[]) null).substring(i, i + 1);
        StringBuilder sb = new StringBuilder();
        String cls = getClass().toString();
        sb.append(cls.substring(cls.lastIndexOf(46) + 1));
        sb.append(" (0 : 0) <<");
        return a.p(sb, substring, ">>");
    }
}
