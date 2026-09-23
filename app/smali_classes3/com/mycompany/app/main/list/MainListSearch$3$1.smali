.class Lcom/mycompany/app/main/list/MainListSearch$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListSearch$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListSearch$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch$3$1;->a:Lcom/mycompany/app/main/list/MainListSearch$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch$3$1;->a:Lcom/mycompany/app/main/list/MainListSearch$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListSearch$3;->c:Lcom/mycompany/app/main/list/MainListSearch;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/list/MainListSearch$3$1$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/list/MainListSearch$3$1$1;-><init>(Lcom/mycompany/app/main/list/MainListSearch$3$1;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
