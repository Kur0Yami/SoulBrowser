package com.google.android.gms.cast.framework.media.uicontroller;

import android.app.Activity;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.TracksChooserDialogFragment;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzk implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f3541c;

    public zzk(UIMediaController uIMediaController) {
        Objects.requireNonNull(uIMediaController);
        this.f3541c = uIMediaController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        UIMediaController uIMediaController = this.f3541c;
        RemoteMediaClient y = uIMediaController.y();
        if (y != null && y.j()) {
            Activity activity = uIMediaController.f3530a;
            if (activity instanceof FragmentActivity) {
                TracksChooserDialogFragment tracksChooserDialogFragment = new TracksChooserDialogFragment();
                FragmentActivity fragmentActivity = (FragmentActivity) activity;
                FragmentTransaction d = fragmentActivity.T().d();
                Fragment C = fragmentActivity.T().C("TRACKS_CHOOSER_DIALOG_TAG");
                if (C != null) {
                    d.g(C);
                }
                tracksChooserDialogFragment.show(d, "TRACKS_CHOOSER_DIALOG_TAG");
            }
        }
    }
}
