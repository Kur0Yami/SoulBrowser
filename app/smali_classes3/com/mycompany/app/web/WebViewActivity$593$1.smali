.class Lcom/mycompany/app/web/WebViewActivity$593$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity$593;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$593;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$593$1;->f:Lcom/mycompany/app/web/WebViewActivity$593;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$593$1;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$593$1;->f:Lcom/mycompany/app/web/WebViewActivity$593;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$593;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebViewActivity$593$1;->c:Z

    if-nez v1, :cond_enable

    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_check

    const-string v3, "youtube.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_yt

    const-string v3, "youtu.be"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_check

    :cond_yt
    const/4 v1, 0x1

    goto :cond_enable

    :cond_check
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    if-eqz v2, :cond_enable

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebNestView;->setBackPlay(Z)V

    :cond_enable
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->J8(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
