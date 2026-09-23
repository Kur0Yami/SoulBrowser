.class Lcom/mycompany/app/web/WebViewActivity$466;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$466;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$466;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j9:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->q7(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->A3:Lcom/mycompany/app/quick/QuickSearch;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->O5()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    xor-int/2addr v4, v1

    .line 23
    invoke-virtual {v2, v1, v3, v4}, Lcom/mycompany/app/quick/QuickSearch;->r(ZZZ)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$466$1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$466$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$466;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
