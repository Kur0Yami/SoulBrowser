.class Lcom/mycompany/app/main/MainFilterSvc$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainUtil$LoopCancelListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainFilterSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainFilterSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainFilterSvc$4;->a:Lcom/mycompany/app/main/MainFilterSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isCancelled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc$4;->a:Lcom/mycompany/app/main/MainFilterSvc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->e:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/main/MainFilterSvc;->d:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :goto_0
    return v2

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method
