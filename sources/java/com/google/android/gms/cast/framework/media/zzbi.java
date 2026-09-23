package com.google.android.gms.cast.framework.media;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes.dex */
final class zzbi implements DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbk f3574c;
    public final /* synthetic */ zzbk f;
    public final /* synthetic */ TracksChooserDialogFragment g;

    public zzbi(TracksChooserDialogFragment tracksChooserDialogFragment, zzbk zzbkVar, zzbk zzbkVar2) {
        this.f3574c = zzbkVar;
        this.f = zzbkVar2;
        this.g = tracksChooserDialogFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        MediaTrack mediaTrack;
        MediaTrack mediaTrack2;
        TracksChooserDialogFragment tracksChooserDialogFragment = this.g;
        if (!tracksChooserDialogFragment.f3507c) {
            AlertDialog alertDialog = tracksChooserDialogFragment.i;
            if (alertDialog != null) {
                alertDialog.cancel();
                tracksChooserDialogFragment.i = null;
                return;
            }
            return;
        }
        RemoteMediaClient remoteMediaClient = (RemoteMediaClient) Preconditions.checkNotNull(tracksChooserDialogFragment.j);
        if (!remoteMediaClient.j()) {
            AlertDialog alertDialog2 = tracksChooserDialogFragment.i;
            if (alertDialog2 != null) {
                alertDialog2.cancel();
                tracksChooserDialogFragment.i = null;
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        zzbk zzbkVar = this.f3574c;
        int i2 = zzbkVar.f;
        if (i2 >= 0 && i2 < zzbkVar.getCount()) {
            mediaTrack = (MediaTrack) zzbkVar.getItem(zzbkVar.f);
        } else {
            mediaTrack = null;
        }
        if (mediaTrack != null) {
            long j = mediaTrack.f3456c;
            if (j != -1) {
                arrayList.add(Long.valueOf(j));
            }
        }
        zzbk zzbkVar2 = this.f;
        int i3 = zzbkVar2.f;
        if (i3 >= 0 && i3 < zzbkVar2.getCount()) {
            mediaTrack2 = (MediaTrack) zzbkVar2.getItem(zzbkVar2.f);
        } else {
            mediaTrack2 = null;
        }
        if (mediaTrack2 != null) {
            arrayList.add(Long.valueOf(mediaTrack2.f3456c));
        }
        long[] jArr = tracksChooserDialogFragment.h;
        if (jArr != null && jArr.length > 0) {
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = tracksChooserDialogFragment.g;
            int size = arrayList2.size();
            int i4 = 0;
            while (i4 < size) {
                Object obj = arrayList2.get(i4);
                i4++;
                hashSet.add(Long.valueOf(((MediaTrack) obj).f3456c));
            }
            ArrayList arrayList3 = tracksChooserDialogFragment.f;
            int size2 = arrayList3.size();
            int i5 = 0;
            while (i5 < size2) {
                Object obj2 = arrayList3.get(i5);
                i5++;
                hashSet.add(Long.valueOf(((MediaTrack) obj2).f3456c));
            }
            for (long j2 : jArr) {
                Long valueOf = Long.valueOf(j2);
                if (!hashSet.contains(valueOf)) {
                    arrayList.add(valueOf);
                }
            }
        }
        long[] jArr2 = new long[arrayList.size()];
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            jArr2[i6] = ((Long) arrayList.get(i6)).longValue();
        }
        Arrays.sort(jArr2);
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!remoteMediaClient.J()) {
            RemoteMediaClient.I();
        } else {
            RemoteMediaClient.L(new zzv(remoteMediaClient, jArr2));
        }
        AlertDialog alertDialog3 = tracksChooserDialogFragment.i;
        if (alertDialog3 != null) {
            alertDialog3.cancel();
            tracksChooserDialogFragment.i = null;
        }
    }
}
