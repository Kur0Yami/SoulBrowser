package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.metadata.internal.zzf;
import j$.util.DesugarCollections;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class zza<T> implements MetadataField<T> {

    /* renamed from: a, reason: collision with root package name */
    public final String f3707a;
    public final Set b;

    public zza(String str) {
        this.f3707a = (String) Preconditions.checkNotNull(str, "fieldName");
        this.b = Collections.singleton(str);
        Set set = Collections.EMPTY_SET;
    }

    public abstract void a(Bundle bundle, Object obj);

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final Object b(Bundle bundle) {
        Preconditions.checkNotNull(bundle, "bundle");
        if (bundle.get(this.f3707a) != null) {
            return d(bundle);
        }
        return null;
    }

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final void c(DataHolder dataHolder, MetadataBundle metadataBundle, int i, int i2) {
        String str;
        Preconditions.checkNotNull(dataHolder, "dataHolder");
        Preconditions.checkNotNull(metadataBundle, "bundle");
        if (e(dataHolder, i, i2)) {
            Object f = f(dataHolder, i, i2);
            HashMap hashMap = zzf.f3704a;
            String str2 = this.f3707a;
            if (((MetadataField) hashMap.get(str2)) == null) {
                String valueOf = String.valueOf(str2);
                if (valueOf.length() != 0) {
                    str = "Unregistered field: ".concat(valueOf);
                } else {
                    str = new String("Unregistered field: ");
                }
                throw new IllegalArgumentException(str);
            }
            Bundle bundle = metadataBundle.f3701c;
            Preconditions.checkNotNull(bundle, "bundle");
            if (f == null) {
                bundle.putString(str2, null);
            } else {
                a(bundle, f);
            }
        }
    }

    public abstract Object d(Bundle bundle);

    public boolean e(DataHolder dataHolder, int i, int i2) {
        for (String str : this.b) {
            if (dataHolder.isClosed() || !dataHolder.hasColumn(str) || dataHolder.hasNull(str, i, i2)) {
                return false;
            }
        }
        return true;
    }

    public abstract Object f(DataHolder dataHolder, int i, int i2);

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final String getName() {
        return this.f3707a;
    }

    public final String toString() {
        return this.f3707a;
    }

    public zza(String str, Collection collection, Collection collection2) {
        this.f3707a = (String) Preconditions.checkNotNull(str, "fieldName");
        this.b = DesugarCollections.unmodifiableSet(new HashSet(collection));
        DesugarCollections.unmodifiableSet(new HashSet(collection2));
    }
}
