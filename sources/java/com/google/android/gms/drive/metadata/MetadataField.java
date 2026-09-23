package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* loaded from: classes.dex */
public interface MetadataField<T> {
    Object b(Bundle bundle);

    void c(DataHolder dataHolder, MetadataBundle metadataBundle, int i, int i2);

    String getName();
}
