package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.R;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.FragmentTagUsageViolation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentLayoutInflaterFactory implements LayoutInflater.Factory2 {

    /* renamed from: c, reason: collision with root package name */
    public final FragmentManager f1102c;

    public FragmentLayoutInflaterFactory(FragmentManager fragmentManager) {
        this.f1102c = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        final FragmentStateManager g;
        boolean equals = FragmentContainerView.class.getName().equals(str);
        FragmentManager fragmentManager = this.f1102c;
        if (equals) {
            return new FragmentContainerView(context, attributeSet, fragmentManager);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Fragment);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(R.styleable.Fragment_android_name);
            }
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.Fragment_android_id, -1);
            String string = obtainStyledAttributes.getString(R.styleable.Fragment_android_tag);
            obtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    z = Fragment.class.isAssignableFrom(FragmentFactory.b(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                if (z) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    Fragment fragment = resourceId != -1 ? fragmentManager.B(resourceId) : null;
                    if (fragment == null && string != null) {
                        fragment = fragmentManager.C(string);
                    }
                    if (fragment == null && id != -1) {
                        fragment = fragmentManager.B(id);
                    }
                    if (fragment == null) {
                        fragment = fragmentManager.F().a(context.getClassLoader(), attributeValue);
                        fragment.mFromLayout = true;
                        fragment.mFragmentId = resourceId != 0 ? resourceId : id;
                        fragment.mContainerId = id;
                        fragment.mTag = string;
                        fragment.mInLayout = true;
                        fragment.mFragmentManager = fragmentManager;
                        FragmentHostCallback<?> fragmentHostCallback = fragmentManager.u;
                        fragment.mHost = fragmentHostCallback;
                        fragment.onInflate((Context) fragmentHostCallback.f, attributeSet, fragment.mSavedFragmentState);
                        g = fragmentManager.a(fragment);
                        if (FragmentManager.J(2)) {
                            Log.v("FragmentManager", "Fragment " + fragment + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else if (!fragment.mInLayout) {
                        fragment.mInLayout = true;
                        fragment.mFragmentManager = fragmentManager;
                        FragmentHostCallback<?> fragmentHostCallback2 = fragmentManager.u;
                        fragment.mHost = fragmentHostCallback2;
                        fragment.onInflate((Context) fragmentHostCallback2.f, attributeSet, fragment.mSavedFragmentState);
                        g = fragmentManager.g(fragment);
                        if (FragmentManager.J(2)) {
                            Log.v("FragmentManager", "Retained Fragment " + fragment + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    FragmentStrictMode.Policy policy = FragmentStrictMode.f1161a;
                    Intrinsics.checkNotNullParameter(fragment, "fragment");
                    FragmentTagUsageViolation fragmentTagUsageViolation = new FragmentTagUsageViolation(fragment, viewGroup);
                    FragmentStrictMode.c(fragmentTagUsageViolation);
                    FragmentStrictMode.Policy a2 = FragmentStrictMode.a(fragment);
                    if (a2.f1164a.contains(FragmentStrictMode.Flag.h) && FragmentStrictMode.e(a2, fragment.getClass(), FragmentTagUsageViolation.class)) {
                        FragmentStrictMode.b(a2, fragmentTagUsageViolation);
                    }
                    fragment.mContainer = viewGroup;
                    g.k();
                    g.j();
                    View view2 = fragment.mView;
                    if (view2 != null) {
                        if (resourceId != 0) {
                            view2.setId(resourceId);
                        }
                        if (fragment.mView.getTag() == null) {
                            fragment.mView.setTag(string);
                        }
                        fragment.mView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.FragmentLayoutInflaterFactory.1
                            @Override // android.view.View.OnAttachStateChangeListener
                            public final void onViewAttachedToWindow(View view3) {
                                FragmentStateManager fragmentStateManager = g;
                                Fragment fragment2 = fragmentStateManager.f1119c;
                                fragmentStateManager.k();
                                SpecialEffectsController.g((ViewGroup) fragment2.mView.getParent(), FragmentLayoutInflaterFactory.this.f1102c).f();
                            }

                            @Override // android.view.View.OnAttachStateChangeListener
                            public final void onViewDetachedFromWindow(View view3) {
                            }
                        });
                        return fragment.mView;
                    }
                    throw new IllegalStateException(android.support.v4.media.a.l("Fragment ", attributeValue, " did not create a view."));
                }
            }
        }
        return null;
    }
}
