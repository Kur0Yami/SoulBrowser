package com.google.android.gms.drive;

import android.os.Bundle;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.drive.zzaa;
import com.google.android.gms.internal.drive.zzhs;
import j$.util.DesugarCollections;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class MetadataBuffer extends AbstractDataBuffer<Metadata> {

    /* renamed from: c, reason: collision with root package name */
    public zza f3679c;

    /* loaded from: classes.dex */
    public static class zza extends Metadata {

        /* renamed from: a, reason: collision with root package name */
        public final DataHolder f3680a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f3681c;

        public zza(DataHolder dataHolder, int i) {
            this.f3680a = dataHolder;
            this.b = i;
            this.f3681c = dataHolder.getWindowIndex(i);
        }

        @Override // com.google.android.gms.common.data.Freezable
        public final Metadata freeze() {
            MetadataBundle metadataBundle = new MetadataBundle(new Bundle());
            for (MetadataField metadataField : DesugarCollections.unmodifiableCollection(com.google.android.gms.drive.metadata.internal.zzf.f3704a.values())) {
                if (metadataField != zzhs.F) {
                    metadataField.c(this.f3680a, metadataBundle, this.b, this.f3681c);
                }
            }
            return new zzaa(metadataBundle);
        }

        @Override // com.google.android.gms.common.data.Freezable
        public final boolean isDataValid() {
            if (!this.f3680a.isClosed()) {
                return true;
            }
            return false;
        }
    }

    public MetadataBuffer(DataHolder dataHolder) {
        super(dataHolder);
        dataHolder.getMetadata().setClassLoader(MetadataBuffer.class.getClassLoader());
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Metadata get(int i) {
        zza zzaVar = this.f3679c;
        if (zzaVar != null && zzaVar.b == i) {
            return zzaVar;
        }
        zza zzaVar2 = new zza(this.mDataHolder, i);
        this.f3679c = zzaVar2;
        return zzaVar2;
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer, com.google.android.gms.common.api.Releasable
    public final void release() {
        DataHolder dataHolder = this.mDataHolder;
        if (dataHolder != null) {
            Iterator it = com.google.android.gms.drive.metadata.internal.zzf.b.values().iterator();
            while (it.hasNext()) {
                ((com.google.android.gms.drive.metadata.internal.zzg) it.next()).b(dataHolder);
            }
        }
        super.release();
    }
}
