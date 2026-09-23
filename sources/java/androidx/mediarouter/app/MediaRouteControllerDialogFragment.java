package androidx.mediarouter.app;

import android.app.Dialog;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.DialogFragment;
import androidx.mediarouter.media.MediaRouteSelector;

/* loaded from: classes.dex */
public class MediaRouteControllerDialogFragment extends DialogFragment {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1311c = false;
    public AppCompatDialog f;
    public MediaRouteSelector g;

    public MediaRouteControllerDialogFragment() {
        setCancelable(true);
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        AppCompatDialog appCompatDialog = this.f;
        if (appCompatDialog != null) {
            if (this.f1311c) {
                ((MediaRouteDynamicControllerDialog) appCompatDialog).i();
            } else {
                ((MediaRouteControllerDialog) appCompatDialog).s();
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (this.f1311c) {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = new MediaRouteDynamicControllerDialog(getContext());
            this.f = mediaRouteDynamicControllerDialog;
            mediaRouteDynamicControllerDialog.h(this.g);
        } else {
            this.f = new MediaRouteControllerDialog(getContext());
        }
        return this.f;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        AppCompatDialog appCompatDialog = this.f;
        if (appCompatDialog != null && !this.f1311c) {
            ((MediaRouteControllerDialog) appCompatDialog).i(false);
        }
    }
}
