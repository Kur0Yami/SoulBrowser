package androidx.fragment.app;

import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentStore {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1123a = new ArrayList();
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f1124c = new HashMap();
    public FragmentManagerViewModel d;

    public final void a(Fragment fragment) {
        if (!this.f1123a.contains(fragment)) {
            synchronized (this.f1123a) {
                this.f1123a.add(fragment);
            }
            fragment.mAdded = true;
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    public final Fragment b(String str) {
        FragmentStateManager fragmentStateManager = (FragmentStateManager) this.b.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager.f1119c;
        }
        return null;
    }

    public final Fragment c(String str) {
        Fragment findFragmentByWho;
        for (FragmentStateManager fragmentStateManager : this.b.values()) {
            if (fragmentStateManager != null && (findFragmentByWho = fragmentStateManager.f1119c.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    public final ArrayList d() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.b.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager);
            }
        }
        return arrayList;
    }

    public final ArrayList e() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.b.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager.f1119c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public final List f() {
        ArrayList arrayList;
        if (this.f1123a.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (this.f1123a) {
            arrayList = new ArrayList(this.f1123a);
        }
        return arrayList;
    }

    public final void g(FragmentStateManager fragmentStateManager) {
        Fragment fragment = fragmentStateManager.f1119c;
        String str = fragment.mWho;
        HashMap hashMap = this.b;
        if (hashMap.get(str) != null) {
            return;
        }
        hashMap.put(fragment.mWho, fragmentStateManager);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                this.d.c(fragment);
            } else {
                this.d.f(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.J(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragment);
        }
    }

    public final void h(FragmentStateManager fragmentStateManager) {
        Fragment fragment = fragmentStateManager.f1119c;
        if (fragment.mRetainInstance) {
            this.d.f(fragment);
        }
        String str = fragment.mWho;
        HashMap hashMap = this.b;
        if (hashMap.get(str) == fragmentStateManager && ((FragmentStateManager) hashMap.put(fragment.mWho, null)) != null && FragmentManager.J(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragment);
        }
    }

    public final Bundle i(String str, Bundle bundle) {
        HashMap hashMap = this.f1124c;
        if (bundle != null) {
            return (Bundle) hashMap.put(str, bundle);
        }
        return (Bundle) hashMap.remove(str);
    }
}
