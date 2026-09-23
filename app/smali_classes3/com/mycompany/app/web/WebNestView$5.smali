.class Lcom/mycompany/app/web/WebNestView$5;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$5;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$5;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->a1:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->H()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->C1:Lcom/mycompany/app/quick/QuickView;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    new-instance v1, Lcom/mycompany/app/quick/QuickView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Lcom/mycompany/app/quick/QuickView;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->C1:Lcom/mycompany/app/quick/QuickView;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebNestView$6;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestView$6;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method
