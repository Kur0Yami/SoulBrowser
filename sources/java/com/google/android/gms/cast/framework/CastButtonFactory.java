package com.google.android.gms.cast.framework;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import androidx.mediarouter.app.MediaRouteActionProvider;
import androidx.mediarouter.app.MediaRouteButton;
import androidx.mediarouter.media.MediaRouteSelector;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzpm;
import com.mycompany.app.cast.ExpandedControlsActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class CastButtonFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList f3463a;
    public static final Object b;

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f3464c;
    public static final Object d;

    static {
        new Logger("CastButtonFactory", null);
        f3463a = new ArrayList();
        b = new Object();
        f3464c = new ArrayList();
        d = new Object();
    }

    public static void a(Context context, MediaRouteButton mediaRouteButton) {
        MediaRouteSelector c2;
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (mediaRouteButton != null) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            CastContext h = CastContext.h(context);
            if (h != null && (c2 = h.c()) != null) {
                mediaRouteButton.setRouteSelector(c2);
            }
            synchronized (d) {
                f3464c.add(new WeakReference(mediaRouteButton));
            }
        }
        com.google.android.gms.internal.cast.zzr.a(zzpm.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
    }

    public static void b(ExpandedControlsActivity expandedControlsActivity, MenuItem menuItem) {
        ActionProvider actionProvider;
        MediaRouteSelector c2;
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaRouteActionProvider mediaRouteActionProvider = null;
        if (menuItem instanceof SupportMenuItem) {
            actionProvider = ((SupportMenuItem) menuItem).b();
        } else {
            Log.w("MenuItemCompat", "getActionProvider: item does not implement SupportMenuItem; returning null");
            actionProvider = null;
        }
        MediaRouteActionProvider mediaRouteActionProvider2 = (MediaRouteActionProvider) actionProvider;
        if (mediaRouteActionProvider2 != null) {
            mediaRouteActionProvider = mediaRouteActionProvider2;
        }
        if (mediaRouteActionProvider != null) {
            CastContext h = CastContext.h(expandedControlsActivity);
            if (h != null && (c2 = h.c()) != null && !mediaRouteActionProvider.d.equals(c2)) {
                mediaRouteActionProvider.d = c2;
                MediaRouteButton mediaRouteButton = mediaRouteActionProvider.f;
                if (mediaRouteButton != null) {
                    mediaRouteButton.setRouteSelector(c2);
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("cannot refreshButtonSelector with null mediaRouteActionProvider");
    }
}
