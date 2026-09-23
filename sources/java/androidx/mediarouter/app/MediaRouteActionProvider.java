package androidx.mediarouter.app;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ActionProvider;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;

/* loaded from: classes.dex */
public class MediaRouteActionProvider extends ActionProvider {
    public MediaRouteSelector d;
    public final MediaRouteDialogFactory e;
    public MediaRouteButton f;

    public MediaRouteActionProvider(@NonNull Context context) {
        super(context);
        this.d = MediaRouteSelector.f1375c;
        this.e = MediaRouteDialogFactory.f1312a;
        MediaRouter.h(context);
    }

    @Override // androidx.core.view.ActionProvider
    public final View c() {
        if (this.f != null) {
            Log.e("MRActionProvider", "onCreateActionView: this ActionProvider is already associated with a menu item. Don't reuse MediaRouteActionProvider instances! Abandoning the old menu item...");
        }
        MediaRouteButton mediaRouteButton = new MediaRouteButton(this.f762a, null);
        this.f = mediaRouteButton;
        mediaRouteButton.setCheatSheetEnabled(true);
        this.f.setRouteSelector(this.d);
        this.f.setDialogFactory(this.e);
        this.f.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
        return this.f;
    }

    @Override // androidx.core.view.ActionProvider
    public final boolean e() {
        MediaRouteButton mediaRouteButton = this.f;
        if (mediaRouteButton != null) {
            return mediaRouteButton.c();
        }
        return false;
    }
}
