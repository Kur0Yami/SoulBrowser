package androidx.constraintlayout.motion.widget;

import android.util.Log;
import java.util.HashMap;

/* loaded from: classes.dex */
public class KeyFrames {
    static {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("KeyAttribute", KeyAttributes.class.getConstructor(null));
            hashMap.put("KeyPosition", KeyPosition.class.getConstructor(null));
            hashMap.put("KeyCycle", KeyCycle.class.getConstructor(null));
            hashMap.put("KeyTimeCycle", KeyTimeCycle.class.getConstructor(null));
            hashMap.put("KeyTrigger", KeyTrigger.class.getConstructor(null));
        } catch (NoSuchMethodException e) {
            Log.e("KeyFrames", "unable to load", e);
        }
    }
}
