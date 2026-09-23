package com.google.android.gms.cast.framework.media;

import android.app.AlertDialog;
import android.content.DialogInterface;

/* loaded from: classes.dex */
final class zzbh implements DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TracksChooserDialogFragment f3573c;

    public zzbh(TracksChooserDialogFragment tracksChooserDialogFragment) {
        this.f3573c = tracksChooserDialogFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        TracksChooserDialogFragment tracksChooserDialogFragment = this.f3573c;
        AlertDialog alertDialog = tracksChooserDialogFragment.i;
        if (alertDialog != null) {
            alertDialog.cancel();
            tracksChooserDialogFragment.i = null;
        }
    }
}
