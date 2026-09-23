.class Lcom/mycompany/app/video/VideoActivity$37$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$37$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$37$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$37$1$1;->c:Lcom/mycompany/app/video/VideoActivity$37$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$37$1$1;->c:Lcom/mycompany/app/video/VideoActivity$37$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$37$1;->c:Lcom/mycompany/app/video/VideoActivity$37;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity$37;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, v1, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, v1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const-string v2, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){ele.play();}})();"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$37;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$37$1$1$1;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$37$1$1$1;-><init>(Lcom/mycompany/app/video/VideoActivity$37$1$1;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v2, 0x64

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method
