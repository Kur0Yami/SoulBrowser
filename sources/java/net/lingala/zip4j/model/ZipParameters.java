package net.lingala.zip4j.model;

import com.mycompany.app.compress.CompressUtil;
import java.util.TimeZone;

/* loaded from: classes4.dex */
public class ZipParameters implements Cloneable {
    public int f;
    public char[] i;
    public int k;
    public CompressUtil.CompressListener l;

    /* renamed from: c, reason: collision with root package name */
    public int f22013c = 8;
    public boolean g = false;
    public int h = -1;
    public final TimeZone j = TimeZone.getDefault();

    public final Object clone() {
        return super.clone();
    }
}
