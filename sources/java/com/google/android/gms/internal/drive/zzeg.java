package com.google.android.gms.internal.drive;

import android.os.Message;
import android.util.Pair;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.CompletionListener;
import com.google.android.gms.drive.events.DriveEvent;

/* loaded from: classes.dex */
final class zzeg extends zzir {
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            zzee.f10156c.efmt("EventCallback", "Don't know how to handle this event in context %s", null);
            return;
        }
        Pair pair = (Pair) message.obj;
        com.google.android.gms.drive.events.zzi zziVar = (com.google.android.gms.drive.events.zzi) pair.first;
        DriveEvent driveEvent = (DriveEvent) pair.second;
        int type = driveEvent.getType();
        if (type != 1) {
            if (type != 2) {
                if (type != 3) {
                    if (type != 4) {
                        if (type != 8) {
                            zzee.f10156c.wfmt("EventCallback", "Unexpected event: %s", driveEvent);
                            return;
                        } else {
                            new zze(((com.google.android.gms.drive.events.zzr) driveEvent).f3694c);
                            ((com.google.android.gms.drive.events.zzl) zziVar).zza();
                            return;
                        }
                    }
                    ((com.google.android.gms.drive.events.zzd) zziVar).a((com.google.android.gms.drive.events.zzb) driveEvent);
                    return;
                }
                com.google.android.gms.drive.events.zzq zzqVar = (com.google.android.gms.drive.events.zzq) zziVar;
                com.google.android.gms.drive.events.zzo zzoVar = (com.google.android.gms.drive.events.zzo) driveEvent;
                DataHolder dataHolder = zzoVar.f;
                if (dataHolder != null) {
                    new MetadataBuffer(dataHolder);
                    zzqVar.c();
                }
                if (zzoVar.g) {
                    zzqVar.zzc();
                    return;
                }
                return;
            }
            ((CompletionListener) zziVar).b((CompletionEvent) driveEvent);
            return;
        }
        ((ChangeListener) zziVar).d((ChangeEvent) driveEvent);
    }
}
