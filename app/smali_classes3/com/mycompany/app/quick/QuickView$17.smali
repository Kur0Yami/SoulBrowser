.class Lcom/mycompany/app/quick/QuickView$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$17;->c:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$17;->c:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-boolean v3, v0, Lcom/mycompany/app/quick/QuickView;->E:Z

    .line 7
    .line 8
    invoke-static {v1, v2, v2, v3}, Lcom/mycompany/app/db/book/DbBookQuick;->k(Landroid/content/Context;ZZZ)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, v0, Lcom/mycompany/app/quick/QuickView;->E:Z

    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/mycompany/app/quick/QuickView;->G:Z

    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->f:Landroid/os/Handler;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v2, Lcom/mycompany/app/quick/QuickView$17$1;

    .line 23
    .line 24
    invoke-direct {v2, p0, v1}, Lcom/mycompany/app/quick/QuickView$17$1;-><init>(Lcom/mycompany/app/quick/QuickView$17;Ljava/util/ArrayList;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
