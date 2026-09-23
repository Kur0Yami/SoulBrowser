.class Lcom/mycompany/app/quick/TabSubView$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MySnackbar$SnackbarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$18;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/quick/TabSubView;->w0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$18;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabSubView;->f()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$18;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebTabAdapter;->U()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    iput v1, v0, Lcom/mycompany/app/quick/TabSubView;->u0:I

    .line 17
    .line 18
    new-instance v1, Lcom/mycompany/app/quick/TabSubView$19;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/mycompany/app/quick/TabSubView$19;-><init>(Lcom/mycompany/app/quick/TabSubView;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/quick/TabSubView;->w0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$18;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabSubView;->f()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->Q:Lcom/mycompany/app/view/MySnackbar;

    .line 10
    .line 11
    return-void
.end method
