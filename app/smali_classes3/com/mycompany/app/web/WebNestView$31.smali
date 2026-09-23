.class Lcom/mycompany/app/web/WebNestView$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$31;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$31;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-wide v2, v0, Lcom/mycompany/app/web/WebNestView;->A0:J

    .line 8
    .line 9
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/db/book/DbTabState;->d(Landroid/content/Context;J)Lcom/mycompany/app/db/book/DbTabState$StateItem;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->C2:Lcom/mycompany/app/db/book/DbTabState$StateItem;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebNestView$31$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebNestView$31$1;-><init>(Lcom/mycompany/app/web/WebNestView$31;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
