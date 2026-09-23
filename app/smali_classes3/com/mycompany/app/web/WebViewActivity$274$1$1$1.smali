.class Lcom/mycompany/app/web/WebViewActivity$274$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$274$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$274$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$274$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$274$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$274$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$274$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$274$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$274$1;->c:Lcom/mycompany/app/web/WebViewActivity$274;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$274;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Nc:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->aj:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 27
    .line 28
    sget-boolean v3, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 29
    .line 30
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274$1;->c:Lcom/mycompany/app/web/WebViewActivity$274;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 36
    .line 37
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$274$1$1$1$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$274$1$1$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$274$1$1$1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
