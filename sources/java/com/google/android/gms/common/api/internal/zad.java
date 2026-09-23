package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zad extends zac {
    protected final TaskCompletionSource zaa;

    public zad(int i, TaskCompletionSource taskCompletionSource) {
        super(i);
        this.zaa = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zac(@NonNull Status status) {
        this.zaa.c(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(@NonNull Exception exc) {
        this.zaa.c(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public void zae(@NonNull zaaa zaaaVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zabk zabkVar) {
        try {
            zag(zabkVar);
        } catch (DeadObjectException e) {
            zac(zai.zah(e));
            throw e;
        } catch (RemoteException e2) {
            zac(zai.zah(e2));
        } catch (RuntimeException e3) {
            this.zaa.c(e3);
        }
    }

    public abstract void zag(zabk zabkVar);
}
