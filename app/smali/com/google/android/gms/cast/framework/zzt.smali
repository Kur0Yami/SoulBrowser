.class final synthetic Lcom/google/android/gms/cast/framework/zzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/zzu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/framework/zzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzt;->a:Lcom/google/android/gms/cast/framework/zzu;

    return-void
.end method


# virtual methods
.method public final synthetic onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzt;->a:Lcom/google/android/gms/cast/framework/zzu;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/zzu;->c:Lcom/google/android/gms/cast/framework/CastSession;

    .line 4
    .line 5
    const-string v1, "joinApplication"

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/cast/framework/CastSession;->k(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
