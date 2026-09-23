package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class RecyclerViewAccessibilityDelegate extends AccessibilityDelegateCompat {
    public final RecyclerView d;
    public final ItemDelegate e;

    /* loaded from: classes.dex */
    public static class ItemDelegate extends AccessibilityDelegateCompat {
        public final RecyclerViewAccessibilityDelegate d;
        public final WeakHashMap e = new WeakHashMap();

        public ItemDelegate(RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
            this.d = recyclerViewAccessibilityDelegate;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.e.get(view);
            if (accessibilityDelegateCompat != null) {
                return accessibilityDelegateCompat.a(view, accessibilityEvent);
            }
            return this.f760a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final AccessibilityNodeProviderCompat b(View view) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.e.get(view);
            if (accessibilityDelegateCompat != null) {
                return accessibilityDelegateCompat.b(view);
            }
            return super.b(view);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.e.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.c(view, accessibilityEvent);
            } else {
                super.c(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f834a;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = this.d;
            RecyclerView recyclerView = recyclerViewAccessibilityDelegate.d;
            RecyclerView recyclerView2 = recyclerViewAccessibilityDelegate.d;
            boolean P = recyclerView.P();
            View.AccessibilityDelegate accessibilityDelegate = this.f760a;
            if (!P && recyclerView2.getLayoutManager() != null) {
                recyclerView2.getLayoutManager().c0(view, accessibilityNodeInfoCompat);
                AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.e.get(view);
                if (accessibilityDelegateCompat != null) {
                    accessibilityDelegateCompat.d(view, accessibilityNodeInfoCompat);
                    return;
                } else {
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    return;
                }
            }
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void e(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.e.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.e(view, accessibilityEvent);
            } else {
                super.e(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.e.get(viewGroup);
            if (accessibilityDelegateCompat != null) {
                return accessibilityDelegateCompat.f(viewGroup, view, accessibilityEvent);
            }
            return this.f760a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean g(View view, int i, Bundle bundle) {
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = this.d;
            RecyclerView recyclerView = recyclerViewAccessibilityDelegate.d;
            RecyclerView recyclerView2 = recyclerViewAccessibilityDelegate.d;
            if (!recyclerView.P() && recyclerView2.getLayoutManager() != null) {
                AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.e.get(view);
                if (accessibilityDelegateCompat != null) {
                    if (accessibilityDelegateCompat.g(view, i, bundle)) {
                        return true;
                    }
                } else if (super.g(view, i, bundle)) {
                    return true;
                }
                RecyclerView.Recycler recycler = recyclerView2.getLayoutManager().b.g;
                return false;
            }
            return super.g(view, i, bundle);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void h(View view, int i) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.e.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.h(view, i);
            } else {
                super.h(view, i);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void i(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.e.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.i(view, accessibilityEvent);
            } else {
                super.i(view, accessibilityEvent);
            }
        }
    }

    public RecyclerViewAccessibilityDelegate(RecyclerView recyclerView) {
        this.d = recyclerView;
        ItemDelegate itemDelegate = this.e;
        if (itemDelegate != null) {
            this.e = itemDelegate;
        } else {
            this.e = new ItemDelegate(this);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if ((view instanceof RecyclerView) && !this.d.P()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().a0(accessibilityEvent);
            }
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
        RecyclerView recyclerView = this.d;
        if (!recyclerView.P() && recyclerView.getLayoutManager() != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            RecyclerView recyclerView2 = layoutManager.b;
            layoutManager.b0(recyclerView2.g, recyclerView2.m0, accessibilityNodeInfoCompat);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean g(View view, int i, Bundle bundle) {
        if (super.g(view, i, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.d;
        if (!recyclerView.P() && recyclerView.getLayoutManager() != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            RecyclerView recyclerView2 = layoutManager.b;
            return layoutManager.o0(recyclerView2.g, recyclerView2.m0, i, bundle);
        }
        return false;
    }
}
