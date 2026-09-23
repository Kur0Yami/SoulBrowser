package com.google.android.gms.cast.framework.media;

import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TabHost;
import androidx.fragment.app.DialogFragment;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class TracksChooserDialogFragment extends DialogFragment {

    /* renamed from: c, reason: collision with root package name */
    public boolean f3507c;
    public ArrayList f;
    public ArrayList g;
    public long[] h;
    public AlertDialog i;
    public RemoteMediaClient j;

    @Deprecated
    public TracksChooserDialogFragment() {
    }

    public static int g(ArrayList arrayList, long[] jArr, int i) {
        if (jArr != null && arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                for (long j : jArr) {
                    if (j == ((MediaTrack) arrayList.get(i2)).f3456c) {
                        return i2;
                    }
                }
            }
        }
        return i;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3507c = true;
        this.g = new ArrayList();
        this.f = new ArrayList();
        this.h = new long[0];
        CastSession c2 = CastContext.e(getContext()).d().c();
        if (c2 != null && c2.c()) {
            RemoteMediaClient j = c2.j();
            this.j = j;
            if (j != null && j.j() && this.j.f() != null) {
                RemoteMediaClient remoteMediaClient = this.j;
                MediaStatus g = remoteMediaClient.g();
                if (g != null) {
                    this.h = g.o;
                }
                MediaInfo f = remoteMediaClient.f();
                if (f == null) {
                    this.f3507c = false;
                    return;
                }
                List<MediaTrack> list = f.j;
                if (list == null) {
                    this.f3507c = false;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (MediaTrack mediaTrack : list) {
                    if (mediaTrack.f == 2) {
                        arrayList.add(mediaTrack);
                    }
                }
                this.g = arrayList;
                ArrayList arrayList2 = new ArrayList();
                for (MediaTrack mediaTrack2 : list) {
                    if (mediaTrack2.f == 1) {
                        arrayList2.add(mediaTrack2);
                    }
                }
                this.f = arrayList2;
                if (!arrayList2.isEmpty()) {
                    ArrayList arrayList3 = this.f;
                    MediaTrack.Builder builder = new MediaTrack.Builder(-1L);
                    builder.b = String.format(Locale.ROOT, getActivity().getString(R.string.cast_tracks_chooser_dialog_none), new Object[0]);
                    builder.a(2);
                    arrayList3.add(0, new MediaTrack(-1L, 1, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, builder.f3457a, builder.b, null, builder.f3458c, null, null));
                    return;
                }
                return;
            }
        }
        this.f3507c = false;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        int g = g(this.f, this.h, 0);
        int g2 = g(this.g, this.h, -1);
        zzbk zzbkVar = new zzbk(getActivity(), this.f, g);
        zzbk zzbkVar2 = new zzbk(getActivity(), this.g, g2);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        View inflate = getActivity().getLayoutInflater().inflate(R.layout.cast_tracks_chooser_dialog_layout, (ViewGroup) null);
        ListView listView = (ListView) inflate.findViewById(R.id.text_list_view);
        ListView listView2 = (ListView) inflate.findViewById(R.id.audio_list_view);
        TabHost tabHost = (TabHost) inflate.findViewById(R.id.tab_host);
        tabHost.setup();
        if (zzbkVar.getCount() == 0) {
            listView.setVisibility(4);
        } else {
            listView.setAdapter((ListAdapter) zzbkVar);
            TabHost.TabSpec newTabSpec = tabHost.newTabSpec("textTab");
            newTabSpec.setContent(R.id.text_list_view);
            newTabSpec.setIndicator(String.format(Locale.ROOT, getActivity().getString(R.string.cast_tracks_chooser_dialog_subtitles), new Object[0]));
            tabHost.addTab(newTabSpec);
        }
        if (zzbkVar2.getCount() <= 1) {
            listView2.setVisibility(4);
        } else {
            listView2.setAdapter((ListAdapter) zzbkVar2);
            TabHost.TabSpec newTabSpec2 = tabHost.newTabSpec("audioTab");
            newTabSpec2.setContent(R.id.audio_list_view);
            newTabSpec2.setIndicator(String.format(Locale.ROOT, getActivity().getString(R.string.cast_tracks_chooser_dialog_audio), new Object[0]));
            tabHost.addTab(newTabSpec2);
        }
        AlertDialog.Builder view = builder.setView(inflate);
        Locale locale = Locale.ROOT;
        view.setPositiveButton(String.format(locale, getActivity().getString(R.string.cast_tracks_chooser_dialog_ok), new Object[0]), new zzbi(this, zzbkVar, zzbkVar2)).setNegativeButton(String.format(locale, getActivity().getString(R.string.cast_tracks_chooser_dialog_cancel), new Object[0]), new zzbh(this));
        AlertDialog alertDialog = this.i;
        if (alertDialog != null) {
            alertDialog.cancel();
            this.i = null;
        }
        AlertDialog create = builder.create();
        this.i = create;
        return create;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }
}
