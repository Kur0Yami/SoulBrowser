package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.os.Build;
import java.util.HashMap;

/* loaded from: classes.dex */
final class zzcef implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaPlayer f5078c;
    public final /* synthetic */ zzceo f;

    public zzcef(zzceo zzceoVar, MediaPlayer mediaPlayer) {
        this.f5078c = mediaPlayer;
        this.f = zzceoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaPlayer mediaPlayer;
        MediaFormat format;
        zzceo zzceoVar = this.f;
        zzcfk zzcfkVar = zzceoVar.g;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue() && zzcfkVar != null && (mediaPlayer = this.f5078c) != null) {
            try {
                MediaPlayer.TrackInfo[] trackInfo = mediaPlayer.getTrackInfo();
                if (trackInfo != null) {
                    HashMap hashMap = new HashMap();
                    for (MediaPlayer.TrackInfo trackInfo2 : trackInfo) {
                        if (trackInfo2 != null) {
                            int trackType = trackInfo2.getTrackType();
                            if (trackType != 1) {
                                if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                                    if (format.containsKey("mime")) {
                                        hashMap.put("audioMime", format.getString("mime"));
                                    }
                                    if (Build.VERSION.SDK_INT >= 30 && format.containsKey("codecs-string")) {
                                        hashMap.put("audioCodec", format.getString("codecs-string"));
                                    }
                                }
                            } else {
                                MediaFormat format2 = trackInfo2.getFormat();
                                if (format2 != null) {
                                    if (format2.containsKey("frame-rate")) {
                                        try {
                                            hashMap.put("frameRate", String.valueOf(format2.getFloat("frame-rate")));
                                        } catch (ClassCastException unused) {
                                            hashMap.put("frameRate", String.valueOf(format2.getInteger("frame-rate")));
                                        }
                                    }
                                    if (format2.containsKey("bitrate")) {
                                        Integer valueOf = Integer.valueOf(format2.getInteger("bitrate"));
                                        zzceoVar.w = valueOf;
                                        hashMap.put("bitRate", String.valueOf(valueOf));
                                    }
                                    if (format2.containsKey("width") && format2.containsKey("height")) {
                                        int integer = format2.getInteger("width");
                                        int integer2 = format2.getInteger("height");
                                        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.a(integer, 1) + String.valueOf(integer2).length());
                                        sb.append(integer);
                                        sb.append("x");
                                        sb.append(integer2);
                                        hashMap.put("resolution", sb.toString());
                                    }
                                    if (format2.containsKey("mime")) {
                                        hashMap.put("videoMime", format2.getString("mime"));
                                    }
                                    if (Build.VERSION.SDK_INT >= 30 && format2.containsKey("codecs-string")) {
                                        hashMap.put("videoCodec", format2.getString("codecs-string"));
                                    }
                                }
                            }
                        }
                    }
                    if (!hashMap.isEmpty()) {
                        zzcfkVar.S("onMetadataEvent", hashMap);
                    }
                }
            } catch (RuntimeException e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("AdMediaPlayerView.reportMetadata", e);
            }
        }
        zzcey zzceyVar = zzceoVar.u;
        if (zzceyVar != null) {
            zzceyVar.f();
        }
    }
}
