.class Lcom/mycompany/app/web/WebViewActivity$162$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$162$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$162$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$162$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$162$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$162$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$162$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$162$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$162$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$162$1;->c:Lcom/mycompany/app/web/WebViewActivity$162;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$162;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->bn:Z

    .line 11
    .line 12
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->g2:Lcom/google/android/material/appbar/AppBarLayout;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$163;

    .line 25
    .line 26
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$163;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v4, 0x12c

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$162$1;->c:Lcom/mycompany/app/web/WebViewActivity$162;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$162;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Kc:Z

    .line 40
    .line 41
    return-void
.end method
