.class Lcom/mycompany/app/web/WebNestView$12;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$12;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$12;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->H1:Landroid/webkit/SslErrorHandler;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebNestView;->I1:Landroid/net/http/SslError;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->H1:Landroid/webkit/SslErrorHandler;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->I1:Landroid/net/http/SslError;

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
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebNestView;->X(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
