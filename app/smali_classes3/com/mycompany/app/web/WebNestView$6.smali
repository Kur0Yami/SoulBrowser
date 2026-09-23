.class Lcom/mycompany/app/web/WebNestView$6;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$6;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$6;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->C1:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->C1:Lcom/mycompany/app/quick/QuickView;

    .line 7
    .line 8
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebNestView;->a1:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->H()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 25
    .line 26
    new-instance v2, Lcom/mycompany/app/web/WebNestView$7;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestView$7;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    iput-boolean v3, v1, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 33
    .line 34
    iput-object v2, v1, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 35
    .line 36
    const/4 v2, -0x1

    .line 37
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebNestView$8;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestView$8;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method
