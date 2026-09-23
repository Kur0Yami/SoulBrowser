.class final Lcom/google/android/gms/internal/cast/zzak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/devicesuggestions/DeviceSuggestionsCallback;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/cast/framework/devicesuggestions/DeviceSuggestionsCallback;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzav;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v3, "Failed to notify listener for onDeviceSuggestionReceived"

    .line 9
    .line 10
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void
.end method
