package androidx.lifecycle;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Closeable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0016\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/ViewModelStore;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class ViewModelStore {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f1238a = new LinkedHashMap();

    public final void a() {
        for (ViewModel viewModel : this.f1238a.values()) {
            viewModel.f1231c = true;
            HashMap hashMap = viewModel.f1230a;
            if (hashMap != null) {
                synchronized (hashMap) {
                    try {
                        Iterator it = viewModel.f1230a.values().iterator();
                        while (it.hasNext()) {
                            ViewModel.a(it.next());
                        }
                    } finally {
                    }
                }
            }
            LinkedHashSet linkedHashSet = viewModel.b;
            if (linkedHashSet != null) {
                synchronized (linkedHashSet) {
                    try {
                        Iterator it2 = viewModel.b.iterator();
                        while (it2.hasNext()) {
                            ViewModel.a((Closeable) it2.next());
                        }
                    } finally {
                    }
                }
            }
            viewModel.b();
        }
        this.f1238a.clear();
    }
}
