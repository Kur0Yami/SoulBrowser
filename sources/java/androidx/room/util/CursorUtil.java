package androidx.room.util;

import android.database.Cursor;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public class CursorUtil {
    public static int a(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        return cursor.getColumnIndexOrThrow("`" + str + "`");
    }
}
