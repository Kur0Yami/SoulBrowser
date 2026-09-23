.class Lcom/mycompany/app/web/WebViewActivity$257;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$257;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$257;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->gn:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->gn:Ljava/lang/String;

    .line 7
    .line 8
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->T3()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->h2()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownFont;

    .line 40
    .line 41
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$549;

    .line 44
    .line 45
    invoke-direct {v5, v1}, Lcom/mycompany/app/web/WebViewActivity$549;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogDownFont;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogVideoList$VideoListListener;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Y7:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 52
    .line 53
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$550;

    .line 54
    .line 55
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$550;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
