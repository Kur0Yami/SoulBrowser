.class Lcom/mycompany/app/web/WebSslView$2;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebSslView$2;->c:Lcom/mycompany/app/web/WebSslView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebSslView$2;->c:Lcom/mycompany/app/web/WebSslView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/web/WebSslView;->c:Lcom/mycompany/app/web/WebSslView$SslViewListener;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/mycompany/app/web/WebSslView$SslViewListener;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
