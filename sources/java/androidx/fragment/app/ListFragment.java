package androidx.fragment.app;

import android.R;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

/* loaded from: classes.dex */
public class ListFragment extends Fragment {

    /* renamed from: c, reason: collision with root package name */
    public final Handler f1140c = new Handler();
    public final Runnable f = new Runnable() { // from class: androidx.fragment.app.ListFragment.1
        @Override // java.lang.Runnable
        public final void run() {
            ListView listView = ListFragment.this.h;
            listView.focusableViewAvailable(listView);
        }
    };
    public final AdapterView.OnItemClickListener g = new AdapterView.OnItemClickListener() { // from class: androidx.fragment.app.ListFragment.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
            ListFragment.this.getClass();
        }
    };
    public ListView h;
    public View i;
    public View j;
    public View k;
    public boolean l;

    public final void f() {
        if (this.h != null) {
            return;
        }
        View view = getView();
        if (view != null) {
            if (view instanceof ListView) {
                this.h = (ListView) view;
            } else {
                TextView textView = (TextView) view.findViewById(16711681);
                if (textView == null) {
                    this.i = view.findViewById(R.id.empty);
                } else {
                    textView.setVisibility(8);
                }
                this.j = view.findViewById(16711682);
                this.k = view.findViewById(16711683);
                View findViewById = view.findViewById(R.id.list);
                if (!(findViewById instanceof ListView)) {
                    if (findViewById == null) {
                        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                    }
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                ListView listView = (ListView) findViewById;
                this.h = listView;
                View view2 = this.i;
                if (view2 != null) {
                    listView.setEmptyView(view2);
                }
            }
            this.l = true;
            this.h.setOnItemClickListener(this.g);
            if (this.j != null) {
                f();
                View view3 = this.j;
                if (view3 != null) {
                    if (this.l) {
                        this.l = false;
                        view3.clearAnimation();
                        this.k.clearAnimation();
                        this.j.setVisibility(0);
                        this.k.setVisibility(8);
                    }
                } else {
                    throw new IllegalStateException("Can't be used with a custom content view");
                }
            }
            this.f1140c.post(this.f);
            return;
        }
        throw new IllegalStateException("Content view not yet created");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context requireContext = requireContext();
        FrameLayout frameLayout = new FrameLayout(requireContext);
        LinearLayout linearLayout = new LinearLayout(requireContext);
        linearLayout.setId(16711682);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(requireContext, null, R.attr.progressBarStyleLarge), new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(requireContext);
        frameLayout2.setId(16711683);
        TextView textView = new TextView(requireContext);
        textView.setId(16711681);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        ListView listView = new ListView(requireContext);
        listView.setId(R.id.list);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f1140c.removeCallbacks(this.f);
        this.h = null;
        this.l = false;
        this.k = null;
        this.j = null;
        this.i = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        f();
    }
}
