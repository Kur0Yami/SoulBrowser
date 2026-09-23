package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.zzbm;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* loaded from: classes.dex */
public abstract class zzad extends com.google.android.gms.internal.cast.zzb implements zzae {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return false;
                        }
                        parcel2.writeNoException();
                        parcel2.writeInt(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                        return true;
                    }
                    int readInt = parcel.readInt();
                    com.google.android.gms.internal.cast.zzc.d(parcel);
                    ((zzu) this).f3599c.l(readInt);
                    parcel2.writeNoException();
                    return true;
                }
                String readString = parcel.readString();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                CastSession castSession = ((zzu) this).f3599c;
                zzbm zzbmVar = castSession.i;
                if (zzbmVar != null && zzbmVar.k()) {
                    castSession.i.p(readString);
                }
                parcel2.writeNoException();
                return true;
            }
            String readString2 = parcel.readString();
            LaunchOptions launchOptions = (LaunchOptions) com.google.android.gms.internal.cast.zzc.a(parcel, LaunchOptions.CREATOR);
            com.google.android.gms.internal.cast.zzc.d(parcel);
            final zzu zzuVar = (zzu) this;
            CastSession castSession2 = zzuVar.f3599c;
            zzbm zzbmVar2 = castSession2.i;
            if (zzbmVar2 != null && zzbmVar2.k()) {
                castSession2.i.o(readString2, launchOptions).c(new OnCompleteListener() { // from class: com.google.android.gms.cast.framework.zzs
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final /* synthetic */ void onComplete(Task task) {
                        zzu.this.f3599c.k(task, "launchApplication");
                    }
                });
            }
            parcel2.writeNoException();
            return true;
        }
        String readString3 = parcel.readString();
        String readString4 = parcel.readString();
        com.google.android.gms.internal.cast.zzc.d(parcel);
        final zzu zzuVar2 = (zzu) this;
        CastSession castSession3 = zzuVar2.f3599c;
        zzbm zzbmVar3 = castSession3.i;
        if (zzbmVar3 != null && zzbmVar3.k()) {
            castSession3.i.r(readString3, readString4).c(new OnCompleteListener() { // from class: com.google.android.gms.cast.framework.zzt
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final /* synthetic */ void onComplete(Task task) {
                    zzu.this.f3599c.k(task, "joinApplication");
                }
            });
        }
        parcel2.writeNoException();
        return true;
    }
}
