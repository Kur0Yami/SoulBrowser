.class Lcom/mycompany/app/web/WebNestView$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$8$1;->c:Lcom/mycompany/app/web/WebNestView$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$8$1;->c:Lcom/mycompany/app/web/WebNestView$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView$8;->c:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->a1:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->H()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickView;->o()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebNestView$8$1$1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebNestView$8$1$1;-><init>(Lcom/mycompany/app/web/WebNestView$8$1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
