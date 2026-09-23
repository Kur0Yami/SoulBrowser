.class Lcom/mycompany/app/web/WebViewActivity$15$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$15$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$15$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$15$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$15$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$15$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$15$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$15$1;->c:Lcom/mycompany/app/web/WebViewActivity$15;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$15;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->L3:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->N7()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$15$1;->c:Lcom/mycompany/app/web/WebViewActivity$15;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$15;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->C2:Lcom/mycompany/app/view/MyFindView;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-boolean v1, v1, Lcom/mycompany/app/view/MyFindView;->g:Z

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->C2()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
