.class Lcom/mycompany/app/web/WebViewActivity$59;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$59;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$59;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->b3()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->o8(II)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->j1(Lcom/mycompany/app/web/WebViewActivity;Z)V

    .line 18
    .line 19
    .line 20
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->d8(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->h8:Lcom/mycompany/app/dialog/DialogSetUseTts;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$59$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$59$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$59;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->A6()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method
