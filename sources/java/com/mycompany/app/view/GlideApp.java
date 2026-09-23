package com.mycompany.app.view;

import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Glide;
import com.bumptech.glide.util.Preconditions;

/* loaded from: classes3.dex */
public final class GlideApp {
    public static GlideRequests a(FragmentActivity fragmentActivity) {
        Preconditions.c(fragmentActivity, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return (GlideRequests) Glide.a(fragmentActivity).j.e(fragmentActivity);
    }
}
