.class Lcom/mycompany/app/main/list/MainListDown$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/main/list/MainListDown$16;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown$16;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$16$1;->f:Lcom/mycompany/app/main/list/MainListDown$16;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/list/MainListDown$16$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$16$1;->f:Lcom/mycompany/app/main/list/MainListDown$16;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListDown$16;->g:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/list/MainListDown;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 11
    .line 12
    const-string v3, "video/*"

    .line 13
    .line 14
    iget-object v4, p0, Lcom/mycompany/app/main/list/MainListDown$16$1;->c:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListDown$16;->c:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 27
    .line 28
    iget v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 29
    .line 30
    invoke-static {v1, v4, v2, v3, v0}, Lcom/mycompany/app/main/list/MainListDown;->D0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    invoke-static {v1, v4, v3, v0}, Lcom/mycompany/app/main/list/MainListDown;->E0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
