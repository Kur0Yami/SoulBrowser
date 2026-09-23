package androidx.core.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class TaskStackBuilder implements Iterable<Intent> {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f646c = new ArrayList();
    public final Context f;

    /* loaded from: classes.dex */
    public interface SupportParentable {
    }

    public TaskStackBuilder(Context context) {
        this.f = context;
    }

    public final void a(ComponentName componentName) {
        Context context = this.f;
        ArrayList arrayList = this.f646c;
        int size = arrayList.size();
        try {
            for (Intent a2 = NavUtils.a(context, componentName); a2 != null; a2 = NavUtils.a(context, a2.getComponent())) {
                arrayList.add(size, a2);
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator<Intent> iterator() {
        return this.f646c.iterator();
    }
}
