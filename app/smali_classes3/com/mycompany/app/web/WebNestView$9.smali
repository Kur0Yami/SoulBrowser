.class Lcom/mycompany/app/web/WebNestView$9;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$9;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$9;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->D1:Landroid/webkit/SslErrorHandler;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebNestView;->E1:Landroid/net/http/SslError;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->D1:Landroid/webkit/SslErrorHandler;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->E1:Landroid/net/http/SslError;

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
    if-eqz v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v3, Lcom/mycompany/app/web/WebSslView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->b1:Lcom/mycompany/app/web/WebSslView;

    .line 35
    .line 36
    new-instance v4, Lcom/mycompany/app/web/WebNestView$10;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebNestView$10;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lcom/mycompany/app/web/WebSslView;->setListener(Lcom/mycompany/app/web/WebSslView$SslViewListener;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->F1:Landroid/webkit/SslErrorHandler;

    .line 45
    .line 46
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->G1:Landroid/net/http/SslError;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebNestView$11;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestView$11;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method
