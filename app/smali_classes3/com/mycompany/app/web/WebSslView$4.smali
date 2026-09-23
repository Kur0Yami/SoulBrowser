.class Lcom/mycompany/app/web/WebSslView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSslView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSslView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSslView$4;->c:Lcom/mycompany/app/web/WebSslView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebSslView$4;->c:Lcom/mycompany/app/web/WebSslView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebSslView;->c:Lcom/mycompany/app/web/WebSslView$SslViewListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/web/WebSslView;->m:Landroid/webkit/SslErrorHandler;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p1, Lcom/mycompany/app/web/WebSslView;->m:Landroid/webkit/SslErrorHandler;

    .line 17
    .line 18
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/web/WebSslView;->c:Lcom/mycompany/app/web/WebSslView$SslViewListener;

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/mycompany/app/web/WebSslView$SslViewListener;->c()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
