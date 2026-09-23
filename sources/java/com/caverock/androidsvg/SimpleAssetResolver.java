package com.caverock.androidsvg;

import java.util.HashSet;

/* loaded from: classes.dex */
public class SimpleAssetResolver extends SVGExternalFileResolver {
    static {
        HashSet hashSet = new HashSet(8);
        hashSet.add("image/svg+xml");
        hashSet.add("image/jpeg");
        hashSet.add("image/png");
        hashSet.add("image/pjpeg");
        hashSet.add("image/gif");
        hashSet.add("image/bmp");
        hashSet.add("image/x-windows-bmp");
        hashSet.add("image/webp");
    }
}
