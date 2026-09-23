package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzi {
    public static MetadataField a(MetadataBundle metadataBundle) {
        metadataBundle.getClass();
        HashSet hashSet = new HashSet();
        Iterator<String> it = metadataBundle.f3701c.keySet().iterator();
        while (it.hasNext()) {
            hashSet.add((MetadataField) com.google.android.gms.drive.metadata.internal.zzf.f3704a.get(it.next()));
        }
        if (hashSet.size() == 1) {
            return (MetadataField) hashSet.iterator().next();
        }
        throw new IllegalArgumentException("bundle should have exactly 1 populated field");
    }
}
