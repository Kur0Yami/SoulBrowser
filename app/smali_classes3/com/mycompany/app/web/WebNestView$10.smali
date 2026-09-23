.class Lcom/mycompany/app/web/WebNestView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebSslView$SslViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$10;->a:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$10;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->I()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$10;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->u:Lcom/mycompany/app/web/WebNestView$WebViewListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebViewListener;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$10;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->I()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
