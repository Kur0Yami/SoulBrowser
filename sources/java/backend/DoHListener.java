package backend;

/* loaded from: classes.dex */
public interface DoHListener extends DoHQueryToken {
    DoHQueryToken onQuery(String str);

    void onResponse(DoHQueryToken doHQueryToken, DoHQuerySumary doHQuerySumary);
}
