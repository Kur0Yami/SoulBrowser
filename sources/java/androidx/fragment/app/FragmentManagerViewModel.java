package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class FragmentManagerViewModel extends ViewModel {
    public static final ViewModelProvider.Factory j = new Object();
    public final boolean g;
    public final HashMap d = new HashMap();
    public final HashMap e = new HashMap();
    public final HashMap f = new HashMap();
    public boolean h = false;
    public boolean i = false;

    /* renamed from: androidx.fragment.app.FragmentManagerViewModel$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ViewModelProvider.Factory {
        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel a(Class cls) {
            return new FragmentManagerViewModel(true);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel b(Class modelClass, MutableCreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return a(modelClass);
        }
    }

    public FragmentManagerViewModel(boolean z) {
        this.g = z;
    }

    @Override // androidx.lifecycle.ViewModel
    public final void b() {
        if (FragmentManager.J(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.h = true;
    }

    public final void c(Fragment fragment) {
        if (this.i) {
            if (FragmentManager.J(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        String str = fragment.mWho;
        HashMap hashMap = this.d;
        if (!hashMap.containsKey(str)) {
            hashMap.put(fragment.mWho, fragment);
            if (FragmentManager.J(2)) {
                Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
            }
        }
    }

    public final void d(Fragment fragment) {
        if (FragmentManager.J(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        e(fragment.mWho);
    }

    public final void e(String str) {
        HashMap hashMap = this.e;
        FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) hashMap.get(str);
        if (fragmentManagerViewModel != null) {
            fragmentManagerViewModel.b();
            hashMap.remove(str);
        }
        HashMap hashMap2 = this.f;
        ViewModelStore viewModelStore = (ViewModelStore) hashMap2.get(str);
        if (viewModelStore != null) {
            viewModelStore.a();
            hashMap2.remove(str);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && FragmentManagerViewModel.class == obj.getClass()) {
            FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) obj;
            if (this.d.equals(fragmentManagerViewModel.d) && this.e.equals(fragmentManagerViewModel.e) && this.f.equals(fragmentManagerViewModel.f)) {
                return true;
            }
        }
        return false;
    }

    public final void f(Fragment fragment) {
        if (this.i) {
            if (FragmentManager.J(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else if (this.d.remove(fragment.mWho) != null && FragmentManager.J(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    public final int hashCode() {
        return this.f.hashCode() + ((this.e.hashCode() + (this.d.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.d.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.e.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
