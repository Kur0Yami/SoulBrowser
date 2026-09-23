package com.mycompany.app.cast;

import android.os.Bundle;
import android.support.v4.media.a;
import android.view.Menu;
import android.view.MenuItem;
import com.google.android.gms.cast.framework.CastButtonFactory;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzpm;
import com.google.android.gms.internal.cast.zzr;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ExpandedControlsActivity extends ExpandedControllerActivity {
    @Override // com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        MainUtil.C7(this);
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.expanded_controller, menu);
        int i = R.id.media_route_menu_item;
        ArrayList arrayList = CastButtonFactory.f3463a;
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(menu);
        MenuItem findItem = menu.findItem(i);
        if (findItem != null) {
            try {
                CastButtonFactory.b(this, findItem);
                synchronized (CastButtonFactory.b) {
                    CastButtonFactory.f3463a.add(new WeakReference(findItem));
                }
                zzr.a(zzpm.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
                return true;
            } catch (IllegalArgumentException e) {
                Locale locale = Locale.ROOT;
                throw new IllegalArgumentException(a.f(i, "menu item with ID ", " doesn't have a MediaRouteActionProvider."), e);
            }
        }
        Locale locale2 = Locale.ROOT;
        throw new IllegalArgumentException(a.f(i, "menu doesn't contain a menu item whose ID is ", "."));
    }
}
