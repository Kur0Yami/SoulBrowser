package androidx.mediarouter.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.DialogFragment;
import androidx.mediarouter.R;
import androidx.mediarouter.media.MediaRouteSelector;

/* loaded from: classes.dex */
public class MediaRouteChooserDialogFragment extends DialogFragment {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1291c = false;
    public AppCompatDialog f;
    public MediaRouteSelector g;

    public MediaRouteChooserDialogFragment() {
        setCancelable(true);
    }

    public final void g() {
        if (this.g == null) {
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.g = MediaRouteSelector.b(arguments.getBundle("selector"));
            }
            if (this.g == null) {
                this.g = MediaRouteSelector.f1375c;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int a2;
        super.onConfigurationChanged(configuration);
        AppCompatDialog appCompatDialog = this.f;
        if (appCompatDialog == null) {
            return;
        }
        int i = -2;
        if (this.f1291c) {
            MediaRouteDynamicChooserDialog mediaRouteDynamicChooserDialog = (MediaRouteDynamicChooserDialog) appCompatDialog;
            Context context = mediaRouteDynamicChooserDialog.l;
            if (!context.getResources().getBoolean(R.bool.is_tablet)) {
                a2 = -1;
            } else {
                a2 = MediaRouteDialogHelper.a(context);
            }
            if (!context.getResources().getBoolean(R.bool.is_tablet)) {
                i = -1;
            }
            mediaRouteDynamicChooserDialog.getWindow().setLayout(a2, i);
            return;
        }
        MediaRouteChooserDialog mediaRouteChooserDialog = (MediaRouteChooserDialog) appCompatDialog;
        mediaRouteChooserDialog.getWindow().setLayout(MediaRouteDialogHelper.a(mediaRouteChooserDialog.getContext()), -2);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (this.f1291c) {
            MediaRouteDynamicChooserDialog mediaRouteDynamicChooserDialog = new MediaRouteDynamicChooserDialog(getContext());
            this.f = mediaRouteDynamicChooserDialog;
            g();
            mediaRouteDynamicChooserDialog.f(this.g);
        } else {
            MediaRouteChooserDialog mediaRouteChooserDialog = new MediaRouteChooserDialog(getContext());
            this.f = mediaRouteChooserDialog;
            g();
            mediaRouteChooserDialog.g(this.g);
        }
        return this.f;
    }
}
