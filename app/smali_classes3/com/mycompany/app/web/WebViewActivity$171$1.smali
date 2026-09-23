.class Lcom/mycompany/app/web/WebViewActivity$171$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$171;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$171;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$171$1;->c:Lcom/mycompany/app/web/WebViewActivity$171;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$171$1;->c:Lcom/mycompany/app/web/WebViewActivity$171;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$171;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->g3:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->g3:Z

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->h3:I

    .line 19
    .line 20
    iget v0, v0, Lcom/mycompany/app/web/WebViewActivity;->i3:I

    .line 21
    .line 22
    if-eq v2, v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebTabBarAdapter;->M(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->w()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
