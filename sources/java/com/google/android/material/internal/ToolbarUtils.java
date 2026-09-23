package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.search.SearchBar;
import java.util.ArrayList;
import java.util.Comparator;

@RestrictTo
/* loaded from: classes3.dex */
public class ToolbarUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final Comparator f11820a = new Object();

    /* renamed from: com.google.android.material.internal.ToolbarUtils$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Comparator<View> {
        @Override // java.util.Comparator
        public final int compare(View view, View view2) {
            return view.getTop() - view2.getTop();
        }
    }

    public static ActionMenuView a(SearchBar searchBar) {
        for (int i = 0; i < searchBar.getChildCount(); i++) {
            View childAt = searchBar.getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    public static ImageButton b(SearchBar searchBar) {
        Drawable navigationIcon = searchBar.getNavigationIcon();
        if (navigationIcon != null) {
            for (int i = 0; i < searchBar.getChildCount(); i++) {
                View childAt = searchBar.getChildAt(i);
                if (childAt instanceof ImageButton) {
                    ImageButton imageButton = (ImageButton) childAt;
                    if (imageButton.getDrawable() == navigationIcon) {
                        return imageButton;
                    }
                }
            }
            return null;
        }
        return null;
    }

    public static ArrayList c(MaterialToolbar materialToolbar, CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < materialToolbar.getChildCount(); i++) {
            View childAt = materialToolbar.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    arrayList.add(textView);
                }
            }
        }
        return arrayList;
    }
}
