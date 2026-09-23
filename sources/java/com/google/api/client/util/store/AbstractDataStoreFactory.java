package com.google.api.client.util.store;

import com.google.api.client.util.Maps;
import com.google.api.client.util.Preconditions;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public abstract class AbstractDataStoreFactory implements DataStoreFactory {
    private static final Pattern ID_PATTERN;
    private final Lock lock = new ReentrantLock();
    private final Map<String, DataStore<? extends Serializable>> dataStoreMap = Maps.newHashMap();

    static {
        try {
            ID_PATTERN = Pattern.compile("\\w{1,30}");
        } catch (Throwable th) {
            Logger.getLogger(AbstractDataStoreFactory.class.getName()).severe(th.getMessage());
            throw th;
        }
    }

    public abstract <V extends Serializable> DataStore<V> createDataStore(String str);

    @Override // com.google.api.client.util.store.DataStoreFactory
    public final <V extends Serializable> DataStore<V> getDataStore(String str) {
        Pattern pattern = ID_PATTERN;
        Preconditions.checkArgument(pattern.matcher(str).matches(), "%s does not match pattern %s", str, pattern);
        this.lock.lock();
        try {
            DataStore<V> dataStore = (DataStore) this.dataStoreMap.get(str);
            if (dataStore == null) {
                dataStore = createDataStore(str);
                this.dataStoreMap.put(str, dataStore);
            }
            return dataStore;
        } finally {
            this.lock.unlock();
        }
    }
}
