package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.metadata_received_alert;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class MetadataReceivedAlert extends TorrentAlert<metadata_received_alert> {

    /* renamed from: c, reason: collision with root package name */
    public final ReentrantLock f2647c;
    public int d;
    public byte[] e;
    public boolean f;

    public MetadataReceivedAlert(metadata_received_alert metadata_received_alertVar) {
        super(metadata_received_alertVar);
        this.f2647c = new ReentrantLock();
    }
}
