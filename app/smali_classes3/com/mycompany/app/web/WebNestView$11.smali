.class Lcom/mycompany/app/web/WebNestView$11;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$11;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$11;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->F1:Landroid/webkit/SslErrorHandler;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebNestView;->G1:Landroid/net/http/SslError;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->F1:Landroid/webkit/SslErrorHandler;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->G1:Landroid/net/http/SslError;

    .line 11
    .line 12
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebNestView;->c1:Z

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->I()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebNestView;->b1:Lcom/mycompany/app/web/WebSslView;

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v4, -0x1

    .line 26
    invoke-virtual {v0, v3, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->H1:Landroid/webkit/SslErrorHandler;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->I1:Landroid/net/http/SslError;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebNestView$12;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestView$12;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method
