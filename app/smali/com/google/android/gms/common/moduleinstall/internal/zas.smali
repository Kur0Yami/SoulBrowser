.class final synthetic Lcom/google/android/gms/common/moduleinstall/internal/zas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

.field private final synthetic zab:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zac:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

.field private final synthetic zad:Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

.field private final synthetic zae:Lcom/google/android/gms/common/moduleinstall/internal/zaab;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;Lcom/google/android/gms/common/moduleinstall/internal/zaab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zac:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    iput-object p4, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zad:Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    iput-object p5, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zae:Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/common/moduleinstall/internal/zam;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zac:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    .line 12
    .line 13
    invoke-direct {v2, v0, v1, p2, v3}, Lcom/google/android/gms/common/moduleinstall/internal/zam;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zad:Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zae:Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    .line 25
    .line 26
    invoke-virtual {p1, v2, p2, v0}, Lcom/google/android/gms/common/moduleinstall/internal/zaf;->zaf(Lcom/google/android/gms/common/moduleinstall/internal/zae;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;Lcom/google/android/gms/common/moduleinstall/internal/zah;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
