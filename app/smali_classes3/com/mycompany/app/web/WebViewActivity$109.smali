.class Lcom/mycompany/app/web/WebViewActivity$109;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$109;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$109;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->kf:I

    .line 4
    .line 5
    iget v6, v0, Lcom/mycompany/app/web/WebViewActivity;->lf:I

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 16
    .line 17
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/web/WebTabBarAdapter;->L(Ljava/util/List;IZIIZ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v5, v6}, Lcom/mycompany/app/web/WebViewActivity;->r8(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->J2:Z

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->n()V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i9:Z

    .line 39
    .line 40
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->sc:Z

    .line 41
    .line 42
    return-void
.end method
